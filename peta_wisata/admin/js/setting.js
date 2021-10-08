$(document).ready(function(){

	var productList;

	function getSetting(){
		$.ajax({
			url : '../admin/classes/Setting.php',
			method : 'POST',
			data : {GET_PRODUCT:1},
			success : function(response){
				//console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {

					var productHTML = '';

					productList = resp.message.setting;

					if (productList) {
						$.each(resp.message.setting, function(index, value){

							productHTML += '<tr>'+
								              '<td>'+value.set_id+'</td>'+
								              '<td>'+ value.set_zoom +'</td>'+
								              '<td>'+ value.set_lat +'</td>'+
								              '<td>'+ value.set_long +'</td>'+
								              '<td>'+ value.set_api +'</td>'+
								              
								              
								              '<td><a class="btn btn-sm btn-info edit-product" style="color:#fff;"><span style="display:none;">'+JSON.stringify(value)+'</span><i class="fas fa-pencil-alt"></i></a>&nbsp;</td>'+
								            '</tr>';

						});

						$("#product_list").html(productHTML);
					}

					


					

				}
			}

		});
	}

	getSetting();




	$(document.body).on('click', '.edit-product', function(){

		console.log($(this).find('span').text());

		var product = $.parseJSON($.trim($(this).find('span').text()));

		console.log(product);

		$("input[name='e_set_zoom']").val(product.set_zoom);
		
		
		$("input[name='e_set_lat']").val(product.set_lat);
		$("input[name='e_set_long']").val(product.set_long);
		
		
		$("input[name='e_set_api']").val(product.set_api);
		
		
		
		
		
		$("input[name='pid']").val(product.set_id);
		$("#edit_product_modal").modal('show');

	});

	$(".submit-edit-product").on('click', function(){

		$.ajax({

			url : '../admin/classes/Setting.php',
			method : 'POST',
			data : new FormData($("#edit-product-form")[0]),
			contentType : false,
			cache : false,
			processData : false,
			success : function(response){
				console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {
					$("#edit-product-form").trigger("reset");
					$("#edit_product_modal").modal('hide');
					getSetting();
					alert(resp.message);
				}else if(resp.status == 303){
					alert(resp.message);
				}
			}

		});


	});



});