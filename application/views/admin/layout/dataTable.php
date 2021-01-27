<script> 

    
    $(document).ready(function() {

        $('.user-list').DataTable({
            'processing': true,
            'serverSide': true,
            'serverMethod': 'post',
            'order': [],
            'language': {                
                'infoFiltered' : ""
            },
             'ajax': {
                url : "<?php echo base_url('admin/users/getList') ?>",
                type : 'POST'
            },
            'columns': [
                {data : 'first_name',"orderable":true,"searchable":true,name:'first_name'}, 
                {data : 'last_name',"orderable":true,"searchable":true,name:'last_name'},  
                {data : 'email',"orderable":true,"searchable":true,name:'email'}, 
                {data : 'address',"orderable":true,"searchable":true,name:'address'}, 
                {data : 'contact',"orderable":true,"searchable":true,name:'contact'},  
                {data : 'actions',"orderable":false,"searchable":false,name:'actions'},    
            ] 
        });
        
        $('.products-list').DataTable({
            'processing': true,
            'serverSide': true,
            'serverMethod': 'post',
            'order': [],
            'language': {                
                'infoFiltered' : ""
            },
             'ajax': {
                url : "<?php echo base_url('admin/products/getList') ?>",
                type : 'POST'
            },
            'columns': [ 
                {data : 'name',"orderable":true,"searchable":true,name:'name'}, 
                {data : 'sku',"orderable":true,"searchable":true,name:'sku'},  
                {data : 'category_name',"orderable":true,"searchable":true,name:'category_name'},   
                {data : 'quantity',"orderable":true,"searchable":true,name:'quantity'},   
                {data : 'price',"orderable":true,"searchable":true,name:'price'},   
                {data : 'actions',"orderable":false,"searchable":false,name:'actions'},    
            ] 
        }); 
    
         $('.orders-list').DataTable({
            'processing': true,
            'serverSide': true,
            'serverMethod': 'post',
            'order': [],
            'language': {                
                'infoFiltered' : ""
            },
             'ajax': {
                url : "<?php echo base_url('admin/orders/getList') ?>",
                type : 'POST'
            },
            'columns': [ 
                {data : 'order_id',"orderable":true,"searchable":true,name:'order_id'}, 
                {data : 'first_name',"orderable":true,"searchable":true,name:'first_name'},  
                {data : 'shipping_address',"orderable":true,"searchable":true,name:'shipping_address'},   
                {data : 'total',"orderable":true,"searchable":true,name:'total'},   
                {data : 'is_paid',"orderable":true,"searchable":true,name:'is_paid'},   
                {data : 'actions',"orderable":false,"searchable":false,name:'actions'},    
            ] 
        }); 
   


    });
</script>