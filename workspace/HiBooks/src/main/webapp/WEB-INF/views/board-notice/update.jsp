<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="bit.hibooks.setting.MemberModeSet"%>
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
    <!-- <link rel="stylesheet" href="../assets/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    <link rel="stylesheet" href="../assets/css/service-search.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
    <link rel="stylesheet" href="../assets/summernote/summernote-lite.css"/>
    <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
                                        		<a href="member/login.do"><span>?????????</span></a>
                                        	</sec:authorize> 
                							<sec:authorize access="isAuthenticated()">
                								<form id="log-out" action = "member/logout.do" method = 'post'>
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
                                            <a href="purchase/cart.do"><span> ????????????</span></a>
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
            <div class="header-topbar header-topbar-style-1">
                <div class="container-fluid">
                    <div class="row">
                        
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <div class="search__sidbar">
                                <div class="input_form">
                                    <form name="searchinput" method="post" action="product/search.do">
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
                                                <li class="active"><a href="book/shop.do">???</a>
                                                    <ul>
                                                        <li><a href="book/shop.do?cate=100">??????</a></li>
                                                        <li><a href="book/shop.do?cate=200">??????/??????</a></li>
                                                        <li><a href="book/shop.do?cate=300">??????/??????/??????</a></li>
                                                        <li><a href="book/shop.do?cate=400">????????????</a></li>
                                                        <li><a href="book/shop.do?cate=500">?????????/???</a></li>
                                                        
                                                    </ul>
                                                </li>
												
                                                <li><a id="in" href="">?????????</a></li>
												
                                                <li><a id="in" href="">??????</a></li>
												
                                                <li><a id="in" href="">????????????</a></li>

                                                <li class="active"><a href="">??????/??????</a>
                                                    <ul>
                                                        <li><a href="">??????</a></li>
                                                        <li><a href="boardq/list.do">??????</a></li>
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
											<li class="active"><a href="book/shop.do">??? <i class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="book/shop.do?cate=100">??????</a></li>
													<li><a href="book/shop.do?cate=200">??????/??????</a></li>
													<li><a href="book/shop.do?cate=300">??????/??????/??????</a></li>
													<li><a href="book/shop.do?cate=400">????????????</a></li>
													<li><a href="book/shop.do?cate=500">?????????/???</a></li>
													
												</ul>
											</li>
											
											<li><a href="">????????? </a></li>
											
											<li><a href="">??????</a></li>
											
											<li><a href="">????????????</a></li>
											
											<li><a href="">??????/?????? <i class="ion-ios-arrow-down"></i></a>
												<ul>
													<li><a href="portfolio.html"> ??????</a></li>
													<li><a href="boardq/list.do"> ??????</a></li>
                                                    <li><a href="service.html"> ....</a></li>
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
        <div class="contact-form-area pt-100 pb-65">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">
                        <div class="contact-form-inner">
                            <form name="input" method="post" action ="update.do" enctype="multipart/form-data">
                                &nbsp;<h3>?????? ??????</h3>
                                <select name="bn_topic" >
								    <option value="">?????????</option>
								    <option value="?????????" <c:if test="${ncr.boardN.bn_topic == '?????????'}">selected</c:if>>?????????</option>
								    <option value="???????????????" <c:if test="${ncr.boardN.bn_topic == '???????????????'}">selected</c:if>>???????????????</option>
								    <option value="?????????" <c:if test="${ncr.boardN.bn_topic == '?????????'}">selected</c:if>>?????????</option>
								    <option value="??????" <c:if test="${ncr.boardN.bn_topic == '??????'}">selected</c:if>>??????</option>
								    
							    </select>
							    <br/><br/><br/>
							    &nbsp;<label>??????</label>
							    	<input type="hidden" name="bn_seq" value="${ncr.boardN.bn_seq}">
                                   <input type="text" name="bn_subject" class="form-control" value="${ncr.boardN.bn_subject }">
                                   <br/>
                                   <input type="text" class="form-control" name="bn_writer" value="?????????" value="${ncr.boardN.bn_writer }">
                                   <br/>
								 <textarea id="summernote" class="note-editable" contenteditable="true" role="textbox" 
								 aria-multiline="true" spellcheck="true" name="bn_content">${ncr.boardN.bn_content}</textarea>
								   <br/>
								<input id="fs" type ="file" name="fs" multiple>
								 <div class="preview">
								 	<p></p>
								</div>
                                <div class="contact-submit">
                                    <input type="submit" value="??? ??????" class="wpcf7-form-control wpcf7-submit button">
                                </div>
                          	</form>
                        </div>
                    </div>
                    <div class="col-lg-1"></div>
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
        <!-- modal -->
        
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
    <script src="../assets/summernote/summernote-lite.js"></script>
    <script src="../assets/summernote/lang/summernote-ko-KR.js"></script>
	
	
    <script type="text/javascript" >
	   	$(document).ready(function() {
			showInitFile();
	   		//?????? ?????? ??????
			$('#summernote').summernote({
				  height: 300,                 // ????????? ??????
				  minHeight: null,             // ?????? ??????
				  maxHeight: null,             // ?????? ??????
				  focus: true,                  // ????????? ????????? ???????????? ????????? ??????
				  lang: "ko-KR",					// ?????? ??????
				  placeholder: '?????? 2048????????? ??? ??? ????????????',
				  callbacks: {
			  			onImageUpload : function(files, editor, welEditable){
			  				for (var i = files.length - 1; i >= 0; i--) {
			  		            uploadSummernoteImageFile(files[i], editor, welEditable);
			  				}
			  			}
			  		}
			});
		});
		function uploadSummernoteImageFile(file, editor, welEditable ) {
			data = new FormData();
			data.append("file", file);
			$.ajax({
				data : data,
				type : "POST",
				url : "uploadImgTemp.do",
				contentType : false,
				enctype : 'multipart/form-data',
				processData : false,
				success : function(result){
					result = JSON.parse(result);
					$("#summernote").summernote('insertImage', result.url);
				}
			});
		}
		var fs = document.querySelector('#fs');
		var preview = document.querySelector('.preview');
		fs.addEventListener('change', showTextFile);
		function showTextFile() {
			while(preview.hasChildNodes()){
				preview.removeChild(preview.firstChild);
			}
			var sF = fs.files;
			var list = document.createElement('ul');
			preview.appendChild(list);
			for(var i=0; i< sF.length; i++) {
				let file = sF[i];
				var listItem = document.createElement('li');
				var summary = document.createElement('div');
				summary.textContent = '????????? : '+ file.name + ' , ?????? ?????? : ' + returnFileSize(file.size);
				listItem.appendChild(summary);
				list.appendChild(listItem);
			}
		}
		
		function returnFileSize(number) {
			if(number < 1024) {
				return number + 'bytes';
			} else if(number > 1024 && number < 1048576) {
				return (number/1024).toFixed(1) + 'KB';
			} else if(number > 1048576) {
				return (number/1048576).toFixed(1) + 'MB';
			}
		}
		var ofL = new Array();
		<c:forEach items="${ncr.fileList}" var ="file">
			var obj = new Object();
			obj.fileName = "${file.nf_ofname}";
			obj.fileSize = "${file.nf_fsize}";
			ofL.push(obj);
		</c:forEach>
		
		function showInitFile() {
			while(preview.hasChildNodes()){
				preview.removeChild(preview.firstChild);
			}
			var list = document.createElement('ul');
			preview.appendChild(list);
			for(var i=0; i< ofL.length; i++) {
				let fileName = ofL[i].fileName;
				let fileSize = ofL[i].fileSize;
				var listItem = document.createElement('li');
				var summary = document.createElement('div');
				summary.textContent = '????????? : '+ fileName + ' , ?????? ?????? : ' + returnFileSize(fileSize);
				listItem.appendChild(summary);
				list.appendChild(listItem);
			}
		}
	</script>
	
</body>

</html>
