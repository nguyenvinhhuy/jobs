<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
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
					<button class="dropbtn">Hồ sơ<i class="fa fa-caret-down"></i></button>
					<div class="dropdown-content">
						<a href="${pageContext.request.contextPath}/user/listSaveJob">Công việc đã lưu</a> 
						<a href="${pageContext.request.contextPath}/user/list-post">Danh sách bài đăng</a> 
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

<div class="hero-wrap img" style="background-image: url(${pageContext.request.contextPath}/assets/images/bg_1.jpg);">
  <div class="overlay"></div>
  <div class="container">
    <div class="row d-md-flex no-gutters slider-text align-items-center justify-content-center">
      <div class="col-md-10 d-flex align-items-center ">
        <div class="text text-center pt-5 mt-md-5">
          <p class="mb-4">Tìm việc làm, Cơ hội việc làm và Nghề nghiệp</p>
          <h1 class="mb-5">Cách dễ dàng nhất để có được công việc mới của bạn</h1>
          <div class="ftco-counter ftco-no-pt ftco-no-pb">
            <div class="row">
              <div class="col-md-4 d-flex justify-content-center counter-wrap ">
                <div class="block-18">
                  <div class="text d-flex">
                    <div class="icon mr-2">
                      <span class="flaticon-visitor"></span>
                    </div>
                    <div class="desc text-left">
                      <strong class="number" data-number="46">${totalRoleUser}</strong>
                      <span>Ứng cử viên</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4 d-flex justify-content-center counter-wrap ">
                <div class="block-18 text-center">
                  <div class="text d-flex">
                    <div class="icon mr-2">
                      <span class="flaticon-visitor"></span>
                    </div>
                    <div class="desc text-left">
                      <strong class="number" data-number="450">${totalCompany}</strong>
                      <span>Công ty</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4 d-flex justify-content-center counter-wrap">
                <div class="block-18 text-center">
                  <div class="text d-flex">
                    <div class="icon mr-2">
                      <span class="flaticon-resume"></span>
                    </div>
                    <div class="desc text-left">
                      <strong class="number" data-number="80000">${totalRecruitment}</strong>
                      <span>Tuyển dụng</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="ftco-search my-md-5">
            <div class="row">
              <div class="col-md-12 nav-link-wrap">
                <div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                  <a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Tìm công việc</a>
                  <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Tìm theo tên công ty</a>
                  <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Tìm theo địa điểm</a>
                </div>
              </div>
              <div class="col-md-12 tab-wrap">
                <div class="tab-content p-4" id="v-pills-tabContent">

                  <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                    <form action="${pageContext.request.contextPath}/post/search" method="post" class="search-job">
                      <div class="row no-gutters">

                        <div class="col-md-10 mr-md-2">
                          <div class="form-group">
                            <div class="form-field">
                              <div class="icon"><span class="icon-map-marker"></span></div>
                              <input type="text" name="key" class="form-control" placeholder="Tìm kiếm công việc">
                            </div>
                          </div>
                        </div>
                        <div class="col-md">
                          <div class="form-group">
                            <div class="form-field">
                              <button type="submit" class="form-control btn btn-primary">Tìm kiếm</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>

                  <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                    <form action="${pageContext.request.contextPath}/post/searchReCompany" method="post" class="search-job">
                      <div class="row no-gutters">

                        <div class="col-md-10 mr-md-2">
                          <div class="form-group">
                            <div class="form-field">
                              <div class="icon"><span class="icon-map-marker"></span></div>
                              <input type="text" name="key" class="form-control" placeholder="Tìm kiếm theo tên công ty">
                            </div>
                          </div>
                        </div>
                        <div class="col-md">
                          <div class="form-group">
                            <div class="form-field">
                              <button type="submit" class="form-control btn btn-primary">Tìm kiếm</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                  <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                    <form action="${pageContext.request.contextPath}/post/searchReAddress" method="post" class="search-job">
                      <div class="row no-gutters">

                        <div class="col-md-10 mr-md-2">
                          <div class="form-group">
                            <div class="form-field">
                              <div class="icon"><span class="icon-map-marker"></span></div>
                              <input type="text" name="key" class="form-control" placeholder="Tìm kiếm theo địa điểm">
                            </div>
                          </div>
                        </div>
                        <div class="col-md">
                          <div class="form-group">
                            <div class="form-field">
                              <button type="submit" class="form-control btn btn-primary">Tìm kiếm</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<section class="ftco-section bg-light">
    <div class="container">
        <h4 style="margin-top: -20px">Kết quả tìm kiếm cho : <span>${key}</span></h4>
        <div class="row">
            <div class="col-lg-12 pr-lg-5">
                <div class="row">
                	<c:forEach var="tempRecruitmentByCompanyKey" items="${recruitmentCompanyByKey}">
                        <div class="col-md-12 ">
                            <div class="job-post-item p-4 d-block d-lg-flex align-items-center">
                                <div class="one-third mb-4 mb-md-0">
                                    <div class="job-post-item-header align-items-center">
                                        <span class="subadge">${tempRecruitmentByCompanyKey.type}</span>
                                        <h2 class="mr-3 text-black" ><a href="${pageContext.request.contextPath}/post/detailPost?id=${tempRecruitmentByCompanyKey.id}">${tempRecruitmentByCompanyKey.title}</a></h2>
                                    </div>
                                    <div class="job-post-item-body d-block d-md-flex">
                                        <div class="mr-3"><span class="icon-layers"></span> <a href="${pageContext.request.contextPath}/company/detailCompany?id=${tempRecruitmentByCompanyKey.company.id}">${tempRecruitmentByKey.company.companyName}</a></div>
                                        <div><span class="icon-my_location"></span> <span>${tempRecruitmentByCompanyKey.address}</span></div>
                                    </div>
                                </div>
                                <input type="hidden" id="idRe${tempRecruitmentByCompanyKey.id}" value="${tempRecruitmentByCompanyKey.id}">
                                <c:if test="${user.role.id == 2}">											
                                <div class="one-forth ml-auto d-flex align-items-center mt-4 md-md-0">
                                    <div>
                                        <a onclick="save(${tempRecruitmentByCompanyKey.id})" class="icon text-center d-flex justify-content-center align-items-center icon mr-2">
                                            <span class="icon-heart"></span>
                                        </a>
                                    </div>
                                    <a  data-toggle="modal" data-target="#exampleModal${tempRecruitmentByCompanyKey.id}" class="btn btn-primary py-2">Apply Job</a>
                                </div>
                                </c:if>
                            </div>
                        </div><!-- end -->
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal${tempRecruitmentByCompanyKey.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Ứng tuyển: <span>${tempRecruitmentByCompanyKey.title}</span></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form method="post" action="/user/apply-job">
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-12">
                                                    <select id="choose${tempRecruitmentByCompanyKey.id}" onchange="choosed(${tempRecruitmentByCompanyKey.id})" class="form-control" aria-label="Default select example">
                                                        <option selected>Chọn phương thức nộp</option>
                                                        <option value="1">Dùng cv đã cập nhật</option>
                                                        <option value="2">Nộp cv mới</option>
                                                    </select>
                                                </div>
                                                <div id="loai1${tempRecruitmentByCompanyKey.id}" style="display:none" class="col-12">
                                                    <label for="fileUpload" class="col-form-label">Giới thiệu:</label>
                                                    <textarea rows="10" cols="3" class="form-control" id="text${tempRecruitmentByCompanyKey.id}" ></textarea>
                                                </div>
                                                <div id="loai2${tempRecruitmentByCompanyKey.id}" style="display:none" class="col-12">
                                                    <label for="fileUpload" class="col-form-label">Chọn cv:</label>
                                                    <input type="file" class="form-control" id="fileUpload${tempRecruitmentByCompanyKey.id}" name="file" required>
                                                    <label for="fileUpload" class="col-form-label">Giới thiệu:</label>
                                                    <textarea rows="10" cols="3" class="form-control" id="text${tempRecruitmentByCompanyKey.id}"></textarea>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                                <button type="button" id="button1${tempRecruitmentByCompanyKey.id}" style="display: none" onclick="apply1(${tempRecruitmentByCompanyKey.id})" class="btn btn-primary">Nộp</button>
                                                <button type="button" id="button2${tempRecruitmentByCompanyKey.id}" style="display: none" onclick="apply(${tempRecruitmentByCompanyKey.id})" class="btn btn-primary">Nộp</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <c:if test="${tempRecruitmentByCompanyKey.size() == 0}">
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