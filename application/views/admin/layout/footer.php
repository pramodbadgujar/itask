

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->

<script src="<?= base_url(); ?>assets/admin/plugins/select2/js/select2.full.min.js"></script>
<script src="<?= base_url(); ?>assets/admin/plugins/jquery/jquery.validate.min.js"></script>


<!-- Bootstrap -->
<script src="<?= base_url(); ?>assets/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= base_url(); ?>assets/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url(); ?>assets/admin/js/adminlte.min.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="<?= base_url(); ?>assets/admin/js/demo.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="<?= base_url(); ?>assets/admin/plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="<?= base_url(); ?>assets/admin/plugins/raphael/raphael.min.js"></script>
<script src="<?= base_url(); ?>assets/admin/plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="<?= base_url(); ?>assets/admin/plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="<?= base_url(); ?>assets/admin/plugins/chart.js/Chart.min.js"></script>



<!-- DataTables -->
<script src="<?= base_url(); ?>assets/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url(); ?>assets/admin/plugins/datatables/dataTables.responsive.min.js"></script>

<script src="<?= base_url(); ?>assets/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>

<script src="<?= base_url(); ?>assets/admin/js/custom-scripts.js"></script>
<script src="<?= base_url(); ?>assets/admin/js/sweetalert.min.js"></script>
<script src="<?= base_url(); ?>assets/admin/js/sweetalert_msg.js"></script>
<!-- Summernote -->
<script src="<?= base_url(); ?>assets/admin/plugins/summernote/summernote-bs4.min.js"></script>


<!-- PAGE SCRIPTS -->

<!-- Main Footer -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2019-2020 <a href="<?php echo base_url(); ?>">Admin</a>.</strong>
    All rights reserved.    
  </footer>
</div>
<!-- ./wrapper -->




</body>
</html>

<?php
    $this->load->view ('admin/layout/dataTable');
 ?>

<script>
	$(document).ready(function(){

		url = ""; 
		if("<?= $this->router->fetch_class(); ?>" == "users" && "<?= $this->router->fetch_method(); ?>" == "add"){ 
			url = ""; 
		}else{ 
			var url = window.location; 
		}

		// for sidebar menu entirely but not cover treeview
		$('ul.nav-sidebar a').filter(function() {
		    return this.href == url;
		}).addClass('active');

		// for treeview
		$('ul.nav-treeview a').filter(function() {
		    return this.href == url;
		}).parentsUntil(".nav-sidebar > .nav-treeview").addClass('menu-open').prev('a').addClass('active');

	});
</script> 