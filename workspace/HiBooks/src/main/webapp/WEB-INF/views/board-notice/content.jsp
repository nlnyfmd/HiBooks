<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bit.hibooks.setting.MemberModeSet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<html class="no-js" lang="zxx">

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
    <link rel="stylesheet" href="../assets/css/responsive.css">
    <link rel="stylesheet" href="../assets/css/sub.css">
    <link rel="stylesheet" href="../assets/css/service-board-notice.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <link rel="stylesheet" href="../assets/css/service-search.css">
    <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
    <script src="../assets/js/service-search.js"></script>
    
</head>
<body>
    <div class="wrapper">
        <!-- header start -->
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
                                        		<a href="../member/login.do"><span>?????????</span></a>
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
                                        		<a href="../member/join.do"><span> ????????????</span></a>
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
            <div class="header-topbar header-topbar-style-1">
                <div class="container-fluid">
                    <div class="row">
                        
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <div class="search__sidbar">
                                <div class="input_form">
                                    <form name="searchinput" method="post" action="../product/search.do">
	                                    <input type="text" id="keyword" class="input_text" name="keyword" placeholder="??????, ??????, ????????? ??????">
	                                    <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
	                                    <button id="searchinput" type="button" class="button">
	                                        <i class="fa fa-search fa-lg"></i>
	                                    </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-3"></div>
                        
                    </div>
                </div>
            </div>
            <div class="header_area hdr_1">
                <div class="container-fluid">
                    <div class="row">
                        
                        <div class="col-md-8 col-xs-12">
                            <div class="main_menu_area">
                                <div class="main-menu">
									<nav>
                                            <ul id="main-custom">
                                                <li class="active"><a href="../book/shop.do">???</a>
                                                    <ul>
                                                        <li><a href="../book/shop.do?cate=100">??????</a></li>
                                                        <li><a href="../book/shop.do?cate=200">??????/??????</a></li>
                                                        <li><a href="../book/shop.do?cate=300">??????/??????/??????</a></li>
                                                        <li><a href="../book/shop.do?cate=400">????????????</a></li>
                                                        <li><a href="../book/shop.do?cate=500">?????????/???</a></li>
                                                        
                                                    </ul>
                                                </li>
                                                <li><a id="in" href="../recommend/list.do">??????</a></li>
												
                                                <li><a id="in" href="">????????????</a></li>

                                                <li class="active"><a href="">??????/??????</a>
                                                    <ul>
                                                        <li><a href="../boardNotice/list.do">??????</a></li>
                                                        <li><a href="../boardq/list.do">??????</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-12">
                        </div>
                        <div class="col-md-2 col-xs-12">
                        </div>
                        <div class="mobile-menu-area ">
                            <div class="mobile-menu">
                                    <nav id="mobile-menu-active">
                                        <ul class="menu-overflow">
											<li class="active"><a href="../book/shop.do">??? <i class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="../book/shop.do?cate=100">??????</a></li>
													<li><a href="../book/shop.do?cate=200">??????/??????</a></li>
													<li><a href="../book/shop.do?cate=300">??????/??????/??????</a></li>
													<li><a href="../book/shop.do?cate=400">????????????</a></li>
													<li><a href="../book/shop.do?cate=500">?????????/???</a></li>
													
												</ul>
											</li>
											<li><a href="../recommend/list.do">??????</a></li>
											
											<li><a href="">????????????</a></li>
											
											<li><a href="">??????/?????? <i class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="../boardNotice/list.do"> ??????</a></li>
													<li><a href="../boardq/list.do"> ??????</a></li>
												</ul>
											</li>
											
											
                                        </ul>
                                    </nav>  
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </header>
        <!-- header end -->
       <!-- contents -->
    <div class="contents" id="content">
        <!-- sub -->
        <section class="sub sub--notice" style="padding-top:0px;">
            <!-- section__03 -->
            <div class="section section__03">
                <div class="title__wrap">
                    <h3 data-title="????????????" style="padding-top:20px;padding-bottom:20px;"><span>????????????</span></h3>
                </div>
                <div class="board">
                    <div class="board__head">
                        <h3 class="ui header">[${ncr.boardN.bn_topic}]<wbr>${ncr.boardN.bn_subject} </h3>
                        <div class="info">
                            <h4>
                            <span class="info__item info__item--date">${ncr.boardN.bn_rdate}</span>&nbsp;&nbsp;
                            <span class="info__item info__item--author">${ncr.boardN.bn_writer}</span>
                            </h4>
                            <br/>
                            <c:forEach items="${ncr.fileList}" var="bNFile">
                            	<a class="info__item info__item--link" href="download.do?nf_seq=${bNFile.nf_seq}">
                            		<i class="zmdi zmdi-download zmdi-hc-2x"></i>&nbsp;${bNFile.nf_ofname}&nbsp;&nbsp;${bNFile.nf_fsize}KB
                            	</a>
                        	</c:forEach>
                        </div>
                    </div>
                    <div class="board__body">
                    <br>
                        ${ncr.boardN.bn_content}
                    </div>
                    <div class="board__footer">
                        <a href="list.do">
                        	<button type="button" class="button button--list">??????</button>
                        </a>
                        <sec:authorize access="hasRole('ROLE_ADMIN')">
	                        <a href="update.do?bn_seq=${ncr.boardN.bn_seq}">
	                        	<button type="button" class="button button--list">??????</button>
	                        </a>
                       		<a href="delete.do?bn_seq=${ncr.boardN.bn_seq}">
                       			<button type="button" class="button button--list">??????</button>
                       		</a>
                       	</sec:authorize>
                    </div>
                </div>
            </div>
            <!-- //section__03 -->
        </section>
        <!-- //sub -->
    </div>
    <!-- //contents -->
        
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
    

    <!-- all js here -->
    <script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
    <script src="../assets/js/popper.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/isotope.pkgd.min.js"></script>
    <script src="../assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="../assets/js/jquery.counterup.min.js"></script>
    <script src="../assets/js/waypoints.min.js"></script>
    <script src="../assets/js/tippy.min.js"></script>
    <script src="../assets/js/ajax-mail.js"></script>
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/plugins.js"></script>
    <script src="../assets/js/main.js"></script>
	

</body>

</html>
