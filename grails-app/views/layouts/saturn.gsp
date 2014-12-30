<!DOCTYPE html>
<html>

<head>
 <title>${controllerName }</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  
        <!-- Hammer reload -->
          <script>
            setInterval(function(){
              try {
                if(typeof ws != 'undefined' && ws.readyState == 1){return true;}
                ws = new WebSocket('ws://'+(location.host || 'localhost').split(':')[0]+':35353')
                ws.onopen = function(){ws.onclose = function(){document.location.reload()}}
                ws.onmessage = function(){
                  var links = document.getElementsByTagName('link'); 
                    for (var i = 0; i < links.length;i++) { 
                    var link = links[i]; 
                    if (link.rel === 'stylesheet' && !link.href.match(/typekit/)) { 
                      href = link.href.replace(/((&|\?)hammer=)[^&]+/,''); 
                      link.href = href + (href.indexOf('?')>=0?'&':'?') + 'hammer='+(new Date().valueOf());
                    }
                  }
                }
              }catch(e){}
            }, 1000)
          </script>
        <!-- /Hammer reload -->
      

  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/fullcalendar.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/datatables/datatables.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/datatables/bootstrap.datatables.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/chosen.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/jquery.timepicker.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/daterangepicker-bs3.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/colpick.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/dropzone.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/jquery.handsontable.full.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/jscrollpane.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/jquery.pnotify.default.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/jquery.pnotify.default.icons.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/app.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/app.css')}">
  <link rel='stylesheet' href="${resource(dir: '/assets/css/plugins/googleapis/roboto.css')}">
  
  
  
  <link href="assets/favicon.ico" rel="shortcut icon">
  <link href="assets/apple-touch-icon.png" rel="apple-touch-icon">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    @javascript html5shiv respond.min
  <![endif]-->

   <g:layoutHead />
   <r:layoutResources />
</head>

<body class="glossed">
 	
<div class="all-wrapper fixed-header left-menu">
  <div class="page-header">
  <div class="header-links hidden-xs">
    
   
    <g:link controller="login" action="logout" class="header-link">
      <i class="fa fa-power-off"></i> Logout</g:link> 
      
    </div>
    <div class="dropdown hidden-sm hidden-xs">
 <div class="top-search-w pull-right">
      <input type="text" class="top-search" placeholder="Search"/>
    </div>
    
   
  </div>
  <g:link class="current logo hidden-xs" controller="dashboard"><font size="2">DEMO</font></g:link>
  <a class="menu-toggler" href="#"><i class="fa fa-bars"></i></a>
  <h1>Admin Dashboard</h1>
</div>
  <div class="side">
  <div class="sidebar-wrapper">
  <ul>
  <g:if test="${controllerName =='dashboard'}">
    <li class='current'>
   </g:if>
  <g:else>
     <li>
  </g:else>
  
      <g:link class='current' controller="dashboard" data-toggle="tooltip" data-placement="right" title="" data-original-title="Dashboard">
        <i class="fa fa-home"></i>
      </g:link>
    </li>
    
 <g:if test="${controllerName =='test'}">
    <li class='current'>
   </g:if>
  <g:else>
     <li>
  </g:else>
  
      <g:link class='current' controller="test" data-toggle="tooltip" data-placement="right" title="" data-original-title="Test Harness">
        <i class="fa fa-medkit"></i>
      </g:link>
    </li>
   
  </ul>
   
</div>
 
<div class="sub-sidebar-wrapper">
  <ul class="nav">
    
   <g:render template="/${controllerName }/sidemenu"></g:render>
  
   
  </ul>
</div>
 
  </div>
  <div class="main-content">
  <div class="page-footer">
   
</div>
  <g:layoutBody />
     
<saturn:alert/>
<div class="row">
  <div class="col-md-6">
     
    
</div>
    
  
  

<div class="row">
  <div class="col-md-12">
    
  </div>
</div>
  </div>
  <div class="page-footer">
   
</div>
</div>


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.pnotify.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.sparkline.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/mwheelIntent.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/mousewheel.js')}"/></script>
<script src="${resource(dir: '/assets/js/bootstrap/tab.js')}"/></script>
<script src="${resource(dir: '/assets/js/bootstrap/dropdown.js')}"/></script>
<script src="${resource(dir: '/assets/js/bootstrap/tooltip.js')}"/></script>
<script src="${resource(dir: '/assets/js/bootstrap/collapse.js')}"/></script>
<script src="${resource(dir: '/assets/js/bootstrap/scrollspy.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/bootstrap-datepicker.js')}"/></script>
<script src="${resource(dir: '/assets/js/bootstrap/transition.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.knob.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.flot.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/fullcalendar.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/datatables/datatables.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/chosen.jquery.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.timepicker.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/daterangepicker.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/colpick.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/moment.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/datatables/bootstrap.datatables.js')}"/></script>
<script src="${resource(dir: '/assets/js/bootstrap/modal.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/raphael-min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/morris-0.4.3.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/justgage.1.0.1.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.maskedinput.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.maskedinput.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.maskmoney.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/summernote.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/dropzone-amd-module.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.validate.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jquery.bootstrap.wizard.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/plugins/jscrollpane.min.js')}"/></script>
<script src="${resource(dir: '/assets/js/application.js')}"/></script>


