<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
  <title>Work CV</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">

  <!-- CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/open-iconic-bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aos.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ionicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.timepicker.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/css/bootstrap-reboot.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/css/mixins/_text-hide.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/icomoon.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap-grid.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap/bootstrap-reboot.css">

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
<!-- END nav -->

<div class="hero-wrap hero-wrap-2" style="background-image: url('${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">
                <p class="breadcrumbs mb-0"><span class="mr-3"><a href="/">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span>Công ty <span></span></p>
                <h1 class="mb-3 bread">Danh sách công ty đã theo dõi</h1>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 pr-lg-5">
                <div class="row">
                	<c:forEach var="tempFollowCompany" items="${followCompanys}">
                        <div class="col-md-12 ">
                            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header align-items-center">
                                        <h2 class="mr-3 text-black" ><a href="${pageContext.request.contextPath}/company/detailCompany?id=${tempFollowCompany.company.id}">${tempFollowCompany.company.companyName}</a></h2>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-envelope"></span> <span>${tempFollowCompany.company.email}</span></div>
                                        <div class="mr-3"><span class="icon-my_location"></span> <span>${tempFollowCompany.company.address}</span></div>
                                        <div style="margin-left: 10"><span class="icon-my_location"></span> <span>${tempFollowCompany.company.phoneNumber}</span></div>
                                    </div>
                                </div>
                                <input type="hidden" id="idRe${tempFollowCompany.company.id}" value="${tempFollowCompany.company.id}">
                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0" style="width:370px !important;">
                                    <div>
                                    	<input type="hidden" id="idCompany${tempFollowCompany.company.id}" value="${tempFollowCompany.company.id}">
                        				<a onclick="follow(${tempFollowCompany.company.id})" class="icon text-center d-flex justify-content-center align-items-center icon mr-2"><span class="icon-delete"></span></a>
<%--                                         <a  href="${'/user/delete-follow/'}+${tempFollowCompany.id}" class="icon text-center d-flex justify-content-center align-items-center icon mr-2"> --%>
<!--                                             <span class="icon-delete"></span> -->
<!--                                         </a> -->
                                    </div>
                                    <a href="${pageContext.request.contextPath}/company/detailCompany?id=${tempFollowCompany.company.id}" class="btn btn-primary py-2">Chi tiết</a>
                                    <a href="${pageContext.request.contextPath}/user/listPostCompany?id=${tempFollowCompany.company.id}" class="btn btn-warning py-2 ml-1">Danh sách bài đăng</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <c:if test="${followCompanys.size() == 0}">
                	<div style="text-align: center">
                    	<p style="color:red;">Bạn chưa theo dõi công ty nào</p>
                	</div>
                </c:if>
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
        function follow(id){
            var name = "#idCompany"+id;
            var idCompany = $(name).val();
            var formData = new FormData();
            formData.append('idCompany', idCompany);
            $.ajax(
                {
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/user/followCompany/',
                    contentType: false,
                    processData: false,
                    data: formData,
                    success: function (data) {
                    	const isOk = data.includes("OK:")
                    	const msg = isOk ? data.substr(4) : data.substr(7);
                    	console.log(msg);
                    	
                    	swal({
                            title: msg,
                            /* text: 'Redirecting...', */
                            icon: isOk ? 'success' : 'error',
                            timer: 3000,
                            buttons: true,
                            type: isOk ? 'success' : 'error'
                        })
                        //$(nameModal).modal('hide');
                        $('#fileUpload').val("");
                        if (isOk) {
                        	setInterval(() => {
                            	window.location.href = "${pageContext.request.contextPath}/user/listFollowCompany";
                            	console.log('Reload');
                            	//location.reload();
            				}, 3000);
                        }
                    },
                    error: function (err) {
                        alert(err);
                    }
                }
            )
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