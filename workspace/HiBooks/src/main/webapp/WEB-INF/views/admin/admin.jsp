<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bit.hibooks.setting.MemberModeSet"%>
<%@ page import="bit.hibooks.controller.AdminController" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link rel="stylesheet" href="../assets/css/responsive.css">
    <link rel="stylesheet" href="../assets/css/semantic.css">
    <link rel="stylesheet" href="../assets/css/dropdown.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />  
    <link rel="stylesheet" href="../assets/summernote/summernote-lite.css">
    <link rel="stylesheet" href="../assets/summernote/summernote-lite.min.css"> 
 
    <script src="../assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="../assets/js/vendor/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="../assets/js/semantic.js"></script> 
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	 <script src="../assets/js/service-admin.js"></script> 
	  <script src="../assets/js/dropdown.js"></script>
	 
	<script>
	$(document).ready(function(){
		ajaxData();
		ajaxDataCate2();
	});
	
	</script>
</head>
<body>
	
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
                                                            <a href="">??? ??????</a>
                                                        </li>
                                                        <li class="switcher-menu-item">
                                                            <a href="">???????????????</a>
                                                        </li>
                                                        <li class="switcher-menu-item">
                                                            <a href="">????????????</a>
                                                        </li>
                                                        <li class="switcher-menu-item">
                                                            <a href="">...</a>
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
	<script>
		$(function(){ 
			
			$("ul.dashboard-list > li > a").on("shown.bs.tab", function(e) {
				  var id = $(e.target).attr("href").substr(1);
				  window.location.hash = id;
				});
			
			var hash = window.location.hash;
			$('#admintab a[href="' + hash + '"]').tab('show');
			/*  $("button[name='add']").on("click", function () {
					alert("?????????");
				  $('#target').submit(); 
					 $('.nav flex-column dashboard-list').find('li').eq(2).addClass('active').siblings().removeClass(); 
				     $('.tab-content dashboard-content').find('#recommend').addClass('active in').siblings().removeClass('active in');
			     });  */
			 });			
		</script>
		
		<div class="my-account white-bg ptb-100">
            <div class="container">
                <div class="account-dashboard">
                    <div class="row">
                        <div class="col-md-12 col-lg-2">
                            <!-- Nav tabs -->
                            <ul class="nav flex-column dashboard-list" role="tablist" id="admintab">
                                <li>
                                    <a class="nav-link active" data-toggle="tab" href="#dashboard">?????????</a>
                                </li>
                                <li>
                                    <a class="nav-link" data-toggle="tab" href="#recommend">??????????????????</a>
                                </li>
                                <li>
                                    <a class="nav-link" data-toggle="tab" href="#address">?????? ????????????</a>
                                </li>
                                <li>
                                    <a class="nav-link" data-toggle="tab" href="#account-details">???????????? ??????</a>
                                </li>
                                <li>
                                    <a class="nav-link" href="login-register.html">????????????</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-12 col-lg-10">
                            <!-- Tab panes -->
                            <div class="tab-content dashboard-content">
                                <div id="dashboard" class="tab-pane active in">
                              
							        <h1>Google Chart</h1>
							        &nbsp;&nbsp;
							
								    <br/><br/>
									<div class="row">
										<div id="columnchart" class="col-12"></div>
										<div id="cate2-0" class="col-6"></div>
										<div id="cate2-1" class="col-6"></div>
										<div id="cate2-2" class="col-6"></div>
										<div id="cate2-3" class="col-6"></div>
										<div id="cate2-4" class="col-6"></div>
									</div>
								
                                </div>
                           
                             
                                <div id="recommend" class="tab-pane fade">
                                    <h4>??????????????????</h4>
                                    <!-- ?????? -->
                                    <form method="post" action="recomsearch.do#recommend">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" name="keyword" placeholder="???????????? ??????????????????">
                                                    <span class="input-group-btn">
                                                    <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
                                                      <button id="select-keyword" name="add" class="btn btn-default" >??????</button>
                                                    </span>
                                                </div>
                                            </div>
                                             <div class="col-md-2">
                                                
                                                <h6>??????</h6>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="????????????">
                                                    <label aria-label="k-novel">????????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="????????????">
                                                    <label aria-label="k-novel">????????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????? ??????">
                                                    <label aria-label="k-novel">?????? ??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????? ??????">
                                                    <label aria-label="k-novel">?????? ??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="????????? ??????">
                                                    <label aria-label="k-novel">????????? ??????</label><br>
                                                </div>
												 <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="????????? ???">
                                                    <label aria-label="k-novel">?????? ??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="????????? ??????">
                                                    <label aria-label="k-novel">????????? ??????</label><br>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <h6>??????</h6>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????? ?????? ??????">
                                                    <label aria-label="k-novel">?????? ?????? ??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????/????????????/?????????">
                                                    <label aria-label="k-novel">??????/????????????/?????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="SF ??????">
                                                    <label aria-label="k-novel">SF ??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????? ????????? ??????">
                                                    <label aria-label="k-novel">?????? ????????? ??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????? ????????? ??????">
                                                    <label aria-label="k-novel">?????? ????????? ??????</label><br>
                                                </div>
												<div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????? ????????????">
                                                    <label aria-label="k-novel">?????? ????????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????? ????????????">
                                                    <label aria-label="k-novel">?????? ????????????</label><br>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <h6>??????/??????</h6>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="????????????">
                                                    <label aria-label="k-novel">????????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="????????????">
                                                    <label aria-label="k-novel">????????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????????/?????????">
                                                    <label aria-label="k-novel">?????????/?????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????????/??????/?????????">
                                                    <label aria-label="k-novel">?????????/??????/?????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="CEO/?????????">
                                                    <label aria-label="k-novel">CEO/?????????</label><br>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <h6>??????/??????/??????</h6>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????">
                                                    <label aria-label="k-novel">??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????/??????">
                                                    <label aria-label="k-novel">??????/??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????/??????">
                                                    <label aria-label="k-novel">??????/??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????">
                                                    <label aria-label="k-novel">??????</label><br>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <h6>????????????</h6>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????/????????????">
                                                    <label aria-label="k-novel">??????/????????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????/??????/?????????">
                                                    <label aria-label="k-novel">??????/??????/?????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????/??????/??????">
                                                    <label aria-label="k-novel">??????/??????/??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????/??????">
                                                    <label aria-label="k-novel">??????/??????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="??????">
                                                    <label aria-label="k-novel">??????</label><br>
                                                </div>
												  <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="????????????">
                                                    <label aria-label="k-novel">????????????</label><br>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <h6>?????????/???</h6>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="?????????">
                                                    <label aria-label="k-novel">?????????</label><br>
                                                </div>
                                                <div class="input-group cate" >
                                                    <input class="cate-cbox" type="checkbox" aria-label="k-novel" name="cat" value="???">
                                                    <label aria-label="k-novel">???</label><br>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <p style=""><c:forEach items="${sessionScope.recommendVo.cat}" var="cat">'${cat}'&nbsp;</c:forEach>
                                   ??????????????? '${sessionScope.recommendVo.keyword}' ???????????? ????????? ??????????????? : ${fn:length(recomList)} ?????? ???</p>                                    
                                   <div class="table-responsive" style="height:800px;">
                                        
                                        <!-- ????????? -->
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th style="width:10%">?????????</th>
                                                    <th style="width:20%">??????</th>
                                                    <th style="width:60%">?????????</th>
                                                    <th style="width:10%">??????</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                             <c:forEach items="${recomList}" var="book" varStatus="status">
 												<tr>
                                                    <td><img style="display:block;width:100%;" src="${book.b_img}"></td>
                                                    <td> (${status.count})&nbsp;${book.b_title}</td>
                                                   <c:choose>
                                                    <c:when test="${fn:length(book.b_desc) gt 200}">
                                                    <td><c:out value="${fn:substring(book.b_desc, 0, 200)}"></c:out>...</td>
                                                    </c:when><c:otherwise>
                                                     <td><c:out value="${book.b_desc}"></c:out></td>
       												</c:otherwise>
													</c:choose>
                                                    <td>
                                                        <input type="button" class="selectRecom"id="select${status.count}" name="${book.b_seq}" value="??????">
                                                    </td>
                                                </tr>
												  </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                    <!-- ????????? ??? -->
                                    <form id="formRecom" method="post" action="sendrecom.do" >
                                           <div class="col-lg-12">
                                                <div class="input-group">
                                                  <input type="text" id="re_title" name="re_title" class="form-control" aria-label="...">
                                                  <div class="input-group-btn">
                                                     <select id="re_loc" name="re_loc" >
													    <option value="0">??????</option>
													    <option value="1">1</option>
													    <option value="2">2</option>
													    <option value="3">3</option>
													    <option value="4">4</option>
													    <option value="5">5</option>
													    </select>
                                                   </div>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="row" style="overflow-y:scroll;max-height:400px;">
                                        <div class="container-fluid" id="Recommend-ajax" style="display:flex;flex-wrap:wrap;">
                                        <c:if test="${!empty recomSession}">
                                        <c:forEach items="${recomSession}" var="book" varStatus="status">
                                           <div class="col-lg-3 col-md-6 col-3" id="recom">
                                                <div class="product-wrapper mb-60">
                                                    <div class="product-img">
                                               			<input type="hidden"  name="re_seq${status.count}" value="${book.b_seq}">
                                                            <img alt="" src="${book.b_img}">
                                                    <div class="product-content text-center">
                                                        <h4>
                                                            <a href="product-details.html">${book.b_title}</a>
                                                        </h4>
                                                        <div class="product-price-2">
                                                            <div class="price-box">
                                                                &ensp;<input type="button" name="recomm" id="${book.b_seq}" class="delete" value="??????" style="width: 50px;height: 30px;padding-left: 5px;">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> 
                                        </div>
                                        </c:forEach>
                                        </c:if>
                                        </div> 
                                        </div> 
                                        <div class="btn-group-lg" role="group" aria-label="...">
                                        <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
                                            <input type="button" value="??????" style="width:50px;" onclick="recomSubmit()">
                                        </div> 
                                </div>
                                <div id="address" class="tab-pane">
                                <div class="container">
								  <div class="row">
								    <div class="col-xs-12">
								    <h3 style="width:700px;">??? ?????? ??????</h3>
								   <select name="gender" >
									  <option value="novel">??????</option>
									  <option value="economy">??????</option>
									  <option value="society">??????</option>
									  <option value="self">????????????</option>
									  <option value="essay">???/?????????</option>
									</select>
								    <br/><br/><br/>
								      <table class="table table-bordered table-hover dt-responsive" style="max-width:100%;">
								        <thead>
								          <tr>
								            <th style="width:20%">??? ??????</th>
								            <th style="width:10%">?????????</th>
								            <th style="width:40%">??????</th>
								            <th style="width:20%">??????</th>
								            <th style="width:10%">??????</th>
								          </tr>
								        </thead>
								        <tbody>
								         <c:forEach items="${updateLR.listNovel}" var="book" varStatus="status">
								          <tr id="novel" >
								            <td>${book.b_title}</td>
								            <td><img style="display:block;width:100%;" src="${book.b_img}"></td>
								            <c:choose>
                                             <c:when test="${fn:length(book.b_desc) gt 100}">
                                             <td><c:out value="${fn:substring(book.b_desc, 0, 100)}"></c:out>...</td>
                                             </c:when><c:otherwise>
                                              <td><c:out value="${book.b_desc}"></c:out></td>
												</c:otherwise>
											</c:choose>
								            <td>${book.b_writer}, ${book.b_translator}</td>
								        	<td>${book.b_price}???</td>
								          </tr>
								          </c:forEach>
								          <c:forEach items="${updateLR.listEconomy}" var="book" varStatus="status">
								          <tr id="economy">
								            <td>${book.b_title}</td>
								            <td><img style="display:block;width:100%;" src="${book.b_img}"></td>
								            <c:choose>
                                             <c:when test="${fn:length(book.b_desc) gt 100}">
                                             <td><c:out value="${fn:substring(book.b_desc, 0, 100)}"></c:out>...</td>
                                             </c:when><c:otherwise>
                                              <td><c:out value="${book.b_desc}"></c:out></td>
												</c:otherwise>
											</c:choose>
								            <td>${book.b_writer}, ${book.b_translator}</td>
								        	<td>${book.b_price}???</td>
								          </tr>
								          </c:forEach>
								          <c:forEach items="${updateLR.listSociety}" var="book" varStatus="status">
								          <tr id="society">
								            <td>${book.b_title}</td>
								            <td><img style="display:block;width:100%;" src="${book.b_img}"></td>
								            <c:choose>
                                             <c:when test="${fn:length(book.b_desc) gt 100}">
                                             <td><c:out value="${fn:substring(book.b_desc, 0, 100)}"></c:out>...</td>
                                             </c:when><c:otherwise>
                                              <td><c:out value="${book.b_desc}"></c:out></td>
												</c:otherwise>
											</c:choose>
								            <td>${book.b_writer}, ${book.b_translator}</td>
								        	<td>${book.b_price}???</td>
								          </tr>
								          </c:forEach>
								         <c:forEach items="${updateLR.listSelf}" var="book" varStatus="status">
								          <tr id="self">
								            <td>${book.b_title}</td>
								            <td><img style="display:block;width:100%;" src="${book.b_img}"></td>
								            <c:choose>
                                             <c:when test="${fn:length(book.b_desc) gt 100}">
                                             <td><c:out value="${fn:substring(book.b_desc, 0, 100)}"></c:out>...</td>
                                             </c:when><c:otherwise>
                                              <td><c:out value="${book.b_desc}"></c:out></td>
												</c:otherwise>
											</c:choose>
								            <td>${book.b_writer}, ${book.b_translator}</td>
								        	<td>${book.b_price}???</td>
								          </tr>
								          </c:forEach>
								         <c:forEach items="${updateLR.listEssay}" var="book" varStatus="status">
								          <tr id="essay">
								            <td>${book.b_title}</td>
								            <td><img style="display:block;width:100%;" src="${book.b_img}"></td>
								            <c:choose>
                                             <c:when test="${fn:length(book.b_desc) gt 100}">
                                             <td><c:out value="${fn:substring(book.b_desc, 0, 100)}"></c:out>...</td>
                                             </c:when><c:otherwise>
                                              <td><c:out value="${book.b_desc}"></c:out></td>
												</c:otherwise>
											</c:choose>
								            <td>${book.b_writer}, ${book.b_translator}</td>
								        	<td>${book.b_price}???</td>
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								    </div>
								  </div>
								</div>
								
                                </div>
                                <div id="account-details" class="tab-pane">
                                    <form name="input" method="post" action ="../boardNotice/write.do" enctype="multipart/form-data">
		                                &nbsp;<h3>???????????? ??????</h3>
		                                <select name="bn_topic" >
										    <option value="">?????????</option>
										    <option value="?????????">?????????</option>
										    <option value="???????????????">???????????????</option>
										    <option value="?????????">?????????</option>
										    <option value="??????">??????</option>
										    
									    </select>
									    <br/><br/><br/>
									    &nbsp;<label>??????</label>
		                                   <input type="text" name="bn_subject" class="form-control">
		                                   <br/>
		                                   <input type="text" class="form-control" name="bn_writer" value="?????????">
		                                   <br/>
										 <textarea id="summernote" class="note-editable" contenteditable="true" role="textbox" 
										 aria-multiline="true" spellcheck="true" name="bn_content"></textarea>
										   <br/>
										 <input id="fs" type ="file" name="fs" value="" multiple>
										 <div class="preview">
										 <p></p>
										</div>		                                
										<div class="contact-submit">
		                                    <input type="submit" value="????????? ??????" class="wpcf7-form-control wpcf7-submit button">
		                                </div>
                            		</form>
                                </div>
                            </div>
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
                                   
                                        <h3>H!Books</h3>
                                  
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
    
	<script src="../assets/summernote/summernote-lite.js"></script>
    <script src="../assets/summernote/lang/summernote-ko-KR.js"></script>
	
    <script type="text/javascript">
	    $(document).ready(function() {
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
				url : "../boardNotice/uploadImgTemp.do",
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
		
		$(document).on("click",".option", function(){
			let selectedCate = $(this).attr("data-value");
			$("tbody>tr").css('display','none');
			$("tr#"+selectedCate).css('display','table-row');
		});
		

		$(document).on("click",".delete", function (){
			$.ajax({
				url: "../admin/deletebook.do",
				type: "GET",
				data: {re_seq: $(this).attr("id")},
				success: function(responseData){}
			}) 
			
			$(this).parents("#recom").remove();
			var index = sessionStorage.getItem("index");
		 	 index--;
			 sessionStorage.setItem("index", index);
	   });
	</script>
</body>

</html>