<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Hibooks</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
    
        <!-- all css here -->
        <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="../resources/assets/css/animate.css">
        <link rel="stylesheet" href="../resources/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../resources/assets/css/chosen.min.css">
        <link rel="stylesheet" href="../resources/assets/css/themify-icons.css">
        <link rel="stylesheet" href="../resources/assets/css/fontawesome-all.css">
        <link rel="stylesheet" href="../resources/assets/css/ionicons.min.css">
        <link rel="stylesheet" href="../resources/assets/css/material-design-iconic-font.css">
        <link rel="stylesheet" href="../resources/assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="../resources/assets/css/tippy.css">
        <link rel="stylesheet" href="../resources/assets/css/bundle.css">
        <link rel="stylesheet" href="../resources/assets/css/style.css">
        <link rel="stylesheet" href="../resources/assets/css/communitywritebundle.css">
        <link rel="stylesheet" href="../resources/assets/css/communitywritestyle.css">
        <link rel="stylesheet" href="../resources/assets/css/responsive.css">
         <link rel="stylesheet" href="../resources/assets/css/service-search.css">
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">  
        <script src="../resources/assets/js/vendor/modernizr-2.8.3.min.js"></script>
       	
       	   
	    <script src="../resources/assets/js/vendor/jquery-1.12.0.min.js"></script>
	    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
	    <script src="../resources/assets/js/service-search.js"></script>
    </head>

