<!--<?php
// session_start();

//if (!isset($_SESSION['mysesi']) || $_SESSION['mytype']!='admin')
{
//	header('Location: ../login/index.php');
//	exit;
  // echo "<script>window.location.assign('../login/index.php')</script>";
} 
?>-->

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Home - Super Admin</title>
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<script type="process.js"></script>
</head>
<body>

<div class="container">
	<div class="page-header">
		<h3>Employee Profile</h3>
	</div>

	<!--<div id="pesan-sukses" class="alert alert-success"></div>
	<div id="pesan-error" class="alert alert-danger"></div>-->

	<form action="tambah.php">
	<button type="submit" class="btn btn-default">Tambah Data</button>
	</form><br/>
   
	<div class="row">
		<div class="col-lg-12">
			<table class="table table-striped table-bordered" id="user_data">
				<thead>
					<tr>
						<th>Nomor Pekerjaan</th>
						<th>Tanggal</th>
						<th>Store</th>
						<th>Alamat Store</th>
						<th>Kategori</th>
						<th>Keterangan</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					include "dbconfig.php";

					$sql = "SELECT * FROM jobs";
					$data = $conn->query($sql);
					while($row = $data->fetch_array()){
            
					 ?>
					 <tr>
					 	<td>
					 		<?php echo $row['nomor']."&nbsp;";?>
					 	</td>

					 	<td>
					 		<?php echo $row['tanggal']."&nbsp;";?>
					 	</td>

					 	<td>
					 		<?php echo $row['store']."&nbsp;";?>
					 	</td>

					 	<td>
					 		<?php echo $row['alamat']."&nbsp;";?>
					 	</td>

					 	<td>
					 		<?php echo $row['kategori']."&nbsp;";?>
					 	</td>

					 	<td>
					 		<?php echo $row['keterangan']."&nbsp;";?>
					 	</td>

					 	<td>

                            <button data-id="<?php echo $row['id_job'];?>" class="btn btn-sm delete_product"><i class="glyphicon glyphicon-trash"></i>Delete</button>&nbsp;

					 		<a role="button" href="#" class='open_modal btn btn-sm btn-primary' id='<?php echo  $row['id_job']; ?>'> <i class="glyphicon glyphicon-pencil"></i> Edit</a>&nbsp;
        			 	</td>
						</tr>
					 <?php
					}
					?>
					
				</tbody>
			</table>
		</div>
	</div>

	<!-- Modal Popup untuk Edit--> 
	<div id="ModalEdit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	</div>

<!--Scripts-->

<script src="../assets/jquery-1.12.4.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/bootbox.min.js"></script>

<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

  <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" />

  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"></script>

<script type="process.js"></script>

<!--End scripts-->


<!--Delete JavaScript-->

<script>
	$(document).ready(function(){
		
		$('.delete_product').click(function(e){
			
			e.preventDefault();
			
			var pid = $(this).attr('data-id');
			var parent = $(this).parent("td").parent("tr");
			
			bootbox.dialog({
			  message: "Are you sure you want to Delete ?",
			  title: "<i class='glyphicon glyphicon-trash'></i> Delete !",
			  buttons: {
				success: {
				  label: "No",
				  className: "btn-success",
				  callback: function() {
					 $('.bootbox').modal('hide');
				  }
				},
				danger: {
				  label: "Delete!",
				  className: "btn-danger",
				  callback: function() {
					  
					  
					  $.post('delete.php', { 'delete':pid })
					  .done(function(response){
						  bootbox.alert(response);
						  parent.fadeOut('slow');
					  })
					  .fail(function(){
						  bootbox.alert('Something Went Wrong ....');
					  })
					  					  
				  }
				}
			  }
			});
			
			
		});
		
	});
</script>


<!-- Javascript untuk popup modal Edit--> 

<script type="text/javascript">
   $(document).ready(function () {
   $(".open_modal").click(function(e) {
      var m = $(this).attr("id");
		   $.ajax({
    			   url: "modal_edit.php",
    			   type: "GET",
    			   data : {id_job: m,},
    			   success: function (ajaxData){
      			   $("#ModalEdit").html(ajaxData);
      			   $("#ModalEdit").modal('show',{backdrop: 'true'});

      		   },

      		   error: function (xhr, ajaxOptions, thrownError) { // Ketika terjadi error
				alert(xhr.responseText); // munculkan alert
				}

    		   });
        });
      });
</script>
</body>
</html>