<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
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
  color: rgba(0, 0, 0, 0.5);
  border: none;
  background-color: inherit;
  padding: 14px 16px;
  margin: 0;
}
.dropdown-content {
  display: none;
  position: absolute;
  min-width: 160px;
  z-index: 1;
}
.dropdown-content a {
  float: none;
  color: rgba(0, 0, 0, 0.5);
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
  background-color: white;
}
.dropdown-content a:hover {
  background-color: #ddd;
}
.dropdown1:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid px-md-4	">
          <a class="navbar-brand" href="${pageContext.request.contextPath}/">Work CV</a>
          <div class="collapse navbar-collapse" id="ftco-nav">
          	<ul class="navbar-nav ml-auto">
            	<li class="nav-item active"><a href="${pageContext.request.contextPath}/" class="nav-link">Trang chủ</a></li>
              	<li class="nav-item"><a href="${pageContext.request.contextPath}/post/listJob" class="nav-link">Công việc</a></li>
              	<li class="nav-item"><a href="${pageContext.request.contextPath}/recruitment/list-user" class="nav-link">Ứng cử viên</a></li>
				<li class="nav-item">
					<div class="dropdown1">
						<button class="dropbtn">Hồ Sơ<i class="fa fa-caret-down"></i></button>
						<div class="dropdown-content">
							<a href="${pageContext.request.contextPath}/user/listSaveJob">Công việc đã lưu</a> 
							<a href="${pageContext.request.contextPath}/recruitment/listPost">Danh sách bài đăng</a> 
							<a href="${pageContext.request.contextPath}/user/listApplyJob">Công việc đã ứng tuyển</a>
							<a href="${pageContext.request.contextPath}/user/listFollowCompany">Công ty đã theo dõi</a>
							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<a href="${pageContext.request.contextPath}/logout">Logout</a>
							</c:if>
						</div>
					</div>
				</li>
				<li class="nav-item cta mr-md-1"><a href="${pageContext.request.contextPath}/recruitment/postJob" class="nav-link">Đăng tuyển</a></li>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li class="nav-item"><a href="${pageContext.request.contextPath}/myProfile" class="nav-link" style="color: green;">${pageContext.request.userPrincipal.name}</a></li>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name == null}">	
              		<li class="nav-item cta cta-colored"><a href="${pageContext.request.contextPath}/showLoginPage" class="nav-link">Đăng nhập</a></li>
            	</c:if>
            </ul>
          </div>
        </div>
      </nav>

<div class="hero-wrap hero-wrap-2" style="background-image: url('${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text align-items-end justify-content-start">
      <div class="col-md-12 text-center mb-5">
        <p class="breadcrumbs mb-0"><span class="mr-3"><a href="${pageContext.request.contextPath}/">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span>Công việc <span></span></p>
        <h1 class="mb-3 bread">Danh sách ứng cử viên</h1>
      </div>
    </div>
  </div>
</div>
<section class="ftco-section bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 pr-lg-5">
        <div class="row">
        <c:forEach var="tempUserApplypost" items="${userApplyposts}">
            <div class="col-md-12" style="box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px;margin: 20px auto;">
              <div class="team d-md-flex p-4 bg-white">
                <IMG style="margin-top: 10px" class="img" src="${pageContext.request.contextPath}/assets/images/${tempUserApplypost.users.image}"></IMG>
                <div class="text pl-md-4">
                  <H3 class="location mb-0">${tempUserApplypost.users.fullName}</H3>
                  <p style="display: block;color: black">${tempUserApplypost.users.address}</p>
                  <span class="position" style="display: block;color: black">${tempUserApplypost.users.email}</span>
                  <p class="mb-4" style="width: 700px">${tempUserApplypost.users.description}</p>
                  <c:if test="${tempUserApplypost.users.cv != null}">
                  	<div style="margin-left: 1px" class="row">
                    	<p><a target="_blank" href="${pageContext.request.contextPath}/assets/images/${tempUserApplypost.users.cv.fileName}" class="btn btn-primary">Xem cv</a></p>
                  	</div>
                  </c:if>
                </div>
              </div>
            </div>
		</c:forEach>
			<c:if test="${userApplyposts.size() == null || userApplyposts.size() == 0}">
          		<div style="text-align: center">
            		<p style="color: red">Không có kết quả nào</p>
          		</div>
        	</c:if>
        </div>
		<div class="row mt-5">
          	<div class="col text-center">
              	<ul class="pagination justify-content-center">    
              		<c:forEach var="pageNumber" begin="1" end="${totalPage}" step="1">
                		<li><a class="page-link" href="?page=${pageNumber}">${pageNumber}</a></li>
              		</c:forEach>        	
              	</ul>
          	</div>
        </div>
      </div>
    </div>
  </div>
