<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
  <title>Work CV</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">

  <!-- CSS -->
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/open-iconic-bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aos.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ionicons.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-datepicker.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.timepicker.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/css/bootstrap-reboot.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/css/mixins/_text-hide.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/icomoon.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap-grid.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap-reboot.css">

  <!-- JS -->
  <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/assets/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/29.0.0/classic/ckeditor.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 <style>
.navbar a {
  float: left;
  font-size: 16px;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.dropdown1 {
  float: left;
  overflow: hidden;
}
.dropdown1 .dropbtn {
  border: none;
  background-color: inherit;
  padding:8px 0;
  margin: 2px 20px;
  min-width: 200px;
  text-align: left;
  color: green;
}
.dropdown-content {
  display: none;
  position: absolute;
  min-width: 200px;
  z-index: 1;
  top: 132px;
  left: 150px;
}
.dropdown-content a {
  float: none;
  color: black;
  padding: 10px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
  background-color: white;
}
.dropdown-content a:hover, .nav-item:hover{
  background-color: #ddd;
}
.dropdown1:hover .dropdown-content {
  display: block;
}
.nav-link{
	color: black;
	margin: 2px 20px;
}
.collapse{
	left: 130px;
}
</style>
</head>
<body>
<nav class="header_menu" class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container-fluid px-md-4	">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">Work CV</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav" style="z-index: 1000 !important;position: absolute;background-color: white;min-width: 200px;">
          <ul class="navbar-nav ml-auto" style="z-index: 1000">
            <li class="nav-item active"><a href="${pageContext.request.contextPath}/" class="nav-link">Trang chủ</a></li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/post/listJob" class="nav-link">Công việc</a></li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/recruitment/list-user" class="nav-link">Ứng cử viên</a></li>         
			<li class="nav-item">
				<div class="dropdown1">
					<button class="dropbtn">${user.fullName}<i class="fa fa-caret-down"></i></button>
					<div class="dropdown-content">
						<a href="${pageContext.request.contextPath}/user/listSaveJob">Công việc đã lưu</a> 
						<a href="${pageContext.request.contextPath}/user/list-post">Danh sách bài đăng</a> 
						<a href="${pageContext.request.contextPath}/user/listApplyJob">Công việc đã ứng tuyển</a>
						<a href="${pageContext.request.contextPath}/user/listFollowCompany">Công ty đã theo dõi</a>
						<a href="${pageContext.request.contextPath}/logout">Logout</a>
					</div>
				</div>
			</li>
            <li class="nav-item cta mr-md-1"><a href="/recruitment/post" class="nav-link">Đăng tuyển</a></li>
          </ul>
        </div>
      </div>
</nav>

<div class="hero-wrap hero-wrap-2" style="background-image: url('${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">          	
                <h1 class="mb-3 bread">Hồ sơ</h1>               
                <div class="form-group">
                    <form method="POST" action="<%= request.getContextPath() %>/uploadFile" enctype="multipart/form-data">
    					<label class="btn btn-primary btn-md" style="margin: 0;">
                        	Chọn ảnh<input type="file" name="image" hidden>
                    	</label>
                    	<button type="submit" class="btn btn-success btn-md">Lưu ảnh</button>
  					</form>
                </div>
                <div style="margin-left: 0px" id="divImage" >
                    <img id="avatar" height="100" width="100" style="border-radius: 50px" src="${pageContext.request.contextPath}/assets/images/${user.image}">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- HOME -->
<c:if test="${user.status == 0}">
<div class="container-fluid" style="text-align: center">
    <p style="font-size: 20px;font-weight: bold;color: #aaa;margin-top: 10px">Xác thực email đăng nhập</p>
    <div style="width: 600px;height: 400px;border-radius: 5px; box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px;margin: 20px auto;padding: 15px">
        <p style="line-height: 35px;font-size: 16px">Xin chào, <span>${user.fullName}</span> và làm theo hướng dẫn trong email.
            Trường hợp không nhận được email, bạn vui lòng bấm nút Nhận email xác thực dưới đây.</p>
        <div class="row form-group">
            <form action="${pageContext.request.contextPath}/confirmAccount" method="POST" class="col-md-12">
                <input type="hidden" value="${user.email}" name="email" class="btn px-4 btn-primary text-white">
                <input type="hidden" value="${user.id}" name="id" class="btn px-4 btn-primary text-white">
                <input type="submit" value="Nhận email xác thực" class="btn px-4 btn-primary text-white">
            </form>
        </div>
        <p>Mọi thắc mắc vui lòng liên hệ bộ phận CSKH của WorkCV:<br></p>
        - Điện thoại:<span style="color:#5f80ec">(024) 6680 5588</span><br>
        - Email: <a href="#" style="color:#5f80ec"> hotro@workcv.vn</a>
    </div>
    <c:if test="${comfirm_await}">
    <div style="width: 600px;height: 400px;border-radius: 5px;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px;margin: 20px auto;padding: 15px">
        <p style="line-height: 35px;font-size: 16px">Xin chào, <span>${user.fullName}</span> .Bạn đã gửi yêu cầu xác thực thành công,
            vui lòng kiểm tra mail để xác thực.Cảm ơn bạn!!!
        </p>
        <p>Mọi thắc mắc vui lòng liên hệ bộ phận CSKH của WorkCV:<br></p>
        - Điện thoại:<span style="color:#5f80ec">(024) 6680 5588</span><br>
        - Email: <a href="#" style="color:#5f80ec"> hotro@workcv.vn</a>
    </div>
    </c:if>
</div>
</c:if>
<!-- ---------------------------------------------------------- INFO USER ---------------------------------------------------------- -->
<c:if test="${user.role.id == 2}">
<section class="site-section" style="margin-top: 10px">
    <div class="container">
        <form:form action="${pageContext.request.contextPath}/uploadCv" enctype="multipart/form-data" method="POST">
            <div class="row align-items-center mb-5">
                <div class="col-lg-8 ">
                    <div class="d-flex align-items-center">
                        <div class="form-group" style="margin-top: 15px">
                            <label class="btn btn-primary btn-md btn-file">
                                Chọn cv (pdf)<input type="file" name="cv" required hidden>
                            </label>
                        </div>
                    </div>
                    <c:if test="${user.cv.fileName == null}">
                    	<p style="color: red;">Bạn chưa cập nhập CV</p>
                    </c:if>
                    <c:if test="${user.cv.fileName != null}">
                    	Xem cv: <a target="_blank" href="${pageContext.request.contextPath}/assets/images/${user.cv.fileName}">${user.cv.fileName}</a>
                    </c:if>
<%--                     <c:if test="${user.cv.fileName != null}"> --%>
<!--                     	<a style="color: red;margin-left: 20px" data-toggle="modal" data-target="#exampleModal" >Xóa cv</a> -->
<%--                     </c:if> --%>
<%--                     <c:if test="${user.cv.fileName == null}"> --%>
<!--                     	<a style="color: red;margin-left: 20px" id="xoa" data-toggle="modal" data-target="#exampleModal" ></a> -->
<%--                     </c:if> --%>
                </div>
                <c:if test="${user.cv.fileName != null}">
                	<div class="col-lg-4">
                    	<div class="row">
                       		<div class="col-6">
                           		<button type="submit" id="myBtn" class="btn btn-block btn-light btn-md">Cập nhật cv</button>
                       		</div>
                    	</div>
                	</div>
                </c:if>
            </div>
        </form:form>

        <form:form modelAttribute="user" action="${pageContext.request.contextPath}/user/updateUser" method="POST" >
        	<input type="hidden" class="form-control" id="id" name="id" value="${user.id}">
            <div class="row align-items-center mb-5">
                <div class="col-lg-8 mb-4 mb-lg-0">
                    <div class="d-flex align-items-center">
                        <div>
                            <h2>Cập nhật thông tin</h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-6">
                            <button type="submit" class="btn btn-block btn-primary btn-md">Lưu thông tin</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-5">
                <div class="col-lg-12">
                    <div class="p-4 p-md-5 border rounded">
                        <h3 class="text-black mb-5 border-bottom pb-2">Thông tin chi tiết</h3>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" id="email" name="email" value="${user.email}" required readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label>Full name</label>
                            <input type="text" class="form-control" id="job-title" name="fullName" value="${user.fullName}" required  placeholder="Full name">
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ</label>
                            <input type="text" class="form-control" id="job-location" name="address" value="${user.address}" required placeholder="e.g. New York">
                        </div>
                        <div class="form-group">
                            <label>Số điện thoại</label>
                            <input type="text" class="form-control" id="job-location" name="phoneNumber" value="${user.phoneNumber}" required placeholder="+ 84">
                        </div>
                        <div class="form-group">
                            <label>Role</label>
                            <input type="text" class="form-control" id="job-location" name="role" value="${user.role.roleName}" readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label>Mô tả bản thân</label>
                            <textarea name="description" class="form-control" id="editor">${user.description}</textarea>
                        </div>
                    </div>
                </div>
            </div>
        </form:form>
    </div>
</section>
</c:if>
<!-- Modal -->
<div class="modal fade"  id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Bạn có chắc chắn muốn xóa ?</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                CV : <span id="cvXoa" ></span>
                <span>${user.cv.fileName}</span>
                <form:form action="${pageContext.request.contextPath}/deleteCv" method="POST">
                    <div class="modal-footer mt-1">
                        <input type="hidden" name="cvID" value="${user.role.id}">
                        <button type="submit" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                        <button type="submit" class="btn btn-danger">Xóa</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

<!-- ---------------------------------------------------------- INFO RECRUITMENT ---------------------------------------------------------- -->
<c:if test="${user.status == 1 && user.role.id == 1}">
<section class="site-section" style="margin-top: 10px">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 mb-5">
                <h2 class="mb-4">Thông tin cá nhân</h2>
                <form:form modelAttribute="user" action="${pageContext.request.contextPath}/user/updateUser" method="POST" >              	
        			<input type="hidden" class="form-control" id="id" name="id" value="${user.id}">
                    <div class="row mb-5">
                        <div class="col-lg-12">
                            <div class="p-4 p-md-5 border rounded">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="form-control" id="email" name="email" value="${user.email}" required readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label>Họ và tên</label>
                                    <input type="text" class="form-control" name="fullName" value="${user.fullName}" id="job-title" required placeholder="Full name">
                                </div>
                                <div class="form-group">
                                    <label>Địa chỉ</label>
                                    <input type="text" name="address" value="${user.address}" required class="form-control" id="job-location" placeholder="e.g. New York">
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại</label>
                                    <input type="text" name="phoneNumber" value="${user.phoneNumber}" required class="form-control" id="job-location" placeholder="+ 84">
                                </div>
                                <div class="form-group">
                            		<label>Role</label>
                           			<input type="text" class="form-control" id="job-location" value="${user.role.roleName}" readonly="readonly">
                        		</div>
                                <div class="form-group">
                                    <label>Mô tả bản thân</label>
                                    <textarea  name="description" class="form-control" id="editor" placeholder="Mô tả">${user.description}</textarea>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn px-4 btn-primary btn-md">Lưu thông tin</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
            <div class="col-lg-6">
                <h2 class="mb-4">Thông tin công ty</h2>
                <form:form modelAttribute="company" action="${pageContext.request.contextPath}/company/uploadLogo" enctype="multipart/form-data" method="POST">
                	<div class="form-group">
                		<input type="hidden" class="form-control" id="id" name="id" value="${user.id}">
                    	<label for="company-website-tw d-block1">Cập nhật Logo</label> <br>
                    	<label class="btn btn-primary btn-md btn-file" >
                        	Chọn logo<input type="file" name="logo" required hidden>
                    	</label>
                    	<button type="submit" class="btn btn-success btn-md" style="margin-bottom :8px;">Lưu Logo</button>
                    	<div id="divLogo">
                        	<img id="avatar1" height="100" width="100" style="border-radius: 50px" src="${pageContext.request.contextPath}/assets/images/${company.logo}">
                    	</div>
                	</div>
                </form:form>
                <form:form modelAttribute="company" action="${pageContext.request.contextPath}/company/updateCompany" method="POST">
                	<input type="hidden" class="form-control" id="id" name="id" value="${user.id}">
                    <div class="row mb-5">
                        <div class="col-lg-12">
                            <div class="p-4 p-md-5 border rounded">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" required id="email1" name="email" value="${company.email}" readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label for="job-title">Tên công ty</label>
                                    <input type="text" class="form-control" name="companyName" value="${company.companyName}" id="job-title"  placeholder="Full name" required>
                                </div>
                                <div class="form-group">
                                    <label for="job-location">Địa chỉ</label>
                                    <input type="text" name="address" value="${company.address}" required class="form-control" id="job-location" placeholder="e.g. New York">
                                </div>
                                <div class="form-group">
                                    <label for="job-location">Số điện thoại công ty</label>
                                    <input type="text" name="phoneNumber" value="${company.phoneNumber}" required class="form-control" id="job-location" placeholder="+ 84">
                                </div>
                                <div class="form-group">
                                    <label for="job-location">Mô tả công ty</label>
                                    <textarea  name="description" class="form-control" id="editorN" placeholder="Mô tả">${company.description}</textarea>
                                </div>
                                <div class="row form-group" >
                                    <div class="col-md-12">
                                        <input type="submit" value="Lưu thông tin" class="btn px-4 btn-primary text-white">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>
</c:if>
<script>
    ClassicEditor.create(document.querySelector('#editor')).then(eidt => {
        console.log("da" + eidt);
    })
        .catch(error => {
            console.error(error);
        });
    ClassicEditor.create(document.querySelector('#editorN')).then(eidt => {
        console.log("da" + eidt);
    })
        .catch(error => {
            console.error(error);
        });
</script>
<script>
    $(function () {
        $('#fileUpload').change(function () {
            if (window.FormData !== undefined) {
                var fileUpload = $('#fileUpload').get(0);
                var files = fileUpload.files;
                var email = $("#email").val();
                var formData = new FormData();
                formData.append('file', files[0]);
                formData.append('email', email);
                if(files[0] == null){
                    // document.getElementById("change").style.backgroundColor = 'red';
                    // $('#text').val(" ❌ Cập nhật ảnh thất bại");
                    $(".toast").toast("show");
                } else {
                    $.ajax(
                        {
                            type: 'POST',
                            url: '/user/upload/',
                            contentType: false,
                            processData: false,
                            data: formData,
                            success: function (urlImage) {
                                console.log(urlImage)
                                if(urlImage == "Error"){
                                    document.getElementById("change").style.backgroundColor = 'red';
                                    swal({
                                        title: 'Cập nhật ảnh đại diện thất bại!',
                                        /* text: 'Redirecting...', */
                                        icon: 'error',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'error'
                                    })
                                    $("#divImage").css("display","block")
                                }else{
                                    $('#avatar').attr('src', urlImage)
                                    swal({
                                        title: 'Cập nhật ảnh đại diện thành công!',
                                        /* text: 'Redirecting...', */
                                        icon: 'success',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'success'
                                    })
                                }
                            },
                            error: function (err) {
                                alert(err);
                            }
                        }
                    )
                }
            }
        })
    })
</script>

<script>
    $(function () {
        $('#fileUpload2').change(function () {
            if (window.FormData !== undefined) {
                var fileUpload = $('#fileUpload2').get(0);
                var files = fileUpload.files;
                var email = $("#email").val();
                var formData = new FormData();
                formData.append('file', files[0]);
                formData.append('email', email);
                if(files[0] == null){
                    // document.getElementById("change").style.backgroundColor = 'red';
                    // $('#text').val(" ❌ Cập nhật ảnh thất bại");
                    $(".toast").toast("show");
                } else {
                    $.ajax(
                        {
                            type: 'POST',
                            url: '/user/upload-company/',
                            contentType: false,
                            processData: false,
                            data: formData,
                            success: function (urlImage) {
                                console.log(urlImage)
                                if(urlImage == "Error"){
                                    document.getElementById("change").style.backgroundColor = 'red';
                                    swal({
                                        title: 'Cập nhật logo thất bại!',
                                        /* text: 'Redirecting...', */
                                        icon: 'error',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'error'
                                    })
                                    $("#divLogo").css("display","block")
                                }else{
                                    $('#avatar1').attr('src', urlImage)
                                    swal({
                                        title: 'Cập nhật logo thành công!',
                                        /* text: 'Redirecting...', */
                                        icon: 'success',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'success'
                                    })
                                }
                            },
                            error: function (err) {
                                alert(err);
                            }
                        }
                    )
                }
            }
        })
    })
</script>

<script>
    $(function () {
        $('#fileUpload1').change(function () {
            if (window.FormData !== undefined) {
                var fileUpload = $('#fileUpload1').get(0);
                var files = fileUpload.files;
                var formData = new FormData();
                formData.append('file', files[0]);
                if(files[0] == null){
                    // document.getElementById("change").style.backgroundColor = 'red';
                    // $('#text').val(" ❌ Cập nhật ảnh thất bại");
                    $(".toast").toast("show");
                } else {
                    $.ajax(
                        {
                            type: 'POST',
                            url: '/user/uploadCv',
                            contentType: false,
                            processData: false,
                            data: formData,
                            success: function (urlImage) {
                                console.log(urlImage)
                                if(urlImage == "false"){
                                    // document.getElementById("change").style.backgroundColor = 'red';
                                    swal({
                                        title: 'Cần chọn đúng loại file (PDF)!',
                                        /* text: 'Redirecting...', */
                                        icon: 'error',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'error'
                                    })
                                    // $("#divImage").css("display","block")
                                }else{
                                    // $('#avatar').attr('src', urlImage)
                                    document.getElementById('nameCv').innerHTML = 'Xem cv';
                                    document.getElementById('nameCv').href = "http://localhost:8080/resources/uploads/"+urlImage ; //or grab it by tagname etc
                                    document.getElementById('xoa').innerHTML = 'Xóa cv';
                                    document.getElementById("cvName").innerHTML = urlImage;
                                    document.getElementById("cvXoa").innerHTML = urlImage;
                                    swal({
                                        title: 'Cập nhật CV thành công!',
                                        /* text: 'Redirecting...', */
                                        icon: 'success',
                                        timer: 3000,
                                        buttons: true,
                                        type: 'success'
                                    })
                                }
                            },
                            error: function (err) {
                                alert(err);
                            }
                        }
                    )
                }
            }
        })
    })
</script>

<footer class="footer" class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          	<p style="margin-top: 20px;">Copyright &copy;<script>document.write(new Date().getFullYear());</script>  
        		<i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://www.facebook.com/NVH.celebrity/" target="_blank">HuyNV</a>
          	</p>
        </div>
      </div>
    </div>
</footer>

</body>
</html>