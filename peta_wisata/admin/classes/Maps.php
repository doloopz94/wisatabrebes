<?php 
session_start();
/**
 * ALTER TABLE products ADD artikel_lat INT(11) NOT NULL AFTER `artikel_long`;
 	UPDATE `products` SET artikel_lat = 1000 WHERE 1;

	CREATE TABLE `products` (
 `product_id` int(100) NOT NULL AUTO_INCREMENT,
 `product_cat` int(11) NOT NULL,
 `product_brand` int(100) NOT NULL,
 `artikel_judul` varchar(255) NOT NULL,
 `artikel_long` int(100) NOT NULL,
 `artikel_lat` int(11) NOT NULL,
 `artikel_isi` text NOT NULL,
 `artikel_gambar` text NOT NULL,
 `artikel_alamat` text NOT NULL,
  CONSTRAINT fk_product_cat FOREIGN KEY fk_product_cat (product_cat) REFERENCES categories(cat_id),
    CONSTRAINT fk_product_brand FOREIGN KEY fk_product_brand (product_brand) REFERENCES brands(brand_id),
 PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
 	
 */
class Maps
{
	
	private $con;

	function __construct()
	{
		include_once("Database.php");
		$db = new Database();
		$this->con = $db->connect();
	}

	public function getMaps(){
		$q = $this->con->query("SELECT p.artikel_id, p.artikel_judul, p.artikel_lat,p.artikel_long, p.artikel_isi, p.artikel_gambar, p.artikel_buka, p.artikel_tiket, p.artikel_alamat, c.kat_judul, c.kat_id FROM artikel p JOIN kategori c ON c.kat_id = p.artikel_kat  ORDER BY artikel_id desc");
		
		$maps = [];
		if ($q->num_rows > 0) {
			while($row = $q->fetch_assoc()){
				$maps[] = $row;
			}
			//return ['status'=> 202, 'message'=> $ar];
			$_DATA['artikel'] = $maps;
		}

		$categories = [];
		$q = $this->con->query("SELECT * FROM kategori");
		if ($q->num_rows > 0) {
			while($row = $q->fetch_assoc()){
				$categories[] = $row;
			}
			//return ['status'=> 202, 'message'=> $ar];
			$_DATA['kategori'] = $categories;
		}

		

		return ['status'=> 202, 'message'=> $_DATA];
	}

	public function addProduct($artikel_judul,
								
								$artikel_kat,
								$artikel_isi,
								$artikel_lat,
								$artikel_long,
								$artikel_alamat,
								$artikel_buka,
								$artikel_tiket,
								$file){


		$fileName = $file['name'];
		$fileNameAr= explode(".", $fileName);
		$extension = end($fileNameAr);
		$ext = strtolower($extension);

		if ($ext == "jpg" || $ext == "jpeg" || $ext == "png") {
			
			//print_r($file['size']);

			if ($file['size'] > (1024 * 2)) {
				
				$uniqueImageName = time()."_".$file['name'];
				if (move_uploaded_file($file['tmp_name'], $_SERVER['DOCUMENT_ROOT']."/peta_wisata/img/".$uniqueImageName)) {
					
					$q = $this->con->query("INSERT INTO `artikel`(`artikel_kat`, `artikel_judul`, `artikel_long`, `artikel_lat`, `artikel_isi`, `artikel_gambar`, `artikel_alamat`, `artikel_buka`, `artikel_tiket`) VALUES ('$artikel_kat', '$artikel_judul', '$artikel_lat', '$artikel_long', '$artikel_isi', '$uniqueImageName', '$artikel_alamat', '$artikel_buka', '$artikel_tiket')");

					if ($q) {
						return ['status'=> 202, 'message'=> 'Maps berhasil ditambahkan'];
					}else{
						return ['status'=> 303, 'message'=> 'Failed to run query'];
					}

				}else{
					return ['status'=> 303, 'message'=> 'Failed to upload image'];
				}

			}else{
				return ['status'=> 303, 'message'=> 'Large Image ,Max Size allowed 2MB'];
			}

		}else{
			return ['status'=> 303, 'message'=> 'Invalid Image Format [Valid Formats : jpg, jpeg, png]'];
		}

	}