</section>
<script>
  function save(id){
    var name = "#idRe" +id;
    var idRe = $(name).val();
    var formData = new FormData();
    formData.append('idRe', idRe);
    $.ajax(
            {
              type: 'POST',
              url: '/save-job/save/',
              contentType: false,
              processData: false,
              data: formData,
              success: function (data) {
                console.log(data);
                if(data == "false"){
                  swal({
                    title: 'Bạn cần phải đăng nhập!',
                    /* text: 'Redirecting...', */
                    icon: 'error',
                    timer: 3000,
                    buttons: true,
                    type: 'error'
                  })
                }else if(data == "true"){
                  swal({
                    title: 'Lưu thành công!',
                    /* text: 'Redirecting...', */
                    icon: 'success',
                    timer: 3000,
                    buttons: true,
                    type: 'success'
                  })
                }else{
                  swal({
                    title: 'Bạn đã lưu bài này rồi!',
                    /* text: 'Redirecting...', */
                    icon: 'error',
                    timer: 3000,
                    buttons: true,
                    type: 'error'
                  })
                }
              },
              error: function (err) {
                alert(err);
              }
            }
    )
  }

  function apply(id){
    var name = "#idRe" +id;
    var nameModal = "#exampleModal" +id;
    var nameFile = "#fileUpload"+id;
    var nameText = "#text" +id;
    var idRe = $(name).val();
    var textvalue = $(nameText).val();
    var fileUpload = $(nameFile).get(0);
    var files = fileUpload.files;
    var formData = new FormData();
    formData.append('file', files[0]);
    formData.append('idRe', idRe);
    formData.append('text', textvalue);
    if(files[0] == null){
      swal({
        title: 'Bạn cần phải chọn cv!',
        /* text: 'Redirecting...', */
        icon: 'error',
        timer: 3000,
        buttons: true,
        type: 'error'
      })
    } else {
      $.ajax(
              {
                type: 'POST',
                url: '/user/apply-job/',
                contentType: false,
                processData: false,
                data: formData,
                success: function (data) {
                  if(data == "false"){
                    swal({
                      title: 'Bạn cần phải đăng nhập!',
                      /* text: 'Redirecting...', */
                      icon: 'error',
                      timer: 3000,
                      buttons: true,
                      type: 'error'
                    })
                  }else if(data == "true"){
                    swal({
                      title: 'Ứng tuyển thành công!',
                      /* text: 'Redirecting...', */
                      icon: 'success',
                      timer: 3000,
                      buttons: true,
                      type: 'success'
                    })
                    $(nameModal).modal('hide');
                    $('#fileUpload').val("");
                  }else{
                    swal({
                      title: 'Bạn đã ứng tuyển công việc này!',
                      /* text: 'Redirecting...', */
                      icon: 'error',
                      timer: 3000,
                      buttons: true,
                      type: 'error'
                    })
                    $(nameModal).modal('hide');
                    $('#fileUpload').val("");
                  }
                },
                error: function (err) {
                  alert(err);
                }
              }
      )
    }
  }
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