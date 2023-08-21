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
						<a href="${pageContext.request.contextPath}/recruitment/listPost">Danh sách bài đăng</a> 
						<a href="${pageContext.request.contextPath}/user/listApplyJob">Công việc đã ứng tuyển</a>
						<a href="${pageContext.request.contextPath}/user/listFollowCompany">Công ty đã theo dõi</a>
						<a href="${pageContext.request.contextPath}/logout">Logout</a>
					</div>
				</div>
			</li>
            <li class="nav-item cta mr-md-1"><a href="${pageContext.request.contextPath}/recruitment/postJob" class="nav-link">Đăng tuyển</a></li>
          </ul>
        </div>
      </div>
</nav>

<div class="hero-wrap hero-wrap-2" style="background-image: url('${pageContext.request.contextPath}/assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
            <div class="col-md-12 text-center mb-5">
                <p class="breadcrumbs mb-0"><span class="mr-3"><a href="${pageContext.request.contextPath}/">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span> Đăng bài<span></span></p>
                <h1 class="mb-3 bread">Đăng bài tuyển dụng</h1>
            </div>
        </div>
    </div>
</div>

<!-- HOME -->
<section class="site-section">
    <div class="container">
    <c:if test="${empty user.company}">
    	<div style="color: red;">You must be update company infor before create new Recruiment!</div>
	</c:if>
	<c:if test="${not empty user.company}">
	    <form id="recruimentForm" action="${pageContext.request.contextPath}/recruitment/addRecruitment" method="POST">
	        <div class="row align-items-center mb-5">
	            <div class="col-lg-8 mb-4 mb-lg-0">
	                <div class="d-flex align-items-center">
	                    <div>
	                        <h2 style="margin-top: 20px;margin-left: 50px;">Đăng bài</h2>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="row mb-5">
	            <div class="col-lg-12">
	                <div class="p-4 p-md-5 border rounded">
	                    <h3 class="text-black mb-5 border-bottom pb-2">Chi tiết bài tuyển dụng</h3>
	                    <div class="form-group">
	                        <label for="email">Tiêu đề</label>
	                        <input type="text" class="form-control" id="email" name="title"  required placeholder="Tiêu đề">
	                    </div>
	                    <div class="form-group">
	                        <label for="job-location">Mô tả công việc</label>
	                        <textarea class="form-control" id="editorN" name="description" placeholder="Mô tả"></textarea>
	                    </div>
	                    <div class="form-group">
	                        <label for="job-title">Kinh nghiệm</label>
	                        <input type="text" class="form-control" id="job-title" name="experience" placeholder="Kinh nghiệm">
	                    </div>
	                    <div class="form-group">
	                        <label for="job-title">Số người cần tuyển</label>
	                        <input type="number" class="form-control" id="job-title" name="quantity" placeholder="Số người cần tuyển">
	                    </div>
	                    <div class="form-group">
	                        <label for="job-location">Địa chỉ</label>
	                        <input type="text" class="form-control" id="job-location"  name="address" placeholder="Địa chỉ công ty">
	                    </div>
	                    <div class="form-group">
	                        <label for="job-location">Hạn ứng tuyển</label>
	                        <input type="date" class="form-control" id="job-location"  name="deadline" placeholder="Hạn ứng tuyển">
	                    </div>
	                    <div class="form-group">
	                        <label for="job-location">Lương</label>
	                        <input type="text" class="form-control" id="job-location"  name="salary" placeholder="Mức lương">
	                    </div>
	                    <div class="form-group">
	                        <label for="job-region">Cấp bậc</label>
	                        <select class="form-control" name="rank" aria-label="Default select example" required>
	                            <option selected>Chọn cấp bậc</option>
	                            <option value="Fresher">Fresher</option>
	                            <option value="Junior">Junior</option>
	                            <option value="Middle">Middle</option>
	                            <option value="Senior">Senior</option>
	                            <option value="Leader ">Leader</option>
	                        </select>
	                    </div>
	                    <input type="hidden" class="form-control" id="job-location" name="company" value="${user.id}">
	                    <div class="form-group">
	                        <label for="job-region">Loại công việc</label>
	                        <select class="form-control" name="type" aria-label="Default select example" required>
	                            <option selected>Chọn loại công việc</option>
	                            <option value="Part time">Part time</option>
	                            <option value="Full time">Full time</option>
	                            <option value="Freelancer">Freelancer</option>
	                        </select>
	                    </div>
	                    <div class="form-group">
	                        <label for="job-region">Danh mục công việc</label>
	                        <select class="form-control" name="category" aria-label="Default select example" required>
	                            <option selected>Chọn danh mục công việc</option>
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
	                <div class="row">
	                    <div class="col-6">
	                        <input onclick="save()" type="button" class="btn btn-block btn-primary btn-md" value="Đăng tuyển" />
	                    </div>
	                </div>
	            </div>
	        </div>
	    </form>
	</c:if>
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
<script type="text/javascript">
function getFormData($form){
	
    var unindexed_array = $form.serializeArray();

    var formData = new FormData();
    $.map(unindexed_array, function(n, i){
        formData.append(n['name'], n['value']);
    });

    return formData;
}

function save() {
	var formData = getFormData($("#recruimentForm"));
    $.ajax(
        {
            type: 'POST',
            url: '${pageContext.request.contextPath}/recruitment/addRecruitment',
            contentType: false,
            processData: false,
            data: formData,
            success: function (data) {
            	const isOk = data.includes("OK:")
            	const msg = isOk ? data.substr(4) : data.substr(7);
            	
                swal({
                    title: msg,
                    /* text: 'Redirecting...', */
                    icon: isOk ? 'success' : 'error',
                    timer: 3000,
                    buttons: true,
                    type: isOk ? 'success' : 'error'
                })
                
                //Chỗ này xử lý cho nó tự chuyển về trang chủ (3s)
                if (isOk) {
                	setInterval(() => {
                    	window.location.href = "${pageContext.request.contextPath}/recruitment/listPost";
    				}, 3000);
                }
            },
            error: function (err) {
            	swal({
                    title: 'Lỗi không xác định!',
                    /* text: 'Redirecting...', */
                    icon: 'error',
                    timer: 3000,
                    buttons: true,
                    type: 'error'
                })
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