<body onload="input.writer.focus()">
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
                                            <li><a id="in" href="../boardc/list.do">????????????</a></li>
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
        
        <!-- Contact page content -->
        <div class="contact-page-area ">
            <!-- contact page map -->
            <div class="contact-page-map">

            </div>
            <!-- contact page map -->
            <!-- contact form area -->
            <div class="contact-form-area pt-30 pb-65">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-10">
                            <div class="contact-form-inner">
                                <h2>?????????</h2>
                                <form name = "input" method ="post" action ="write.do" enctype = "multipart/form-data">
                                    <!-- <div class="row">
                                        <div class="col">
                                            <input type="text" class="form-control" name="writer" placeholder="???????????? ?????? ????????????.*">
                                        </div>
                                    </div> -->
                                    <div class="row">
                                        <div class="col-6">
                                            <input type="text" class="form-control" name = "m_email" placeholder="???????????? ??????????????????.*" style="margin-bottom:10px; margin-left:20px;">
                                        </div>
                                       
                                        <div class="col-11">
                                            <input type="text" class="form-control" name = "cb_subject" placeholder="???????????? ??????????????????*" style="margin-bottom:10px; margin-left:20px;">
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col">
                                            <div class="container" style="margin-bottom:20px;">
                                                <textarea class="summernote" name = "cb_content"></textarea>                                      
                                            </div>
                                        </div>
                                    </div>
                                                                                                         
                                    <div class = "row">
                                    	<div class = "col-11" style="margin-left:20px;">
                                    		<input type ="file" name = "files">
                                    	</div>
                                    </div>
                                    <div class="contact-submit">
                                        <input type="submit" value="????????? ??????" class="wpcf7-form-control wpcf7-submit button" onclick="check()">
                                         
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-1"></div>
                     </div>
                </div>
            </div>
            <!-- contact form area end -->
        </div>
        <!-- Contact page content end -->
        <footer class="footer-color">
            <div class="footer-container">
                <!--Footer Top Area Start-->
                <div class="footer-top-area ptb-90 text-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 offset-lg-1 col-12">
                                <!--Footer Logo Start-->
                                <div class="footer-logo">
                                    <a href="index.html">
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
        <!-- modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span class="ion-android-close" aria-hidden="true"></span>
                        </button>
                        <div class="qwick-view-left">
                            <div class="quick-view-learg-img">
                                <div class="quick-view-tab-content tab-content">
                                    <div class="tab-pane active show fade" id="modal1" role="tabpanel">
                                        <img src="assets/img/quick-view/l1.jpg" alt="">
                                    </div>
                                    <div class="tab-pane fade" id="modal2" role="tabpanel">
                                        <img src="assets/img/quick-view/l2.jpg" alt="">
                                    </div>
                                    <div class="tab-pane fade" id="modal3" role="tabpanel">
                                        <img src="assets/img/quick-view/l3.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="quick-view-list nav" role="tablist">
                                <a class="active" href="#modal1" data-toggle="tab">
                                    <img src="assets/img/quick-view/s1.jpg" alt="">
                                </a>
                                <a href="#modal2" data-toggle="tab">
                                    <img src="assets/img/quick-view/s2.jpg" alt="">
                                </a>
                                <a href="#modal3" data-toggle="tab">
                                    <img src="assets/img/quick-view/s3.jpg" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="qwick-view-right">
                            <div class="qwick-view-content">
                                <h3>Handcrafted Supper Mug</h3>
                                <div class="price">
                                    <span class="new">$90.00</span>
                                    <span class="old">$120.00 </span>
                                </div>
                                <div class="rating-number">
                                    <div class="quick-view-rating">
                                        <i class="ion-ios-star red-star"></i>
                                        <i class="ion-ios-star red-star"></i>
                                        <i class="ion-ios-star red-star"></i>
                                        <i class="ion-ios-star red-star"></i>
                                        <i class="ion-ios-star red-star"></i>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore
                                    magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation .</p>
                                <div class="quick-view-select">
                                    <div class="select-option-part">
                                        <label>Size*</label>
                                        <select class="select">
                                            <option value="">- Please Select -</option>
                                            <option value="">900</option>
                                            <option value="">700</option>
                                        </select>
                                    </div>
                                    <div class="select-option-part">
                                        <label>Color*</label>
                                        <select class="select">
                                            <option value="">- Please Select -</option>
                                            <option value="">orange</option>
                                            <option value="">pink</option>
                                            <option value="">yellow</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="quickview-plus-minus">
                                    <div class="cart-plus-minus">
                                        <input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
                                    </div>
                                    <div class="quickview-btn-cart">
                                        <a class="btn-style cr-btn" href="#">
                                            <span>add to cart</span>
                                        </a>
                                    </div>
                                    <div class="quickview-btn-wishlist">
                                        <a class="btn-hover cr-btn" href="#">
                                            <span>
                                                <i class="ion-ios-heart-outline"></i>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- all js here -->
    <script src="../resources/assets/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="../resources/assets/js/popper.js"></script>
    <script src="../resources/assets/js/bootstrap.min.js"></script>
    <script src="../resources/assets/js/isotope.pkgd.min.js"></script>
    <script src="../resources/assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="../resources/assets/js/jquery.counterup.min.js"></script>
    <script src="../resources/assets/js/waypoints.min.js"></script>
    <script src="../resources/assets/js/ajax-mail.js"></script>
    <script src="../resources/assets/js/owl.carousel.min.js"></script>
    <script src="../resources/assets/js/plugins.js"></script>
    <script src="../resources/assets/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <!-- <script language="javascript">
	   		function check()
	   		{
	       		for(var i=0; i<document.input.elements.length; i++)
		   		{
		    	if(document.input.elements[i].value == "")
					{
					alert("?????? ?????? ?????? ????????? ?????????. ");
				 	return false;
					}
		    	}
		   			document.input.submit();
       		}
	</script> -->
    <script>
        $('.summernote').summernote({
              // ????????? ??????
              height: 150,
              // ????????? ?????? ??????
              lang: "ko-KR",
              // ???????????? ?????? ?????? (input?????? autofocus?????? ??????????????? ?????????.)
              focus : true,
              toolbar: [
                // ?????? ??????
                ['fontname', ['fontname']],
                // ?????? ?????? ??????
                ['fontsize', ['fontsize']],
                // ??????, ????????????, ??????,?????? ???, ???????????????
                ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                // ?????????
                ['color', ['forecolor','color']],
                // ????????????
                ['table', ['table']],
                // ????????? ??????, ???????????????, ????????????
                ['para', ['ul', 'ol', 'paragraph']],
                // ?????????
                ['height', ['height']],
                // ????????????, ???????????????, ???????????????
                ['insert',['picture','link','video']],
                // ????????????, ??????????????????, ?????????
                ['view', ['codeview','fullscreen', 'help']]
                ],
                // ????????? ??????
                fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','?????? ??????','??????','?????????','??????','?????????','?????????'],
                // ????????? ???????????????
                fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
        });

        var setting = {
            height : 300,
            minHeight : null,
            maxHeight : null,
            focus : true,
            lang : 'ko-KR',
            toolbar : toolbar,
            //?????? ??????
            callbacks : { 
            	onImageUpload : function(files, editor, welEditable) {
            // ?????? ?????????(?????????????????? ?????? ????????? ??????)
            for (var i = files.length - 1; i >= 0; i--) {
            uploadSummernoteImageFile(files[i],
            this);
            		}
            	}
            }
         };
        $('#summernote').summernote(setting);
                
        function uploadSummernoteImageFile(file, el) {
			data = new FormData();
			data.append("file", file);
			$.ajax({
				data : data,
				type : "POST",
				url : "uploadSummernoteImageFile",
				contentType : false,
				enctype : 'multipart/form-data',
				processData : false,
				success : function(data) {
					$(el).summernote('editor.insertImage', data.url);
				}
			});
		}
    </script>
    
    
</body>

</html>