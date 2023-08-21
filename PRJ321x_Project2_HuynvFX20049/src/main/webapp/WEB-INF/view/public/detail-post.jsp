<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chi tiết công việc</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
                <p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Trang chủ <i class="ion-ios-arrow-forward"></i></a></span>Chi tiết <span></span></p>
                <h1 class="mb-3 bread">Chi tiết công việc</h1>
            </div>
        </div>
    </div>
</div>

<section style="margin-top: 10px" class="site-section">
    <div class="container">
        <div class="row align-items-center mb-5">
            <div class="col-lg-8 mb-4 mb-lg-0">
                <div class="d-flex align-items-center">
                    <div class="border p-2 d-inline-block mr-3 rounded">
                        <img width="100" height="100" src="${pageContext.request.contextPath}/assets/images/${recruitment.company.logo}" alt="Image">
                    </div>
                    <div>
                        <h2>${recruitment.title}</h2>
                        <div>
                            <span class="icon-briefcase mr-2"> ${recruitment.company.email}</span><a class="ml-0 mr-2 mb-2"></a>
                            <span  class="icon-room mr-2"> ${recruitment.company.address}</span ><span class="m-2"></span>
                            <span class="icon-clock-o mr-2"> ${recruitment.deadline}</span><span class="m-2"></span>
                        </div>
                        <input type="hidden">
                    </div>
                </div>
            </div>  
            <c:if test="${user.role.id == 2}">        
            <div class="col-lg-4">
                <div  class="row">
                    <div class="col-6">
                    	<input type="hidden" id="idRe${recruitment.id}" value="${recruitment.id}">
                        <a onclick="save(${recruitment.id})" class="btn btn-block btn-light btn-md"><span class="icon-heart-o mr-2 text-danger"></span>Lưu</a>
                    </div>
                    <div class="col-6">
                        <a data-toggle="modal" data-target="#exampleModal${recruitment.id}" class="btn btn-block btn-primary btn-md">Ứng tuyển</a>
                    </div>
                </div>
            </div>
            </c:if>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <div class="mb-5">
                    <h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-align-left mr-3"></span>Mô tả công việc</h3>
                    <p>${recruitment.description}</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bg-light p-3 border rounded mb-4">
                    <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Tóm tắt công việc</h3>
                    <ul class="list-unstyled pl-3 mb-0">
                       <li class="mb-2"> <strong class="text-black">Ngày tạo: </strong> <span>${recruitment.createdAt}</span> </li>
                        <li class="mb-2"><strong class="text-black">Kiểu công việc: </strong> <span>${recruitment.category.name}</span></li>
                        <li class="mb-2"><strong class="text-black">Loại công việc: </strong> <span>${recruitment.type}</span></li>
                        <li class="mb-2"><strong class="text-black">Kinh nghiệm: </strong> <span>${recruitment.experience} năm</span></li>
                        <li class="mb-2"><strong class="text-black">Địa chỉ: </strong> <span>${recruitment.address}</span></li>
                        <li class="mb-2"><strong class="text-black">Lương: </strong> <span>${recruitment.salary} VNĐ</span></li>
                        <li class="mb-2"><strong class="text-black">Số lượng: </strong><span>${recruitment.quantity}</span></li>
                        <li class="mb-2"><strong class="text-black">Hạn nộp cv: </strong><span>${recruitment.deadline}</span></li>
                    </ul>
                </div>
                <div class="bg-light p-3 border rounded">
                    <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Share</h3>
                    <div class="px-3">
                        <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-facebook"></span></a>
                        <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-twitter"></span></a>
                        <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-linkedin"></span></a>
                        <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-pinterest"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- --------------------------------------- Modal --------------------------------------- -->
	<div class="modal fade" id="exampleModal${recruitment.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"> Ứng tuyển: <span>${recruitment.title}</span></h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form method="post" action="/user/apply-job">
					<div class="modal-body">
						<div class="row">
							<div class="col-12">
								<select id="choose${recruitment.id}" onchange="choosed(${recruitment.id})" class="form-control" aria-label="Default select example">
									<option selected>Chọn phương thức nộp</option>
									<option value="1">Dùng cv đã cập nhật</option>
									<option value="2">Nộp cv mới</option>
								</select>
							</div>
							<div id="loai1${recruitment.id}" style="display: none" class="col-12">
								<label for="fileUpload" class="col-form-label">Giới thiệu:</label>
								<textarea rows="10" cols="3" class="form-control" id="text1${recruitment.id}"></textarea>
							</div>
							<div id="loai2${recruitment.id}" style="display: none" class="col-12">
								<label for="fileUpload" class="col-form-label">Chọn cv:</label>
								<input type="file" class="form-control" id="fileUpload${recruitment.id}" name="file" required>
								<label for="fileUpload" class="col-form-label">Giới thiệu:</label>
								<textarea rows="10" cols="3" class="form-control" id="text2${recruitment.id}"></textarea> 
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
							<button type="button" id="button1${recruitment.id}" style="display: none" onclick="apply1(${recruitment.id})" class="btn btn-primary">Nộp1</button>
							<button type="button" id="button2${recruitment.id}" style="display: none" onclick="apply(${recruitment.id})" class="btn btn-primary">Nộp2</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- --------------------------------------- end Modal --------------------------------------- -->

