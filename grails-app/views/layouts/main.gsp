<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> 
<html lang="en" class="no-js"><!--<![endif]-->
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Seguros Monterrey</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Seguros"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!--
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
	-->	
    	<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'normalize.css')}" type="text/css">
	    <link rel="stylesheet" href="${resource(dir: 'css', file: '34gs.css')}" type="text/css">
	    <link rel="stylesheet" href="${resource(dir: 'css', file: '34gs-queries.css')}" type="text/css">
		<script src="${resource(dir: 'js', file: 'application.js')}"></script>
	  
	    <script src="${resource(dir: 'js', file: 'vendor/modernizr-2.6.2.min.js')}"></script>
	    <script src="${resource(dir: 'js', file: 'plugins.js')}"></script>
	    <script src="${resource(dir: 'js', file: 'main.js')}"></script>
	    <script src="${resource(dir: 'js', file: 'vendor/jquery-1.9.1.min.js')}"></script>

       


		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>

		<div class="navbar">
              <div class="navbar-inner">
                <div class="container">
                  <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <label class="brand" >Administracion</label>
                  <div class="nav-collapse collapse navbar-responsive-collapse">
                    <ul class="nav">
                      <li><g:link controller="Policy">Polizas</g:link>
                      	<ul>
                      		<g:link controller="Policy">Seguros de Vida</g:link></li>
                      		<g:link controller="Policy">Gastos Medicos</g:link></li>
                      		<g:link controller="Policy">Casa/Auto</g:link></li>
                      	</ul>
                      </li>
                      <li><g:link controller="customerAdm">Clientes</g:link></li>
                    </ul>
                    <ul class="nav pull-right">
                    
                      
                      
                      <!--
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-wrench"></i>Configuración <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li><a href="catalogo.html">Catálogos</a></li>
                          <li><a href="general.html">Configuración General</a></li>
                          <li><a href='tickets.html'>Administración de Tickets</a></li>
                          <li><a href='tickets.html'>Administración de Proveedores</a></li>
                          <li><a href="roles.html">Configuración de Roles</a></li>
                          <li><a href="servidor.html">Configuración del Servidor</a></li>
                          <li class="divider"></li>
                          <li><a href="otra.html">Otra Configuración</a></li>
                        </ul>
                      </li>
                    -->
                    </ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>




		<nav:primary/>
		<nav:secondary/>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>