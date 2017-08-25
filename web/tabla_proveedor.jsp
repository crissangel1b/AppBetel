<%-- 
    Document   : tabla_proveedor
    Created on : 25/08/2017, 01:09:19 PM
    Author     : Estudiante
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
    <body class="fixed_header left_nav_fixed atm-spmenu-push dark_theme blue_thm" style="background: rgb(38, 42, 51);">
    <div class="wrapper">
  <!--\\\\\\\ wrapper Start \\\\\\-->
  <div class="header_bar">
    <!--\\\\\\\ header Start \\\\\\-->
    <div class="brand">
      <!--\\\\\\\ brand Start \\\\\\-->
      <div class="logo" style="display:block"><span class="theme_color">Distribuidora</span> Betel</div>
      <div class="small_logo" style="display:none"><img src="images/s-logo.png" width="50" height="47" alt="s-logo" /> <img src="images/r-logo.png" width="122" height="20" alt="r-logo" /></div>
    </div>
    <!--\\\\\\\ brand end \\\\\\-->
    <div class="header_top_bar">
      <!--\\\\\\\ header top bar start \\\\\\-->
      <a href="javascript:void(0);" class="menutoggle"> <i class="fa fa-bars"></i> </a>
      <div class="top_left">        
      </div>
      
      <div class="top_right_bar">
        <div class="top_right">
          <div class="top_right_menu">
            <ul>
              <li class="dropdown"> <a href="javascript:void(0);" data-toggle="dropdown"> Pago <span class="badge badge">8</span> </a>                
              </li>
              <li class="dropdown"> <a href="javascript:void(0);" data-toggle="dropdown"> Entrada <span class="badge badge color_1">4</span> </a>                
              </li>
              <li class="dropdown"> <a href="javascript:void(0);" data-toggle="dropdown"> Salida <span class="badge badge color_2">6</span> </a>                
              </li>
            </ul>
          </div>
        </div>
        <div class="user_admin dropdown"> <a href="javascript:void(0);" data-toggle="dropdown"><img src="images/user.png" /><span class="user_adminname">Pedro Florez</span> <b class="caret"></b> </a>
          <ul class="dropdown-menu">
            <div class="top_pointer"></div>
            <li> <a href="#"><i class="fa fa-user"></i> Perfil</a> </li>            
            <li> <a href="#"><i class="fa fa-cog"></i> Configuración </a></li>
            <li> <a href="login.html"><i class="fa fa-power-off"></i> Salir</a> </li>
          </ul>
        </div>
        
        
      </div>
    </div>
    <!--\\\\\\\ header top bar end \\\\\\-->  
  <!--\\\\\\\ header end \\\\\\-->
  </div>
  <div class="inner">
    <!--\\\\\\\ inner start \\\\\\-->
    <div class="left_nav">

      <!--\\\\\\\left_nav start \\\\\\-->
      
      <div class="left_nav_slidebar">
          
        <ul class="nav nav-pills nav-stacked">
            
          <div class="search_bar"> <i class="fa fa-search"></i>
            <input name="" type="text" class="search" placeholder="Search Dashboard..." />
          </div>
            
          <li>
            <a href="javascript:void(0);"><i class="glyphicon glyphicon-home"></i> Inicio </a>            
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="glyphicon glyphicon-shopping-cart"></i> Entrada <i class="fa fa-angle-down pull-right"></i></a>
              <ul>
                  <li> <a href="#"><i class="fa fa-circle"></i> <b>Nueva Entrada</b> </a> </li>
                  <li> <a href="#"><i class="fa fa-circle"></i> <b>Historial de Entradas</b> </a> </li>
              </ul>
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="glyphicon glyphicon-th-large"></i> Productos </a>            
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="glyphicon glyphicon-tags"></i> Categoria </a>            
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="glyphicon glyphicon-briefcase"></i> Proveedores </a>            
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="fa fa-thumb-tack"></i> Clientes </a>            
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="fa fa-male"></i> Empleados </a>            
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="fa fa-truck"></i> Despacho <i class="fa fa-angle-down pull-right"></i></a>
              <ul>
                  <li> <a href="#"><i class="fa fa-circle"></i> <b>Nueva Factura</b> </a> </li>
                  <li> <a href="#"><i class="fa fa-circle"></i> <b>Administrar Facturas</b> </a> </li>
              </ul>
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="glyphicon glyphicon-signal"></i> Inventario </a>            
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="glyphicon glyphicon-cog"></i> Configuración </a>            
          </li>
          
          <li> 
              <a href="javascript:void(0);"> <i class="glyphicon glyphicon-lock"></i> Administrar Accesos </a>            
          </li>
        </ul>
      </div>
    </div>
    <!--\\\\\\\Cargar la tabla\\\\\\-->
    <div class="contentpanel">
      <!--\\\\\\\ contentpanel start\\\\\\-->      
      <div class="container clear_both padding_fix">
       
      </div>
      
    </div>
    <!--\\\\\\\ content panel end \\\\\\-->
    </div>
  <!--\\\\\\\ inner end\\\\\\-->  
</div>
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
