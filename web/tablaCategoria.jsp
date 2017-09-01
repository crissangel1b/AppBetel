<%-- 
    Document   : tabla_categoria
    Created on : 25/08/2017, 12:45:54 PM
    Author     : Katia Ortiz
--%>
<%@page import="java.sql.Array"%>
<%@page import="com.betel.modelo.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.betel.dao.CategoriaDaoImpl"%>
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

<%
    CategoriaDaoImpl dao = new CategoriaDaoImpl();
    List<Categoria> listCategoria =  new ArrayList();
%>

<body class="fixed_header left_nav_fixed atm-spmenu-push dark_theme blue_thm" style="background-color: #f1f1f1">
    
    <!--\\\\\\\left_nav end \\\\\\-->
    <div class="">
        <div class="pull-left breadcrumb_admin clear_both">
        <div class="pull-left page_title theme_color">
          <h4><i class="glyphicon glyphicon-tags"></i> Categoria</h4>
          
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
                      <option value="1">Id</option>
                      <option value="2">Nombre</option>
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
                    
                                <!--tabla categoria-->
          <table class="table" id="editable-sample" aria-describedby="editable-sample_info">
           <thead>
             <tr>
                 <th>Id</th>
                 <th>Nombre</th>
                 <th>Estado</th>
                 <th>Operaciones</th>
             </tr>
            </thead>

           <tbody>
               <!-- fila inicial -->
               <%
                   listCategoria = dao.listar();
                   for(Categoria c : listCategoria){  
                   %>
               <tr class="odd">
                   <td><%= c.getIdCategoria() %></td>
                   <td><%= c.getNombre() %></td>
                   <td><%= c.getEstado() %></td>
                   <td> 
                     <span class="odd gradeX">
                     <a href="#" class="btn btn-success" title="Ver categoria" onclick="obtener_datos('1190');" data-toggle="modal" data-target="#myModales"><i class="glyphicon glyphicon-eye-open"></i></a>
                     <a href="#" class="btn btn-info" title="Editar categoria" onclick="modificar('1190');" data-toggle="modal" data-target="#myModal3"><i class="glyphicon glyphicon-edit"></i></a> 
                     <a href="#" class="btn btn-danger" title="Eliminar categoria" onclick="eliminar('1190');" data-toggle="modal" data-target="#myModal4"><i class="glyphicon glyphicon-trash"></i> </a></span>
                   </td>
               </tr>
               <% } %>
               <!--  termina la fila inicial -->
               
            </tbody>
            </table>
                
                <div class="row">
                    <div class="col-lg-6">
                       <div class="dataTables_info" id="editable-sample_info">Mostrando 1 a 10 de 12 registro </div>
                    </div>
                <div class="col-lg-6"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="prev disabled"><a href="#">← Anterior</a></li><li class="active"><a href="#">1</a></li><li><a href="#">2</a></li><li class="next"><a href="#">Siguiente → </a></li></ul></div></div></div></div>
             </div>
          </div>
        </div>
       </div>
          
        <!--Modal nueva categoria-->  
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
          <div class="modal-content modal-md">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title" id="myModalLabel">Registrar Categoría</h4>
            </div>
            <div class="modal-body"> 
                <form  action="CategoriaSvl" method="get" class="form-horizontal">
                   
                    <div class="form-group">
                        <label for="exampleInputEmail2" class="col-sm-3 control-label">Nombre</label>
                        <div class="col-sm-8">
                        <input type="text" class="form-control" id="nombreCategoria" name="">
                        </div>
                    </div>
                    <div class="form-group">
                    <label for="exampleInputName2" class="col-sm-3 control-label">Estado</label>
                        <div class="col-sm-8">
                        <input type="text" class="form-control" id="estado" >
                      </div>
                    </div>
                    
                
                
                
                <!--botones cancelaar y guardar-->
                 <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
              <button type="submit" class="btn btn-primary" name="btnRegistrar" value="Registrar" >Guardar</button>
            </div>
             </form>

                 </div>
                 </div>
                 </div>
           <!--Final Modal nueva categoria-->

        
   <!-- Modal modificar-->
 <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
          <div class="modal-content modal-md">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title" id="myModalLabel">Modificar Categoría</h4>
            </div>
              
             <div class="modal-body"> 
                <form class="form-horizontal">
                    
                    <div class="form-group">                                        
                        <label for="exampleInputName2" class="col-sm-3 control-label">idCategoria</label>
                        <div class="col-sm-8">
                        <input type="number" class="form-control" id="codigo" placeholder="1">
                        </div>    
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2" class="col-sm-3 control-label">Nombre</label>
                        <div class="col-sm-8">
                        <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Pan">
                        </div>
                    </div>
                    <div class="form-group">
                    <label for="exampleInputName2" class="col-sm-3 control-label">Estado</label>
                        <div class="col-sm-8">
                        <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Activo">
                      </div>
                    </div>
                    
                </form>
                 
                  <!--botones cancelaar y guardar-->
                <div class="modal-footer">
                   <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                   <button type="button" class="btn btn-primary">Actualizar</button>
                </div>
                
               </div>
              </div>
            </div>
      <!--Final Modal modificar categoria-->

   
  <!--Modal ver categoria-->
   <div class="modal fade" id="myModales" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog">
          <div class="modal-content modal-md">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title" id="myModalLabel">Ver producto</h4>
            </div>
              
              
             <div class="modal-body"> 
                <form class="form-horizontal">
                     <fieldset disabled >
                    <div class="form-group">                                        
                        <label for="exampleInputName2" class="col-sm-3 control-label">idCategoria</label>
                        <div class="col-sm-8">
                        <input type="number" class="form-control" id="codigo" placeholder="1">
                        </div>    
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2" class="col-sm-3 control-label">Nombre</label>
                        <div class="col-sm-8">
                        <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Pan">
                        </div>
                    </div>
                    <div class="form-group">
                    <label for="exampleInputName2" class="col-sm-3 control-label">Estado</label>
                        <div class="col-sm-8">
                        <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Activo">
                      </div>
                    </div>
                     </fieldset>
                </form>
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
                      <h4 class="modal-title">Eliminar Categoria</h4>
                    </div>
                    <div class="modal-body">
                      <p>¿Desea eliminar esta categoria ?</p>
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