	public function editProductWithImage($pid,
										$artikel_judul,
										
										$artikel_kat,
										$artikel_isi,
										$artikel_lat,
										$artikel_long,
										$artikel_alamat,
										$artikel_buka,
										$artikel_tiket,
										$file){


		$fileName = $file['name'];
		$fileNameAr= explode(".", $fileName);
		$extension = end($fileNameAr);
		$ext = strtolower($extension);

		if ($ext == "jpg" || $ext == "jpeg" || $ext == "png") {
			
			//print_r($file['size']);

			if ($file['size'] > (1024 * 2)) {
				
				$uniqueImageName = time()."_".$file['name'];
				if (move_uploaded_file($file['tmp_name'], $_SERVER['DOCUMENT_ROOT']."/peta_wisata/img/".$uniqueImageName)) {
					
					$q = $this->con->query("UPDATE `artikel` SET 
										`artikel_kat` = '$artikel_kat', 
										
										`artikel_judul` = '$artikel_judul', 
										`artikel_long` = '$artikel_lat', 
										`artikel_lat` = '$artikel_long', 
										`artikel_isi` = '$artikel_isi', 
										`artikel_buka` = '$artikel_buka', 
										`artikel_tiket` = '$artikel_tiket', 
										`artikel_gambar` = '$uniqueImageName', 
										`artikel_alamat` = '$artikel_alamat'
										WHERE artikel_id = '$pid'");

					if ($q) {
						return ['status'=> 202, 'message'=> 'Maps berhasil diubah'];
					}else{
						return ['status'=> 303, 'message'=> 'Failed to run query'];
					}

				}else{
					return ['status'=> 303, 'message'=> 'Failed to upload image'];
				}

			}else{
				return ['status'=> 303, 'message'=> 'Large Image ,Max Size allowed 2MB'];
			}

		}else{
			return ['status'=> 303, 'message'=> 'Invalid Image Format [Valid Formats : jpg, jpeg, png]'];
		}

	}

	public function editProductWithoutImage($pid,
										$artikel_judul,
										
										$artikel_kat,
										$artikel_isi,
										$artikel_lat,
										$artikel_long,
										$artikel_buka,
										$artikel_tiket,
										$artikel_alamat){

		if ($pid != null) {
			$q = $this->con->query("UPDATE `artikel` SET 
										`artikel_kat` = '$artikel_kat', 
										
										`artikel_judul` = '$artikel_judul', 
										`artikel_long` = '$artikel_lat', 
										`artikel_lat` = '$artikel_long', 
										`artikel_isi` = '$artikel_isi',
										`artikel_buka` = '$artikel_buka',
										`artikel_tiket` = '$artikel_tiket',
										`artikel_alamat` = '$artikel_alamat'
										WHERE artikel_id = '$pid'");

			if ($q) {
				return ['status'=> 202, 'message'=> 'Maps berhasil diubah'];
			}else{
				return ['status'=> 303, 'message'=> 'Failed to run query'];
			}
			
		}else{
			return ['status'=> 303, 'message'=> 'Invalid product id'];
		}
		
	}



	public function addCategory($name){
		$q = $this->con->query("SELECT * FROM kategori WHERE kat_judul = '$name' LIMIT 1");
		if ($q->num_rows > 0) {
			return ['status'=> 303, 'message'=> 'Category already exists'];
		}else{
			$q = $this->con->query("INSERT INTO kategori (kat_judul) VALUES ('$name')");
			if ($q) {
				return ['status'=> 202, 'message'=> 'New Category added Successfully'];
			}else{
				return ['status'=> 303, 'message'=> 'Failed to run query'];
			}
		}
	}

	public function getCategories(){
		$q = $this->con->query("SELECT * FROM kategori");
		$ar = [];
		if ($q->num_rows > 0) {
			while ($row = $q->fetch_assoc()) {
				$ar[] = $row;
			}
		}
		return ['status'=> 202, 'message'=> $ar];
	}

	public function deleteMaps($pid = null){
		if ($pid != null) {
			$q = $this->con->query("DELETE FROM artikel WHERE artikel_id = '$pid'");
			if ($q) {
				return ['status'=> 202, 'message'=> 'Product removed from stocks'];
			}else{
				return ['status'=> 202, 'message'=> 'Failed to run query'];
			}
			
		}else{
			return ['status'=> 303, 'message'=>'Invalid product id'];
		}

	}

	public function deleteCategory($cid = null){
		if ($cid != null) {
			$q = $this->con->query("DELETE FROM kategori WHERE kat_id = '$cid'");
			if ($q) {
				return ['status'=> 202, 'message'=> 'Category removed'];
			}else{
				return ['status'=> 202, 'message'=> 'Failed to run query'];
			}
			
		}else{
			return ['status'=> 303, 'message'=>'Invalid cattegory id'];
		}

	}
	
	

	public function updateCategory($post = null){
		extract($post);
		if (!empty($cat_id) && !empty($e_cat_title)) {
			$q = $this->con->query("UPDATE kategori SET kat_judul = '$e_cat_title' WHERE kat_id = '$cat_id'");
			if ($q) {
				return ['status'=> 202, 'message'=> 'Category updated'];
			}else{
				return ['status'=> 202, 'message'=> 'Failed to run query'];
			}
			
		}else{
			return ['status'=> 303, 'message'=>'Invalid category id'];
		}

	}




	


	

}


if (isset($_POST['GET_PRODUCT'])) {
	if (isset($_SESSION['admin_id'])) {
		$p = new Maps();
		echo json_encode($p->getMaps());
		exit();
	}
}


if (isset($_POST['add_product'])) {

	extract($_POST);
	if (!empty($artikel_judul) 
	
	&& !empty($artikel_kat)
	&& !empty($artikel_isi)
	&& !empty($artikel_lat)
	&& !empty($artikel_long)
	&& !empty($artikel_alamat)
	&& !empty($artikel_buka)
	&& !empty($artikel_tiket)
	&& !empty($_FILES['artikel_gambar']['name'])) {
		

		$p = new Maps();
		$result = $p->addProduct($artikel_judul,
								
								$artikel_kat,
								$artikel_isi,
								$artikel_lat,
								$artikel_long,
								$artikel_alamat,
								$artikel_buka,
								$artikel_tiket,
								$_FILES['artikel_gambar']);
		
		// header("Content-type: application/json");
		// echo json_encode($result);
		// http_response_code($result['status']);
		// exit();
		echo json_encode($result);
		exit();


	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Semua kolom harus
diisi']);
		exit();
	}



	
}


if (isset($_POST['edit_product'])) {

	extract($_POST);
	if (!empty($pid)
	&& !empty($e_artikel_judul) 
	
	&& !empty($e_artikel_kat)
	&& !empty($e_artikel_isi)
	&& !empty($e_artikel_lat)
	&& !empty($e_artikel_long)
	&& !empty($e_artikel_buka)
	&& !empty($e_artikel_tiket)
	&& !empty($e_artikel_alamat) ) {
		
		$p = new Maps();

		if (isset($_FILES['e_artikel_gambar']['name']) 
			&& !empty($_FILES['e_artikel_gambar']['name'])) {
			$result = $p->editProductWithImage($pid,
								$e_artikel_judul,
								
								$e_artikel_kat,
								$e_artikel_isi,
								$e_artikel_lat,
								$e_artikel_long,
								$e_artikel_alamat,
								$e_artikel_buka,
								$e_artikel_tiket,
								$_FILES['e_artikel_gambar']);
		}else{
			$result = $p->editProductWithoutImage($pid,
								$e_artikel_judul,
								
								$e_artikel_kat,
								$e_artikel_isi,
								$e_artikel_lat,
								$e_artikel_long,
								$e_artikel_buka,
								$e_artikel_tiket,
								$e_artikel_alamat);
		}

		echo json_encode($result);
		exit();


	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Semua kolom harus
diisi']);
		exit();
	}



	
}


if (isset($_POST['add_category'])) {
	if (isset($_SESSION['admin_id'])) {
		$cat_title = $_POST['kat_judul'];
		if (!empty($cat_title)) {
			$p = new Maps();
			echo json_encode($p->addCategory($cat_title));
		}else{
			echo json_encode(['status'=> 303, 'message'=> 'Semua kolom harus
diisi']);
		}
	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Session Error']);
	}
}

if (isset($_POST['GET_CATEGORIES'])) {
	$p = new Maps();
	echo json_encode($p->getCategories());
	exit();
	
}

if (isset($_POST['DELETE_PRODUCT'])) {
	$p = new Maps();
	if (isset($_SESSION['admin_id'])) {
		if(!empty($_POST['pid'])){
			$pid = $_POST['pid'];
			echo json_encode($p->deleteMaps($pid));
			exit();
		}else{
			echo json_encode(['status'=> 303, 'message'=> 'Invalid product id']);
			exit();
		}
	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Invalid Session']);
	}


}


if (isset($_POST['DELETE_CATEGORY'])) {
	if (!empty($_POST['cid'])) {
		$p = new Maps();
		echo json_encode($p->deleteCategory($_POST['cid']));
		exit();
	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Invalid details']);
		exit();
	}
}

if (isset($_POST['edit_category'])) {
	if (!empty($_POST['kat_id'])) {
		$p = new Maps();
		echo json_encode($p->updateCategory($_POST));
		exit();
	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Invalid details']);
		exit();
	}
}






?>
