<%-- 
    Document   : ver_Producto
    Created on : 25/08/2017, 01:09:19 PM
    Author     : Katia Ortiz 
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
  

    <div class="clearfix">
      <div class="btn-group pull-right">
          <button href=javascript:void(0);" data-toggle="modal" data-target="#myModal2" class="btn btn-success" title="Ver Producto" onclick="ver('1129');" ><i class="glyphicon glyphicon-eye-open"></i></a> </button>
      </div>
    </div>
  
    <!--Modal ver producto-->  
        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
          <div class="modal-content modal-lg">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title" id="myModalLabel">Ver producto</h4>
            </div>
            <div class="modal-body"> 
                <form name="update_register" id="update_register" class="form-horizontal" method="post" enctype="multipart/form-data">
                <div class="nav-tabs-custom">                                
                <div class="tab-content">
                <div id="resultados_ajax"></div>
                
                <div class="tab-pane active" id="details">
                    
                <fieldset disabled >
                    
                <div class="form-group ">
                <label for="product_code" class="col-sm-2 control-label">Código</label>
                <div class="col-sm-4">
                <input type="text" class="form-control" id="product_code" name="product_code" placeholder="P0001">                            
                </div>
                <label for="model" class="col-sm-2 control-label">Nombre</label>
                <div class="col-sm-4">
                <input type="text" class="form-control" id="model" name="model">
                </div>
                </div>
                    
                <div class="form-group">
                <label for="model" class="col-sm-2 control-label"> Fabricante </label>
                <div class="col-sm-4">
                <input type="text" class="form-control" id="model" name="model">
                </div>
                <label for="presentation" class="col-sm-2 control-label">Und. por Caja</label>
                <div class="col-sm-4">
                <input type="number" class="form-control" id="cogido" placeholder="Unidades">
                </div>
                </div>
                    
                <div class="form-group">
                <label for="exampleInputAmount" class="col-sm-2 control-label">Precio Unitario</label>
                <div class="col-sm-4">
                <div class="input-group">
                  <div class="input-group-addon">$</div>
                  <input type="number" class="form-control" id="exampleInputAmount" placeholder="En Pesos">
                  <div class="input-group-addon">.00</div>
                </div>
                </div> 
                   <label for="exampleInputAmount" class="col-sm-2 control-label">Porc. de Ganancia</label>
                    <div class="col-sm-4">
                     <div class="input-group">                                           
                       <input type="number" class="form-control" id="exampleInputAmount">
                       <div class="input-group-addon">%</div>
                     </div>
                  </div>
                </div>
                    
                <div class="form-group">
                <label for="stock" class="col-sm-2 control-label">Stock inicial</label>
                <div class="col-sm-4">
                <div class="input-group">
                <div class="input-group-addon">
                <i class="fa fa-th-large" aria-hidden="true"></i>
                </div>
                <input type="text" class="form-control" id="selling_price" name="selling_price" required="" pattern="\d+(\.\d{2})?" title="precio con 2 decimales">
                </div>
                </div> 
                <label for="note" class="col-sm-2 control-label">Descripción</label>
                   <div class="col-sm-4">
                      <textarea class="form-control" name="note" id="note"></textarea>
                   </div>
                </div>
                    
                <div class="form-group">
                <label for="stock" class="col-sm-2 control-label">Categoria</label>
                <div class="col-sm-4">
                     <select class="form-control">
                      <option>- Selecione -</option>
                      <option>Pan de Queso</option>
                      <option>Ponques</option>
                      <option>Galletas</option>                                        
                    </select>
                </div>
             <label for="stock" class="col-sm-2 control-label">Proveedor</label>
                <div class="col-sm-4">
                     <select class="form-control">
                      <option>- Selecione -</option>
                      <option>Servipan</option>
                      <option>Yulipan</option>
                      <option>Tecnipan</option>                                        
                    </select>
                </div>
                </div>
                    
                <div class="form-group">
                <label for="model" class="col-sm-2 control-label">Fecha Ingreso</label>
                <div class="col-sm-4">
                    <div class="input-group"> 
                     <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                     <input type="text" class="form-control" id="model" name="purchase_date" value="14/08/2017" disabled="">
                    </div>
                </div>
                <label for="stock" class="col-sm-2 control-label">Estado</label>
                <div class="col-sm-4">
                     <select class="form-control">
                      <option>- Selecione -</option>
                      <option>Activo</option>
                      <option>Inactivo</option>
                    </select>
                </div>
                </div>
                </fieldset>
                </div>
                </div>                            
                </div>
                </div>

                </form>
                <!--botones cancelaar y guardar-->
                 <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
              <button type="button" class="btn btn-primary">Guardar</button>
            </div>
                 </div>
                 </div>
                 </div>
                 </div>
  
  




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
