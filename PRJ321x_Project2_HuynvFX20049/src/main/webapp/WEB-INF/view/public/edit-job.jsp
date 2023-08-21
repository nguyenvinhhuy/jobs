<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
				<li class="nav-item cta mr-md-1"><a href="/recruitment/post" class="nav-link">Đăng tuyển</a></li>
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
        <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span> Cập nhập<span></span></p>
        <h1 class="mb-3 bread">Cập nhật bài tuyển dụng</h1>
      </div>
    </div>
  </div>
</div>

<!-- HOME -->
<section class="site-section">
  <div class="container">
    <form action="${pageContext.request.contextPath}/recruitment/updateRecruitment" method="POST">
      <input type="hidden" class="form-control" id="job-location" name="id" value="${recruitment.id}">
      <input type="hidden" class="form-control" id="job-location" name="createdAt" value="${recruitment.createdAt}">
      <div class="row align-items-center mb-5">
        <div class="col-lg-8 mb-4 mb-lg-0">
          <div class="d-flex align-items-center">
            <div>
              <h2>Cập nhật bài đăng</h2>
            </div>
          </div>
        </div>
<!--        <div class="col-lg-4">-->
<!--          <div class="row">-->
<!--            <div class="col-6">-->
<!--              <a href="#" class="btn btn-block btn-light btn-md"><span class="icon-open_in_new mr-2"></span>Preview</a>-->
<!--            </div>-->
<!--            <div class="col-6">-->
<!--              <a href="#" class="btn btn-block btn-primary btn-md">Đăng</a>-->
<!--            </div>-->
<!--          </div>-->
<!--        </div>-->
      </div>
      <div class="row mb-5">
        <div class="col-lg-12">
          <div class="p-4 p-md-5 border rounded">
            <h3 class="text-black mb-5 border-bottom pb-2">Chi tiết bài tuyển dụng</h3>

            <div class="form-group">
              <label for="email">Tiêu đề</label>
              <input type="text" class="form-control" id="email" name="title"  required value="${recruitment.title}">
            </div>
            <div class="form-group">
              <label for="job-location">Mô tả công việc</label>
              <textarea name="description" class="form-control" id="editorN" >${recruitment.description}</textarea>
            </div>
            <div class="form-group">
              <label for="job-title">Kinh nghiệm</label>
              <input type="text" class="form-control" id="job-title" name="experience" value="${recruitment.experience}">
            </div>
            <div class="form-group">
              <label for="job-title">Số người cần tuyển</label>
              <input type="number" class="form-control" id="job-title" name="quantity" value="${recruitment.quantity}">
            </div>
            <div class="form-group">
              <label for="job-location">Địa chỉ</label>
              <input type="text" class="form-control" id="job-location"  name="address" value="${recruitment.address}">
            </div>
            <div class="form-group">
              <label for="job-location">Hạn ứng tuyển</label>
              <input type="date" class="form-control" id="job-location"  name="deadline" value="${recruitment.deadline}">
            </div>
            <div class="form-group">
              <label for="job-location">Lương</label>
              <input type="text" class="form-control" id="job-location"  name="salary" value="${recruitment.salary}">
            </div>
			<div class="form-group">
            	<label for="job-region">Cấp bậc</label>
            	<select class="form-control" name="rank" aria-label="Default select example" required>
                	<option value="${recruitment.rank}" selected>${recruitment.rank}</option>
                	<option value="Fresher">Fresher</option>
                	<option value="Junior">Junior</option>
                	<option value="Middle">Middle</option>
                	<option value="Senior">Senior</option>
                	<option value="Leader ">Leader</option>
            	</select>
            </div>
            <div class="form-group">
              <label for="job-region">Loại công việc</label>
              <select class="form-control" name="type" aria-label="Default select example" required>
                <option value="${recruitment.type}" selected>${recruitment.type}</option>
                <option value="Part time">Part time</option>
                <option value="Full time">Full time</option>
                <option value="Freelancer">Freelancer</option>
              </select>

            </div>
            <div class="form-group">
              <label for="job-region">Danh mục công việc</label>
              <select class="form-control" name="category" aria-label="Default select example" required>
                <option value="${recruitment.category.id}" selected>${recruitment.category.name}</option>
                <c:forEach var="tempCategory" items="${categories}">
                	<option value="${tempCategory.id}">${tempCategory.name}</option>
                </c:forEach>
              </select>
            </div>
          </div>
        </div>
      </div>
      <div class="row align-items-center mb-5">
        <div class="col-lg-4">
            <div class="col-6">
              <button type="submit" class="btn btn-block btn-primary btn-md">Cập nhật</button>
            </div>
        </div>
      </div>
    </form>
  </div>
</section>
<script>
  ClassicEditor.create(document.querySelector('#editorN')).then(eidt => {
    console.log("da" + eidt);
  })
          .catch(error => {
            console.error(error);
          });
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