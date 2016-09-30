$(document).on('turbolinks:load', function(){
	$('#member_fecha_inicio').datepicker({dateFormat: 'dd/mm/yy'});
	$('#member_fecha_fin').datepicker({dateFormat: 'dd/mm/yy'});
});