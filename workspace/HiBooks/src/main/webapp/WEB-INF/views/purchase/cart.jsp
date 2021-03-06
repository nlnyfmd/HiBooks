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
                                            <a href="cart.do"><span> ????????????</span></a>
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
        <!-- breadcrumbs area start -->
        <!-- breadcrumbs area End -->
         <!--Shopping Cart Area Start-->
 
        <div class="Shopping-cart-area ptb-50">
            <div class="container" style="width:1000px;">
                <div class="row">
                    <div class="col-12">
                        <div class="pg___title">
                            <h3>??????</h3>
                        </div>
                        <br/>
                        <form action="#">
                            <div class="table-content table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="anadi-product-remove">??????</th>
                                            <th class="anadi-product-thumbnail">?????????</th>
                                            <th class="cart-product-name">??????</th>
                                            <th class="anadi-product-price">??????</th>
                                            <th class="anadi-product-quantity">??????</th>
                                            <th class="anadi-product-subtotal">??????</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var = "sum" value = "0" />
                                   <c:choose>
                                   <c:when test="${empty list}">
                                   <tr><td colspan="6">????????? ????????? ????????????</td></tr>
                                   </c:when>
                                   <c:when test="${!empty list}">
                                    <c:forEach items="${list}" var="cartVo" varStatus="status">
                                        <tr>
                                            <td class="anadi-product-remove">
                                                <a href="javascript:removeCart(<c:out value="${status.index}"/>)">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                            <td class="anadi-product-thumbnail">
                                                <a href="#">
                                                    <img src="${cartVo.book.b_img}" style="max-width:100px;" alt="">
                                                </a>
                                            </td>
                                            <td class="anadi-product-name">
                                                <a href="#">${cartVo.book.b_title}</a>
                                            </td>
                                            <td class="anadi-product-price">
                                                <span class="amount">${cartVo.book.b_price}???</span>
                                            </td>
                                            <td class="anadi-product-quantity">
                                                <input id="vol<c:out value="${status.index}"/>" value="${cartVo.vol}" type="number" name="vol" min="1" max="100">
                                                <br/><a class="button" onclick="a(<c:out value="${status.index}"/>);" style="padding:5px;margin-top:20px;">??????</a>
                                            </td>
                                            <td class="product-subtotal">
                                                <span class="amount">${cartVo.total}???</span>
                                            </td>
                		                  </tr>
            	                         <c:set var= "sum" value="${sum + cartVo.total}"/>
                                        </c:forEach>
                                        </c:when>
                                        </c:choose>
                                    </tbody>
                                </table>
                            </div>
                            <!-- <div class="row">
                                <div class="col-12">
                                    <div class="coupon-all">
                                        <div class="coupon">
                                            <input id="coupon_code" class="input-text" name="coupon_code" value="" placeholder="Coupon code" type="text">
                                            <input class="button" name="apply_coupon" value="Apply coupon" type="submit">
                                        </div>
                                        <div class="coupon2">
                                            <input class="button" name="update_cart" value="Update cart" type="submit">
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                            <div class="row">
                                <div class="col-md-5 ml-auto">
                                    <div class="cart-page-total">
                                        <h2>??? ????????????</h2>
                                        <ul>
                                            <li>??????
                                                <span><c:out value="${sum}???"/> </span>
                                            </li>
                                            <li>??????
                                                <span><c:out value="${sum}???"/> </span>
                                            </li>
                                        </ul>
                                        <a href="checkout.do">????????????</a>
                                    </div>
                                </div>
                            </div>
                        </form>
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
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <!-- javascript -->
    <script>
    const swalWithBootstrapButtons = Swal.mixin({
    	  customClass: {
    	    confirmButton: 'btn btn-primary',
    	    cancelButton: 'btn btn-default',
    	  },
    	  buttonsStyling: false
   	})
	function a(x){
		 var vol=document.getElementById("vol"+x).value;
		 swalWithBootstrapButtons.fire({
				showCancelButton : true,
				text : '????????? ?????????????????????????',
				icon : 'question',
				focusConfirm: false,
				confirmButtonText : '???',
				cancelButtonText : '?????????'
			}).then((result) => {
				if(result.isConfirmed){
					location.href = "change.do?index="+x+"&vol="+vol;
				}else{
					return false;
			}
		})
		/* location.href ="change.do?index="+x+"&vol="+vol; */
		 /* if(confirm("????????? ?????????????????????????")==true){
			 location.href ="change.do?index="+x+"&vol="+vol;
		 }else{
			 return false;
		 } */
	}
    function removeCart(x){
    	swalWithBootstrapButtons.fire({
			showCancelButton : true,
			text : '????????? ?????????????????????????',
			icon : 'question',
			focusConfirm: false,
			confirmButtonText : '???',
			cancelButtonText : '?????????'
		}).then((result) => {
			if(result.isConfirmed){
				location.href = "remove.do?index="+x;
			}else{
				return false;
			}
		});
    }
</script>
</body>

</html>