<%-- 
    Document   : nuevo_proveedor
    Created on : 25/08/2017, 01:09:19 PM
    Author     : Cristian 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Distribuidora Betel</title>
    <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">

    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" />
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link href="plugins/kalendar/kalendar.css" rel="stylesheet">
    <link rel="stylesheet" href="plugins/scroll/nanoscroller.css">
    <link href="plugins/morris/morris.css" rel="stylesheet" />
    </head>
    <body class="fixed_header left_nav_fixed atm-spmenu-push dark_theme blue_thm" style="background: #f1f1f1;">
   <br>
   <br>
   
        <div class="btn-group pull-right">
          <button href="javascript:void(0);" data-toggle="modal" data-target="#myModal" class="btn btn-danger" title="Editar Proveedor" onclick="obtener_datos('1129');" ><i class="glyphicon glyphicon-trash"></i></a> </button>
      </div>
<div class="panel-body">
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Eliminar Proveedor</h4>
        </div>
          
          
        <div class="modal-body">
            <h5>¿Esta seguro que desea elminar proveedor ?</h5>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-info" data-dismiss="modal">Cancelar</button>
             <button type="button" class="btn btn-info">Aceptar</button>
       </div>
    </div>
  </div>
</div>
</div>   
   
    <!--\\\\\\\ content panel end \\\\\\-->
    

<!--\\\\\\\ wrapper end\\\\\\-->


<script src="js/jquery-2.1.0.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/common-script.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/jquery.sparkline.js"></script>
<script src="js/sparkline-chart.js"></script>
<script src="js/graph.js"></script>
<script src="js/edit-graph.js"></script>
<script src="plugins/kalendar/kalendar.js" type="text/javascript"></script>
<script src="plugins/kalendar/edit-kalendar.js" type="text/javascript"></script>

<script src="plugins/sparkline/jquery.sparkline.js" type="text/javascript"></script>
<script src="plugins/sparkline/jquery.customSelect.min.js" ></script> 
<script src="plugins/sparkline/sparkline-chart.js"></script> 
<script src="plugins/sparkline/easy-pie-chart.js"></script>
<script src="plugins/morris/morris.min.js" type="text/javascript"></script> 
<script src="plugins/morris/raphael-min.js" type="text/javascript"></script>  
<script src="plugins/morris/morris-script.js"></script> 





<script src="plugins/demo-slider/demo-slider.js"></script>
<script src="plugins/knob/jquery.knob.min.js"></script> 




<script src="js/jPushMenu.js"></script> 
<script src="js/side-chats.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="plugins/scroll/jquery.nanoscroller.js"></script>
    </body>
</html>
