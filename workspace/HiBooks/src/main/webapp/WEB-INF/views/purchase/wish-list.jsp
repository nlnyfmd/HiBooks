<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="../assets/css/jquery-ui.css">
    <link rel="stylesheet" href="../assets/css/material-design-iconic-font.css">
    <link rel="stylesheet" href="../assets/css/meanmenu.min.css">
    <link rel="stylesheet" href="../assets/css/tippy.css">
    <link rel="stylesheet" href="../assets/css/bundle.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/service-wish-list.css">
    <link rel="stylesheet" href="../assets/css/responsive.css">
    <link rel="stylesheet" href="../assets/css/service-search.css">
    <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
    <script src="../assets/js/service-search.js"></script>
    <script>
		
	</script>
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
	                                    <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
	                                    <input type="text" class="input_text" id="keyword" name="keyword" placeholder="??????, ??????, ????????? ??????">
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
        <!-- WishList Area Start -->
        <sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal.username" var="loginUser"/>
		</sec:authorize>
        <div class="Shopping-cart-area ptb-30">
            <div class="container" style="max-width:1000px;">
                <div class="row">
                    <div class="col-12">
                        <div class="pg___title">
                            <h3>???????????????</h3>
                        </div>
                       	    <div class="table-content table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="anadi-product-remove">??????</th>
                                            <th class="anadi-product-thumbnail">?????????</th>
                                            <th class="cart-product-name">??????</th>
                                            <th class="anadi-product-price">??????</th>
                                            <th class="anadi-product-quantity">??????</th>
                                            <th class="anadi-product-quantity">???????????? ??????</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:choose>
                                    <c:when test="${empty bookListInWish}">
                                    <tr><td colspan="6"> ?????????????????? ????????? ???????????? </td></tr>
                                    </c:when>
                                    <c:when test="${!empty bookListInWish}">
                                    <c:forEach items="${bookListInWish}" var="book" varStatus="i">
                                         
                                         <tr>
                                            <td class="anadi-product-remove">
                                                <a href="removeItem.do?b_itemId=${book.b_itemId}&m_email=${loginUser}">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                            <td class="anadi-product-thumbnail">
                                                <a href="../book/content.do?itemId=${book.b_itemId}">
                                                    <img src="${book.b_img}" style="max-width:100px;" alt="">
                                                </a>
                                            </td>
                                            <td class="anadi-product-name">
                                                <a href="../book/content.do?itemId=${book.b_itemId}">${book.b_title}</a>
                                            </td>
                                            <td class="anadi-product-price">
                                                <span class="amount">${book.b_price}???</span>
                                            </td>
                                            
	                                            <td class="anadi-product-quantity">
	                                                <div class="cart-plus-minus">
		                                    			<input type="text" value="1" id="vol${i.index}" name="vol" class="cart-plus-minus-box" >
		                                    			
		                                			</div>
	                                            </td>
	                                            <td class="product-subtotal">
	                                                <div class="quickview-btn-cart">
	                                                	<input id="itemId${i.index}" type="hidden" value="${book.b_itemId}">
	                                                	<unput type="button" id="cart-plus${i.index}" onclick="javascript:addToCart(${i.index})" type="button"><i class="zmdi zmdi-shopping-cart-plus"></i></button>
					                                </div>
	                                            </td>
									                                   
                                        	</tr>
                                        	 
                                    </c:forEach>
                                    </c:when>
                                    </c:choose>
                                    </tbody>
                                </table>
                            </div>
                   
                        
                    </div>
                </div>
            </div>
        </div>
        <!--Shopping Cart Area End-->

        <!-- footer -->
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
    <script src="../assets/js/service-search.js"></script>
    <!-- javascript -->
    <script>
    	function addToCart(i){
    		let vol = document.getElementById("vol"+i).value;
    		
    		let itemId = document.getElementById("itemId"+i).value;
    		if(confirm("????????? ????????? ??????????????????????")==true){
    			location.href = "moveCart.do?vol="+vol+"&itemId="+itemId;
    		}else{
    			return false;
    		}
    	}
    </script>
</body>

</html>