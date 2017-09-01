<%-- 
    Document   : tabla_producto
    Created on : 25/08/2017, 12:45:54 PM
    Author     : Katia Ortiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html lang="es">
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
<body class="fixed_header left_nav_fixed atm-spmenu-push dark_theme blue_thm" style="background-color: #f1f1f1">
    
    <!--\\\\\\\left_nav end \\\\\\-->
    <div class="">
        <div class="pull-left breadcrumb_admin clear_both">
        <div class="pull-left page_title theme_color">
          <h4><i class="glyphicon glyphicon-th-large"></i> Productos</h4>
          
        </div>
       
      </div>
      <div class="container clear_both padding_fix">         
     
        <div class="row">
                <div class="col-md-12">
                    
                 <div class="panel panel-info">
		
                    <div class="panel-body">
                        
           <div class="porlets-content">
          <div class="adv-table editable-table ">
                       
              <div class="clearfix">
                  <div class="btn-group pull-right">
                  <button href="javascript:void(0);" class="btn btn-info" data-toggle="modal" data-target="#myModal"> <i class="glyphicon glyphicon-plus"></i> <span> nuevo</span> </button>
                  </div>
              </div>
                             
                    <form class="form-inline">
                    <label class="sr-only" for="inlineFormCustomSelect">Parametro</label>
                    <select class="form-control" id="inlineFormCustomSelect">
                      <option selected="">- Seleccione -</option>
                      <option value="1">Código</option>
                      <option value="2">Nombre</option>
                      <option value="3">Valor unitario</option>
                      <option value="3">Categoría</option>
                      <option value="3">Estado</option>
                    </select>
                    <input type="text" class="form-control" id="inputBuscar">
                    <button type="submit" class="btn btn-info"><i class="glyphicon glyphicon-search"></i> <span>Buscar</span></button>
                  </form>
                           
                          </div>
                <div class="margin-top-10"></div>
                <div id="editable-sample_wrapper" class="dataTables_wrapper form-inline" role="grid">
                <div class="row">
                    <div class="col-lg-6">
                        <div id="editable-sample_length" class="dataTables_length">
                            <label>
                        <select size="1" name="editable-sample_length" aria-controls="editable-sample" class="form-control xsmall">
                            <option value="5">5</option>
                            <option value="15">15</option>
                            <option value="20">20</option>
                            <option value="-1">All</option>
                        </select> Páginas</label></div></div><div class="col-lg-6">
                            <div class="dataTables_filter" id="editable-sample_filter">

                                </label>
                                </div>
                    .            </div>
                                </div>
                    
                               <!--tabla producto-->
                             <table class="table" id="editable-sample" aria-describedby="editable-sample_info">
                <thead>
                  <tr>
                      <th>Còdigo</th>
                      <th>Nombre</th>
                      <th>Valor Unitario</th>
                      <th>Categoria</th>
                      <th>Stock Min</th>
                      <th>Estado</th>
                      <th>Operaciones</th>
                  </tr>
                 </thead>

                <tbody>
                    <tr class="odd">
                        <td>P0001</td>
                        <td>Pan de Queso</td>
                        <td>1000</td>
                        <td>Pan</td>
                        <td>10</td>
                        <td>Activo</td>
                        <td> 
                          <span class="odd gradeX">
                          <a href="#" class="btn btn-success" title="Ver producto" onclick="obtener_datos('1190');" data-toggle="modal" data-target="#myModal2"><i class="glyphicon glyphicon-eye-open"></i></a>
                          <a href="#" class="btn btn-info" title="Editar Producto" onclick="modificar('1190');" data-toggle="modal" data-target="#myModal3"><i class="glyphicon glyphicon-edit"></i></a> 
                          <a href="#" class="btn btn-danger" title="Eliminar producto" onclick="eliminar('1190');" data-toggle="modal" data-target="#myModal4"><i class="glyphicon glyphicon-trash"></i> </a></span>
                        </td>
                     </tr>                              
                 </tbody>
            </table>
                               
                         <div class="row">
                            <div class="col-lg-6">
                                <div class="dataTables_info" id="editable-sample_info">Mostrando 1 a 10 de 12 registro </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="dataTables_paginate paging_bootstrap pagination"><ul>
                                        <li class="prev disabled"><a href="#">← Anterior</a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li class="next"><a href="#">Siguiente → </a></li></ul>
                                </div>
                            </div>
                         </div>
                    </div>
                
        <!--Modal nuevo producto-->  
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
          <div class="modal-content modal-lg">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title" id="myModalLabel">Registrar Producto</h4>
            </div>
            <div class="modal-body"> 
                <form name="update_register" id="update_register" class="form-horizontal" method="post" enctype="multipart/form-data">
                <div class="nav-tabs-custom">                                
                <div class="tab-content">
                <div id="resultados_ajax"></div>
                
                <div class="tab-pane active" id="details">
                    
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
                  <div class="input-group-addon"></div>
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
                <label for="" class="col-sm-2 control-label">Descripción</label>
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
                      <div class="input-group-addon"><i class="fa fa-calendar"></i>
                      </div>
                      <input type="text" class="form-control" id="model" name="purchase_date" value="14/08/2017" disabled="">
                    </div>           
                </div>
                <label for="stock" class="col-sm-2 control-label">Estado</label>
                <div class="col-sm-4">
                   <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Activo">
                </div>
                </div>
                
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
           <!--Final Modal nuevo producto-->
           
           
        
   <!-- Modal modificar-->
   <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
          <div class="modal-content modal-lg">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title" id="myModalLabel">Modificar Producto</h4>
            </div>
            <div class="modal-body"> 
                <form name="update_register" id="update_register" class="form-horizontal" method="post" enctype="multipart/form-data">
                <div class="nav-tabs-custom">                                
                <div class="tab-content">
                <div id="resultados_ajax"></div>
                
                <div class="tab-pane active" id="details">
                    
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
                        <div class="input-group-addon"><i class="fa fa-calendar"></i>
                        </div>
                        <input type="text" class="form-control" id="model" name="purchase_date" value="14/08/2017" disabled="">
                    </div>                </div>
                <label for="stock" class="col-sm-2 control-label">Estado</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Activo">
                </div>
                </div>
                
                
                </div>
               </div>                            
              </div>
             </div>

                </form>
                 <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
               <button type="button" class="btn btn-primary">Actualizar</button>
               </div>
                
               </div>
              </div>
            </div>
      <!--Final Modal modificar producto-->
      
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
                        <div class="input-group-addon"><i class="fa fa-calendar"></i>
                        </div>
                        <input type="text" class="form-control" id="model" name="purchase_date" value="14/08/2017" disabled="">
                    </div>
                </div>
                <label for="stock" class="col-sm-2 control-label">Estado</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Activo">
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
     <!--Final Modal ver producto-->

  
 <!--Modal eliminar-->  
   <div class="modal fade" id="myModal4" role="dialog">
                <div class="modal-dialog modal-sm">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Eliminar Producto</h4>
                    </div>
                    <div class="modal-body">
                      <p>¿Desea eliminar este producto ?</p>
                    </div>
                    <div class="modal-footer">
                         
                           <!-- Botones guardar y cancelar-->
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-info">Guardar</button>
                           
                    </div>
                  </div>
                </div>
              </div>
   <!--Final Modal eliminar-->
  
            </div>
        </div>
    </div>
            
	<div id="resultados" class="col-md-12" style="margin-top:10px">
                    </div><!-- Carga los datos ajax -->			
			
                    
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
