<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">
	<video autoplay muted loop id="myVideo">
	  <source src="${images_folder}/cuervo.mp4" type="video/mp4">

	</video>

	<div id="video-content" class="content row">

	   <div id="log"class="col-md-12">
	    <div>
	    <a href="${site_default_url}">
	<img   src="${images_folder}/cuervo_login.png" style="background-color: transparent; max-width: 300px; padding: 15px; position: absolute; top: 5%; z-index: 2; opacity: 0.8; border-radius: 20px;"/>
	</a>
	</div>
	</div>
	    <div id="con-login" class="d-flex text-center align-items-center col-md-12">


	 <@liferay_portlet["runtime"]
	    defaultPreferences="${freeMarkerPortletPreferences}"
	    portletName="com_liferay_login_web_portlet_LoginPortlet"
	/>


	    </div>

	</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->
<script>
var x = document.getElementsByClassName("portlet-title-text");
x[0].innerHTML = "Iniciar Sesión";
var username = document.getElementById("_com_liferay_login_web_portlet_LoginPortlet_login");
username.value = "";
username.placeholder = "Usuario:";
var password = document.getElementById("_com_liferay_login_web_portlet_LoginPortlet_password");
password.value = "";
password.placeholder = "Contraseña:";
</script>
</body>

</html>
