<!doctype html>
<html>
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title><g:layoutTitle default="Seguros Monterrey"/></title>
		

    <link rel="stylesheet" href="${resource(dir: 'css/gumby', file: 'gumby.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/gumby', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/gumby', file: 'jquery-ui.css')}" type="text/css">

    <!-- actually imports '/app/js/main.js' -->
    <g:javascript src="gumby/libs/jquery-1.10.1.min.js" />
    <g:javascript src="gumby/libs/jquery-2.0.2.min.js" />
    <g:javascript src="gumby/libs/gumby.js" />
    <g:javascript src="gumby/libs/modernizr-2.6.2.min.js" />
    <g:javascript src="gumby/libs/gumby.min.js" />
    <g:javascript src="gumby/libs/gumby.init.js" />

    <g:javascript src="gumby/main.js" />
    <g:javascript src="gumby/plugins.js" />
    <g:javascript src="gumby/jquery-ui.js" />

    <g:javascript src="gumby/libs/ui/gumby.checkbox.js" />
    <g:javascript src="gumby/libs/ui/gumby.fittext.js" />
    <g:javascript src="gumby/libs/ui/gumby.fixed.js" />
    <g:javascript src="gumby/libs/ui/gumby.navbar.js" />
    <g:javascript src="gumby/libs/ui/gumby.radiobtn.js" />
    <g:javascript src="gumby/libs/ui/gumby.retina.js" />
    <g:javascript src="gumby/libs/ui/gumby.skiplink.js" />
    <g:javascript src="gumby/libs/ui/gumby.tabs.js" />
    <g:javascript src="gumby/libs/ui/gumby.toggleswitch.js" />
    <g:javascript src="gumby/libs/ui/jquery.validation.js" />
    <g:javascript src="gumby/libs/jquery.mobile.custom.min.js" />
       
    <div class="pretty navbar unfixed" gumby-fixed="top" id="nav1">
    <a class="toggle" gumby-trigger="#nav1 &gt; ul" href="#"><i class="icon-menu"></i></a>
    
    <ul class="eight columns" style="position: absolute;">
      <li><g:link controller="customerAdm" action="index">Cliente</g:link></li>
      <li>
        <g:link controller="policyAdm" action="list">Polizas</g:link></a>
        <div class="dropdown">
          <ul>
            <li><g:link controller="policyAdm" action="lifeInsurance">Seguro de Vida</g:link></li>
            <li><g:link controller="policyAdm" action="medicalInsurance">Gastos medicos</g:link></li>
            <li><a href="#">Casa</a></li>
            <li><a href="#">Auto</a></li>
            <li><a href="#">otro</a></li>
          </ul>
        </div>
      </li>
      <li>
        <a href="#">Catalogos</a>
        <div class="dropdown">
          <ul>
            <li><g:link controller="companyTrade" action="list">Ramo</g:link></li>
            <li><g:link controller="companyTradeProducts" action="list">Productos</g:link></li>
            
          </ul>
        </div>
      </li>
      <li><a href="#">Usuarios</a></li>
    </ul>

    <ul style="position: relative; float: right; display: table;">
      <h1 class="four columns logo" >
        <a href="${createLink(uri: '/')}">
          <img src="${createLinkTo(dir: 'img', file:'gumby_mainlogo.png')}" gumby-retina="">
        </a>
      </h1>
    </ul>

  </div>

		<g:layoutHead/>
		<r:layoutResources />
	</head>

	<body>
    <br/>
    <br/>
    <br/>

		<g:layoutBody/>

	</body>

</html>