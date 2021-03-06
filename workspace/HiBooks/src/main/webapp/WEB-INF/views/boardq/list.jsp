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
        <div class="Shopping-cart-area ptb-50">
            <div class="container" style="max-width:1000px;">
                <div class="row">
                    <div class="col-12">
                        <div class="pg___title">
                            <h3>Q&A</h3>
                        </div>
                        <br/>
                        <div class="table-content table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="anadi-product-remove" style="width:5%;">?????????</th>
                                        <th class="anadi-product-price" style="width:10%;">?????????</th>
                                        <th class="anadi-product-thumbnail" style="width:55%;">?????????</th>
                                        <th class="cart-product-name" style="width:10%;">?????????</th>
                                        <th class="anadi-product-quantity" style="width:15%;">?????????</th>
                                        <th class="anadi-product-subtotal"style="width:5%;">?????????</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  	<c:if test="${empty listResult}">
										<tr align="center" noshade>
										   <td colspan="6">???????????? ????????? ??????</td>
										</tr>
									</c:if>
                                   	<c:forEach items="${listResult.list}" var="boardq">
                                   	<tr>
                                       <td class="anadi-product-remove">
                                       		${boardq.qb_seq}
                                       </td>
                                       
                                           <c:choose>
											<c:when test="${boardq.qb_cat == 0}">
											<td style="padding-right:0px;text-align:center;color:#888;">?????? ??????</td>
											</c:when>
											<c:when test="${boardq.qb_cat == 1}">
											<td style="padding-right:0px;text-align:center;color:#888;">?????? ??????</td>
											</c:when>
											<c:when test="${boardq.qb_cat == 2}">
											<td style="padding-right:0px;text-align:center;color:#888;">?????? ??????</td>
											</c:when>
											<c:when test="${boardq.qb_cat == 3}">
											<td style="padding-right:0px;text-align:center;color:#888;">??????</td>
											</c:when>
											</c:choose>
                                       
                                       <td class="anadi-product-name" style="text-align:left">
                                           <c:forEach begin="1" end="${boardq.qb_lev}">
							                   	&nbsp;&nbsp;&nbsp;
											</c:forEach>
											<a href="content.do?qb_seq=${boardq.qb_seq}" >
												<c:if test="${boardq.qb_lev > 0}"><img class="reple" src="../img/icon_bbs_answer.gif">Re:</c:if>
												${boardq.qb_subject}
											</a>
                                       </td>
                                       <td class="anadi-product-price">
                                           ${boardq.m_email}
                                       </td>
                                       <td class="anadi-product-quantity">
                                           ${boardq.qb_rdate}
                                       </td>
                                       <td class="product-subtotal">
                                           ${boardq.qb_count}
                                       </td>
                                   </tr>
                                   </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="pagination__item pagination__item--page" style="margin: 25px 10px 35px 10px;text-align: -webkit-center;">
	                       <select id="psId" name="ps" onchange="f(this)">
						    	<c:choose>
						    		<c:when test="${listResult.ps == 10}">
						    		   <option value="10" selected>10??? ??????</option>
								       <option value="15">15??? ??????</option>
								       <option value="20">20??? ??????</option>
						    		</c:when>
						    		<c:when test="${listResult.ps == 15}">
						    		   <option value="10">10??? ??????</option>
								       <option value="15" selected>15??? ??????</option>
								       <option value="20">20??? ??????</option>
						    		</c:when>
						    		<c:when test="${listResult.ps == 20}">
						    		   <option value="10">10??? ??????</option>
								       <option value="15">15??? ??????</option>
								       <option value="20" selected>20??? ??????</option>
						    		</c:when>
						    	</c:choose>
						    </select>
	                       <c:forEach begin="1" end="${listResult.totalPageCount}" var="i">
	                        <a href="list.do?cp=${i}">
	                        <c:choose>
							<c:when test="${i==listResult.cp}">
	                        <strong>${i}</strong>
							</c:when>
							<c:otherwise>
					        	${i}
					        </c:otherwise>
					        </c:choose>
					        </a>
					        </c:forEach>
	                    	<a class="btn btn-default" href="write.do" style="position: absolute;right: 0;">
	                    		<button type="button" class="button button--list">?????????</button>
	                    	</a>
	                    </div>
	                    <div class="container" style="padding-top:10px;padding-bottom:30px;"> 
						    
						    <br/>
						    <script language="javascript">
						       function f(select){
						           //var el = document.getElementById("psId");
						           var ps = select.value;
						           //alert("ps : " + ps);
						           location.href="list.do?ps="+ps;
						       }
						    </script>
						  </div>
                    </div>
                </div>
            </div>
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