<section class="site-section" id="next">
    <div class="container">
    	<c:if test="${user.role.id == 1}">
        <div class="row mb-5 justify-content-center">
            <div class="col-md-7 text-center">
                <h2 class="section-title mb-2">Danh sách ứng viên ứng tuyển</h2>               
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 pr-lg-4">
                <div class="row">
                	<c:forEach var="tempApplyPost" items="${applyposts}">
                        <div class="col-md-12" style="box-shadow: rgba(0, 0, 0, 0.4) 0px 0px 10px;margin: 20px auto;">
                            <div class="team d-md-flex p-4 bg-white">
                                <img id="avatar" height="100" width="100" style="border-radius: 50px" src="${pageContext.request.contextPath}/assets/images/${tempApplyPost.users.image}">
                                <div class="text pl-md-4">
                                    <H5 class="location mb-0">${tempApplyPost.users.fullName}</H5>
                                    <p style="display: block;color: black">${tempApplyPost.users.address}</p>
                                    <span class="position" style="display: block;color: black">${tempApplyPost.users.email}</span>
                                    <p class="mb-4" style="width: 700px">${tempApplyPost.users.description}</p>
                                    <div class="row">
                                    	<c:if test="${tempApplyPost.nameCv != null}">
											<p><a target="_blank" class="btn btn-primary" href="${pageContext.request.contextPath}/assets/images/${tempApplyPost.nameCv}" >Xem cv</a></p>
										</c:if>
										<c:if test="${tempApplyPost.status == 0}">
											<p style="margin-left: 10px"><a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/recruitment/approve?id=${tempApplyPost.id}" >Duyệt</a></p>
										</c:if>
										<c:if test="${tempApplyPost.status == 1}">
											<p style="margin-left: 10px;margin-top: 10px"><span style="color: #1e7e34;font-weight: bold" >Đã duyệt</span></p>
										</c:if>                                                                                                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <c:if test="${applyposts.size() == 0}">
						<p style="color: red;padding-left: 60px;">Chưa có ứng viên nào ứng tuyển</p>
					</c:if> 
                </div>
            </div>
        </div>
        </c:if>
        
        <div class="row mb-5 justify-content-center">
            <div class="col-md-7 text-center">
                <h2 class="section-title mb-2">Những công việc liên quan</h2>             
            </div>
        </div>
        
        <c:forEach var="tempRecruitmentByCategories" items="${recruitmentByCategories}">
            <div class="col-md-12 ">
                <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
                    <div class="one-third mb-4 mb-md-0">
                        <div class="job-post-item-header align-items-center">
                            <span class="subadge">${tempRecruitmentByCategories.type}</span>
                            <h2 class="mr-3 text-black" ><a href="${pageContext.request.contextPath}/post/detailPost?id=${tempRecruitmentByCategories.id}">${tempRecruitmentByCategories.title}</a></h2>
                        </div>
                        <div class="job-post-item-body d-block d-md-flex">
                            <div class="mr-3"><span class="icon-layers"></span> <a href="${pageContext.request.contextPath}/company/detailCompany?id=${tempRecruitmentByCategories.company.id}">${tempRecruitmentByCategories.company.companyName}</a></div>
                            <div><span class="icon-my_location"></span> <span>${tempRecruitmentByCategories.address}</span></div>
                        </div>
                    </div>

                    <input type="hidden" id="idRe${tempRecruitmentByCategories.id}" value="${tempRecruitmentByCategories.id}">
                    <c:if test="${user.role.id == 2}">
                    <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                        <div>
                            <a onclick="save(${tempRecruitmentByCategories.id})" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                <span class="icon-heart"></span>
                            </a>
                        </div>
                        <a data-toggle="modal" data-target="#exampleModal${tempRecruitmentByCategories.id}" class="btn btn-primary py-2">Apply Job</a>
                    </div>
                    </c:if>
                </div>
            </div>
		</c:forEach>
		<div class="row mt-5">
          	<div class="col text-center">
              	<ul class="pagination justify-content-center">    
              	<c:forEach var="pageNumber" begin="1" end="${totalPage}" step="1">
                	<li><a class="page-link" href="?page=${pageNumber}">${pageNumber}</a></li>
              	</c:forEach>        	
              	</ul>
          	</div>
        </div>
