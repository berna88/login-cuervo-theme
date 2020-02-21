<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>

	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>${the_title} - ${company_name}</title>

	<link href="https://fonts.googleapis.com/css?family=Nunito:400,700,800|Source+Sans+Pro:300,400,700|Work+Sans:300,400,500,600,700,800&display=swap" rel="stylesheet">

	<@liferay_util["include"] page=top_head_include />

</head>

<body class="${css_class}">

	<@liferay_ui["quick-access"] contentId="#main-content" />

	<@liferay_util["include"] page=body_top_include />

	<@liferay.control_menu />

	<div id="wrapper">

<video autoplay muted loop id="myVideo">
  <source src="${images_folder}/cuervo.mp4" type="video/mp4">
  Login cuervo
</video>
		<section class="seccion-contenedor">

			<header id="banner" role="banner">
				<div id="heading">
			     	<div class="barra-utilerias">
		            	<div class="container">
			                <nav class="navbar navbar-dark">
			                    <a href="${site_default_url}">
			                        <img src="${images_folder}/cuervo_login.png" alt="" class="img-fluid logotipo">
			                    </a>
			                    <div class="utilerias d-none d-md-block">
			                       <!-- <a href="#" class="d-inline-block usuario">
			                            <img src="img/user.png" alt="" class="img-fluid user-img">
			                            <i class="fas fa-chevron-down d-lg-none"></i>
			                            <span class="utileria-usuario d-lg-inline">Hola, 1234567890</span>
			                        </a>-->
			                           
			                        <#if !is_signed_in>
			                        <!--<div class="d-inline-block usuario">
										<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
						 			</div>
						 		-->
									<#else>
									<div id="personal" class="d-inline-block usuario"><@liferay.user_personal_bar /></div>
									</#if>
			                        
			                      <!--  <div class="form-inline d-inline-block busqueda">
			                        
									 <#if !is_signed_in>
									 <#else>

									       <@liferay.search_bar />
											
									  </#if>
	

			                       </div>
			                   -->
			                    </div>
			                    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            		<i class="fas fa-bars"></i>                          
			                    </button>
			                </nav>
			            </div>
			        </div>
<#--
					<#if has_navigation && is_setup_complete>
						 <#include "${full_templates_path}/navigation.ftl" />
					</#if>
-->
				</div>
			</header>

			<section id="content">
				<h1 class="hide-accessible">${the_title}</h1>

				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}

					${portletDisplay.setTitle(the_title)}

					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>
			</section>
			
			

		</section>
	</div>

	<@liferay_util["include"] page=body_bottom_include />

	<@liferay_util["include"] page=bottom_include />

	
	

</body>

</html>