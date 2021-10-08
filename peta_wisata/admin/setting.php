<?php session_start(); ?>
<?php include_once("./templates/top.php"); ?>
<?php include_once("./templates/navbar.php"); ?>
<div class="container-fluid">
  <div class="row">
    
    <?php include "./templates/sidebar.php"; ?>

      <div class="row">
        <div class="col-10">
          <h2>Setting</h2>
        </div>
        <div class="col-2">
         <!--  <a href="#" data-toggle="modal" data-target="#add_product_modal" class="btn btn-primary btn-sm">Tambah Setting</a> -->
        </div>
      </div>
      
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>Id</th>
              <th>Zoom</th>
              <th>Latitude</th>
              <th>Longitude</th>
              <th>Api</th>
             
              
              <th>Action</th>
            </tr>
          </thead>
          <tbody id="product_list">
            <!-- <tr>
              <td>1</td>
              <td>ABC</td>
              <td>FDGR.JPG</td>
              <td>122</td>
              <td>eLECTRONCS</td>
              <td>aPPLE</td>
              <td><a class="btn btn-sm btn-info"></a><a class="btn btn-sm btn-danger">Delete</a></td>
            </tr> -->
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>



<!-- Add Product Modal start -->
<div class="modal fade" id="add_product_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Setting</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-product-form" enctype="multipart/form-data">
          <div class="row">
            <div class="col-12">
              <div class="form-group">
                <label>Set Zoom</label>
                <input type="text" name="set_zoom" class="form-control" placeholder="">
              </div>
            </div>
            
            
            <div class="col-12">
              <div class="form-group">
                <label>Latitude</label>
                <input type="text" name="set_lat" class="form-control" placeholder="">
              </div>
            </div>

            <div class="col-12">
              <div class="form-group">
                <label>Longitude</label>
                <input type="text" name="set_long" class="form-control" placeholder="">
              </div>
            </div>
            
            
            <div class="col-12">
              <div class="form-group">
                <label>Api Maps</label>
                <input type="text" name="set_api" class="form-control" placeholder="">
              </div>
            </div>
           
            

            
           

            
            
            <input type="hidden" name="add_product" value="1">
            <div class="col-12">
              <button type="button" class="btn btn-primary add-product">Ubah</button>
            </div>
          </div>
          
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Add Product Modal end -->

<!-- Edit Product Modal start -->
<div class="modal fade" id="edit_product_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ubah Setting</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="edit-product-form" enctype="multipart/form-data">
          <div class="row">
            <div class="col-12">
              <div class="form-group">
                <label>Set Zoom</label>
                <input type="text" name="e_set_zoom" class="form-control" placeholder="Enter Product Name">
              </div>
            </div>
            
            
            <div class="col-12">
              <div class="form-group">
                <label>Latitude</label>
                <input type="text" name="e_set_lat" class="form-control" placeholder="Enter Product Name">
              </div>
            </div>

            <div class="col-12">
              <div class="form-group">
                <label>Longitude</label>
                <input type="text" name="e_set_long" class="form-control" placeholder="Enter Product Name">
              </div>
            </div>
            
            
            <div class="col-12">
              <div class="form-group">
                <label>Api Maps</label>
                <input type="text" name="e_set_api" class="form-control" placeholder="Enter Product Name">
              </div>
            </div>
          

           
            
            
            
            <input type="hidden" name="pid">
            <input type="hidden" name="edit_product" value="1">
            <div class="col-12">
              <button type="button" class="btn btn-primary submit-edit-product">Ubah</button>
            </div>
          </div>
          
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Edit Product Modal end -->

<?php include_once("./templates/footer.php"); ?>



<script type="text/javascript" src="./js/setting.js"></script>