<script>
    function save(id){
        var name = "#idRe" +id;
        var idRe = $(name).val();
        var formData = new FormData();
        formData.append('idRe', idRe);
        $.ajax(
            {
                type: 'POST',
                url: '${pageContext.request.contextPath}/user/saveJob/',
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
                    $(nameModal).modal('hide');
                    $('#fileUpload').val("");
                },
                error: function (err) {
                    alert(err);
                }
            }
        )
    }

    function choosed(id){
        var name = '#choose' + id;
        var name1 = 'loai1' + id;
        var name2 = 'loai2' + id;
        var button1 = 'button1' + id;
        var button2 = 'button2' + id;
        var giaitri = $(name).val();
        if(giaitri == 1){
            document.getElementById(name1).style.display = 'block'
            document.getElementById(name2).style.display = 'none'
            document.getElementById(button1).style.display = 'block'
            document.getElementById(button2).style.display = 'none'
        }else{
            document.getElementById(name2).style.display = 'block'
            document.getElementById(name1).style.display = 'none'
            document.getElementById(button2).style.display = 'block'
            document.getElementById(button1).style.display = 'none'
        }
    }

    function apply(id){
        var name = "#idRe" +id;
        var nameModal = "#exampleModal" +id;
        var nameFile = "#fileUpload"+id;
        var nameText = "#text2" +id;
        
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
                    enctype: 'multipart/form-data',
                    url: '${pageContext.request.contextPath}/user/applyPost/',
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
                        $(nameModal).modal('hide');
                        $('#fileUpload').val("");
                    },
                    error: function (err) {
                        alert(err);
                    }
                }
            )
        }
    }
    function apply1(id){
        var name = "#idRe" +id;
        var nameModal = "#exampleModal" +id;
        var nameFile = "#fileUpload"+id;
        var nameCv = "#nameCv"+id;
        var users = "#users"+id;
        var recruitment = "#recruitment"+id;	
        var nameText = "#text1" +id;
        
        var idRe = $(name).val();
        var textvalue = $(nameText).val();
        var formData = new FormData();
        formData.append('idRe', idRe);
        formData.append('text', textvalue);
        $.ajax(
            {
                type: 'POST',
                url: '${pageContext.request.contextPath}/user/applyPost1/',
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
                    $(nameModal).modal('hide');
                    $('#fileUpload').val("");
                },
                error: function (err) {
                    alert(err);
                }
            }
        )
    }
</script>
    </div>
</section>

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