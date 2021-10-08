<?php 
session_start();
/**
 * ALTER TABLE products ADD product_qty INT(11) NOT NULL AFTER `product_price`;
 	UPDATE `products` SET product_qty = 1000 WHERE 1;

	CREATE TABLE `products` (
 `product_id` int(100) NOT NULL AUTO_INCREMENT,
 `product_cat` int(11) NOT NULL,
 `product_brand` int(100) NOT NULL,
 `artikel_judul` varchar(255) NOT NULL,
 `product_price` int(100) NOT NULL,
 `product_qty` int(11) NOT NULL,
 `set_lat` text NOT NULL,
 `product_image` text NOT NULL,
 `product_keywords` text NOT NULL,
  CONSTRAINT fk_product_cat FOREIGN KEY fk_product_cat (product_cat) REFERENCES categories(cat_id),
    CONSTRAINT fk_product_brand FOREIGN KEY fk_product_brand (product_brand) REFERENCES brands(brand_id),
 PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
 	
 */
class Setting
{
	
	private $con;

	function __construct()
	{
		include_once("Database.php");
		$db = new Database();
		$this->con = $db->connect();
	}

	public function getSetting(){
		$q = $this->con->query("SELECT * from setting ORDER BY set_id desc");
		
		$setting = [];
		if ($q->num_rows > 0) {
			while($row = $q->fetch_assoc()){
				$setting[] = $row;
			}
			//return ['status'=> 202, 'message'=> $ar];
			$_DATA['setting'] = $setting;
		}

		

		return ['status'=> 202, 'message'=> $_DATA];
	}

	



	public function editProductWithoutImage($pid,
										$set_zoom,
										$set_lat,
										$set_long,
										$set_api){

		if ($pid != null) {
			$q = $this->con->query("UPDATE `setting` SET 
										
										 
										`set_zoom` = '$set_zoom', 
										`set_lat` = '$set_lat',
										`set_long` = '$set_long', 
										`set_api` = '$set_api'
										
										
										
										
										WHERE set_id = '$pid'");

			if ($q) {
				return ['status'=> 202, 'message'=> 'Setting berhasil diubah'];
			}else{
				return ['status'=> 303, 'message'=> 'Failed to run query'];
			}
			
		}else{
			return ['status'=> 303, 'message'=> 'Invalid product id'];
		}
		
	}


	




	
	

	
	

}


if (isset($_POST['GET_PRODUCT'])) {
	if (isset($_SESSION['admin_id'])) {
		$p = new Setting();
		echo json_encode($p->getSetting());
		exit();
	}
}





if (isset($_POST['edit_product'])) {

	extract($_POST);
	if (!empty($pid)
	&& !empty($e_set_zoom) 
	&& !empty($e_set_lat)
	&& !empty($e_set_long)
	&& !empty($e_set_api) 
	
	
	
	
	
	
	 ) {
		
		$p = new Setting();

		
			$result = $p->editProductWithoutImage($pid,
								$e_set_zoom,
								$e_set_lat,
								$e_set_long,
								$e_set_api)
								
								;
		

		echo json_encode($result);
		exit();


	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Semua kolom harus
diisi']);
		exit();
	}



	
}









?>