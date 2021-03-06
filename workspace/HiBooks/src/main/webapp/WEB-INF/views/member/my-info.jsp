<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bit.hibooks.setting.MemberModeSet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Hibooks</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- security and ajax 403 -->
	<meta name="_csrf" content="${_csrf.token}">
	<meta name="_csrf_header" content="${_csrf.headerName}">
	
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.png">
	
    <!-- all css here -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/animate.css">
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/chosen.min.css">
    <link rel="stylesheet" href="../assets/css/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/fontawesome-all.css">
    <link rel="stylesheet" href="../assets/css/ionicons.min.css">
    <link rel="stylesheet" href="../assets/css/material-design-iconic-font.css">
    <link rel="stylesheet" href="../assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="../assets/css/tippy.css">
    <link rel="stylesheet" href="../assets/css/bundle.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/service-index.css">
    <link rel="stylesheet" href="../assets/css/service-admin.css">
    <link rel="stylesheet" href="../assets/css/service-my-info.css">
    <link rel="stylesheet" href="../assets/css/responsive.css">

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
</head>
<body>
	<sec:authentication property="principal.member" var="loginUserInfo"/>
	<div class="wrapper">
		<header id="header_background">
            <div class="header-topbar header-topbar-style-1">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 col-xs-12">
                            <div class="header-top-left">
                                <ul>
                                    <li>
                                        <h3 id="logo"><a href="/">H!Books</a></h3>
                                    </li>
                                    <li>
                                        
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6  col-xs-12 ">
                            <div class="header-top-right">
                                <ul>
                                    <li>
                                        <div class="switcher">
                                  
                                        	<sec:authorize access="isAnonymous()">
                                        		<a href="member/login.do"><span>?????????</span></a>
                                        	</sec:authorize> 
                							<sec:authorize access="isAuthenticated()">
                								<form id="log-out" action = "../member/logout.do" method = 'post'>
                									<a onclick="logoutSubmit()" style="cursor: pointer"><span>????????????</span></a>
                									<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
                								</form>
                							</sec:authorize> 
                                        </div>
                                    </li>
                                    <li>
                                        <div class="switcher">
                                        	<sec:authorize access="isAnonymous()">
                                        		<a href="member/join.do"><span> ????????????</span></a>
                                        	</sec:authorize> 
                							
                                        </div>
                                    </li>
                                    <li>
                                        <div class="switcher">
                                            <a href="../purchase/cart.do"><span> ????????????</span></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="switcher menu_page my_acc">
                                            <ul>
                                                <li class="switcher-menu-active">
                                                    <a >???????????????</a>
                                                    <ul class="switcher__menus">
                                                        <li class="switcher-menu-item">
                                                            <a href="../member/moveMyInfo.do">??? ??????</a>
                                                        </li>
                                                        <li class="switcher-menu-item">
                                                            <a href="../wishList/moveWishPage.do">???????????????</a>
                                                        </li>  
                                                        <sec:authorize access="isAuthenticated()">
	                                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
	                                                        <li class="switcher-menu-item">
	                                                            <a href="../admin/recommend.do">??????????????????</a>
	                                                        </li>
	                                                        </sec:authorize>
                                                        </sec:authorize>
                                                        <li class="switcher-menu-item">
                                                            <a href="../purchase/orderComplete.do">????????????</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		</header>
		<div class="main">
            <!-- Sign up form -->
            <section class="sign-up">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">???????????? </h2>
                            <c:choose>
                            	<c:when test="${checkPwdCode!= 15 && !empty checkPwdCode}">
                            		<form method="post" name="my_info_input" class="register-form" id="info-register" action="updateMemberInfo.do">
		                                
		                                <div class="form-group">
		                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
		                                    <input type="text" name="m_name" id="name" value="${loginUserInfo.m_name }" readonly />
		                                </div>
		                                <div class="form-group">
		                                    <label for="email"><i class="zmdi zmdi-email"></i></label>
		                                    <input type="email" name="m_email" id="email" value="${loginUserInfo.m_email }" readonly/>
		                                </div>
		                                <br><br><br>
		                                <h4>????????????</h4>
		                                <div class="form-group">
		                                    <label for="phone"><i class="zmdi zmdi-smartphone-android"></i></label>
		                               		<input value="${loginUserInfo.m_phone}" type="text" name="m_phone" id="phone" placeholder="????????????"/>
		                                </div>
		                                <div class="form-group">
		                                    <div class="form-group form-two-input">
		                                        <label for="zipNo"><i class="zmdi zmdi-navigation"></i></label>
		                                        <input value="${loginUserInfo.m_zipNum}" placeholder="????????????" type="text"  id="zipNo"  name="m_zipNum" style="width:200px;" >
		                                        <input type="button" id="addr" onClick="goPopup();" value="?????? ??????" class="form-submit">
		                                    </div>
		                                    <br/>
		                                    <label for="s_addr"><i class="zmdi zmdi-home"></i></label>
		                                    <input value="${loginUserInfo.m_addr1}" placeholder="????????????" type="text" name="m_addr1"  id="roadFullAddr">
		                                </div>
		                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		                                <div class="form-group form-button">
		                                    <input type="submit" id="signup" class="form-submit" value="??????"/>
		                                </div>
		                            </form>
                            	</c:when>
                            	<c:otherwise>
                            		<form method="post" name="my_info_input" class="register-form" id="info-register" action="updateMemberInfo.do">
		                                <h5 style="text-align: end;"><a href="moveUpdate.do">????????????</a></h5>
		                                <div class="form-group">
		                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
		                                    <input type="text" name="m_name" id="name" value="${loginUserInfo.m_name }" readonly />
		                                </div>
		                                <div class="form-group">
		                                    <label for="email"><i class="zmdi zmdi-email"></i></label>
		                                    <input type="email" name="m_email" id="email" value="${loginUserInfo.m_email }" readonly/>
		                                </div>
		                                <br><br><br>
		                                <h4>????????????</h4>
		                                <div class="form-group">
		                                    <label for="phone"><i class="zmdi zmdi-smartphone-android"></i></label>
		                               		<input value="${loginUserInfo.m_phone}" type="text" name="m_phone" id="phone" placeholder="????????????" readonly/>
		                                </div>
		                                <div class="form-group">
		                                    <div class="form-group form-two-input">
		                                        <label for="zipNo"><i class="zmdi zmdi-navigation"></i></label>
		                                        <input value="${loginUserInfo.m_zipNum}" placeholder="????????????" type="text"  id="zipNo"  name="m_zipNum" style="width:200px;" readonly>
		                                        <input type="button" id="addr" value="?????? ??????" class="form-submit">
		                                    </div>
		                                    <br/>
		                                    <label for="s_addr"><i class="zmdi zmdi-home"></i></label>
		                                    <input value="${loginUserInfo.m_addr1}" placeholder="????????????" type="text" name="m_addr1"  id="roadFullAddr" readonly>
		                                </div>
		                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		                                <div class="form-group form-button">
		                                    <input onclick="" type="hidden" id="signup" class="form-submit" value="??????"/>
		                                </div>
		                            </form>
                            	</c:otherwise>
                            </c:choose>
                            
                            <c:if test="${checkPwdCode!= 15 && !empty checkPwdCode}">
	                            <form method="POST" class="register-form" id="pwd-update" action="updatePwd.do">
	                                <h4>???????????? ??????</h4>
	                                <div class="form-group">
	                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
	                                    <input type="hidden" name="m_email" value="${loginUserInfo.m_email }">
	                                    <input type="password" name="m_pwd" id="pass" placeholder="??? ????????????"/>
	                                    <span class="error_next_box" id="passMsg" style="" aria-live="assertive"></span>
	                                </div>
	                                <div class="form-group">
	                                    <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
	                                    <input oninput="checkRePass()" type="password" name="re_pass" id="re_pass" placeholder="??? ??????????????????"/>
	                                    <span class="error_next_box" id="re_passMsg" style="" aria-live="assertive"></span>
	                                </div>
	                                <div class="form-group form-button">
	                                	<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
	                                    <input type="button" name="signup" id="pwd-up-button" class="form-submit" value="??????"/>
	                                </div>
	                            </form>
                            </c:if>
                        </div>
                        
                    </div>
                </div>
            </section>
        </div>
        <footer class="footer-color">
            <div class="footer-container">
                <!--Footer Top Area Start-->
                <div class="footer-top-area ptb-90 text-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 offset-lg-1 col-12">
                                <!--Footer Logo Start-->
                                <div class="footer-logo">
                                    <a href="/">
                                        <h3>H!Books</h3>
                                    </a>
                                </div>
                                <!--Footer Logo End-->
                                <!--Footer Nav Start-->
                                <div class="footer-nav">
                                    <nav>
                                        <ul>
                                            <li>
                                                <a href="#">Home</a>
                                            </li>
                                            <li>
                                                <a href="#">Shop</a>
                                            </li>
                                            <li>
                                                <a href="#">Policies</a>
                                            </li>
                                            <li>
                                                <a href="#">About Us</a>
                                            </li>
                                            <li>
                                                <a href="#">Contact</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <!--Footer Nav End-->
                                <!--Footer Social Icon Start-->
                                <div class="footer-social">
                                    <ul>
                                        <li>
                                            <a href="#">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fab fa-linkedin"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fas fa-rss"></i>
                                            </a>
                                        </li>

                                    </ul>
                                </div>
                                <!--Footer Social Icon End-->
                                <!--Footer Newsletter Start-->
                                <!-- <div class="footer-newsletter"> -->
                                    <!-- Newsletter Form -->
                                <!-- </div> -->
                                <!--Footer Newsletter End-->
                            </div>
                        </div>
                    </div>
                </div>

                <!--Footer Top Area End-->
                <!--Footer Bottom Area Start-->
                <div class="footer-bottom-area">
                    <div class="container text-center">
                        <p>&copy; Copyright Hi-Five All Rights Reserved</p>
                    </div>
                </div>
                <!--Footer Bottom Area End-->
            </div>
        </footer>
	</div>
	<script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="../assets/js/popper.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/isotope.pkgd.min.js"></script>
    <script src="../assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="../assets/js/jquery.counterup.min.js"></script>
    <script src="../assets/js/waypoints.min.js"></script>
    <script src="../assets/js/ajax-mail.js"></script>
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/plugins.js"></script>
    <script src="../assets/js/main.js"></script>
	<script src="../assets/js/service-my-info.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<input type="hidden" id="checkPwdCode" value="${checkPwdCode}">
	
	<script type="text/javascript">
		const swalWithBootstrapButtons = Swal.mixin({
	  	  customClass: {
	  	    confirmButton: 'btn btn-primary',
	  	    cancelButton: 'btn btn-default',
	  	  },
	  	  buttonsStyling: false
	 	});
	
		let checkPwdCode = $("#checkPwdCode").val();
		if(checkPwdCode == <%=MemberModeSet.UPDATE_PWD_SUC %>){
			swalWithBootstrapButtons.fire({
				text : '??????????????? ?????????????????????, ?????? ????????? ????????????',
				icon : 'success',
				confirmButtonText : 'OK'
			}).then((result) => {
				if(result.isConfirmed){
					location.href = "logout.do";
				}
			});
			/* alert("??????????????? ?????????????????????, ?????? ????????? ????????????");
			location.href = "logout.do"; */
		}else if(checkPwdCode == <%=MemberModeSet.UPDATE_ACCESS_FAIL %>){
			swalWithBootstrapButtons.fire({
				text : '??????????????? ???????????????, ?????? ??????????????????',
				icon : 'error'
			});
		}else if(checkPwdCode == <%=MemberModeSet.UPDATE_INFO_SUC%>){
			swalWithBootstrapButtons.fire({
				text : '??????????????? ?????????????????????',
				icon : 'success'
			});
		}
	</script>
		
</body>

</html>