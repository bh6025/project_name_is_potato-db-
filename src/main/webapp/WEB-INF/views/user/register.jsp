<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Mannat Themes">
<meta name="keyword" content="">

<title>SYNTRA | Responsive Web App Kit</title>

<!-- Theme icon -->
<link rel="shortcut icon" href="/resources/images/db.ico">

<!-- Theme Css -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/slidebars.min.css" rel="stylesheet">
<link href="/resources/css/icons.css" rel="stylesheet">
<link href="/resources/css/menu.css" rel="stylesheet" type="text/css">
<link href="/resources/css/style.css" rel="stylesheet">

<link href="/resources/plugins/switchery/switchery.min.css"
	rel="stylesheet" />
<link href="/resources/plugins/tagsinput/jquery.tagsinput.css"
	rel="stylesheet" />
<link href="/resources/plugins/clockpicker/jquery-clockpicker.min.css"
	rel="stylesheet" />
<link href="/resources/plugins/toggles/toggles.css" rel="stylesheet" />
<link href="/resources/plugins/timepicker/tempusdominus-bootstrap-4.css"
	rel="stylesheet" />
<link
	href="/resources/plugins/timepicker/bootstrap-material-datetimepicker.css"
	rel="stylesheet">
<link
	href="/resources/plugins/bootstrap-select/bootstrap-select.min.css"
	rel="stylesheet" />
<link href="/resources/plugins/colorpicker/asColorPicker.min.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/plugins/jquery-multi-select/multi-select.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/plugins/select2/select2.min.css" rel="stylesheet"
	type="text/css" />
<style>
body {
	background-image: url('/resources/images/back.jpg');
}
</style>
</head>

<style>
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
	#gh{
		font-family: 'Hanna', sans-serif; 
	}
</style>

<body class="sticky-header">
	<section class="bg-login">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12">
					<div class="wrapper-page">
						<div class="account-pages">
							<div class="account-box">
								<div class="card m-b-30">
									<div class="card-body">
										<div class="card-title text-center">
											<img src="/resources/images/userImg/DB.JPG" width="100" alt="" class="">
											<h4 class="mt-3" id="gh">티끌모아 태산 시스템 가입 화면</h4>
											<br />
											<h1 class="mt-3" id="gh">
												<b>♥환영합니다♥</b>
											</h1>
										</div>
										<form class="form mt-5 contact-form" action="/user/join.dbinc"
											method="post" enctype="multipart/form-data">
											<div class="form-group" id="gh">
												<div class="col-sm-12">
													<input class="form-control form-control-line" type="text"
														name="user_id" placeholder="아이디" required="required">
												</div>
											</div>
											<div class="form-group" id="gh">
												<div class="col-sm-12">
													<input class="form-control form-control-line"
														name="user_pwd" type="password" placeholder="비밀번호"
														required="required">
												</div>
											</div>
											<div class="form-group" id="gh">
												<div class="col-sm-12">
													<input class="form-control form-control-line"
														type="password" placeholder="비밀번호 재입력" required="required">
												</div>
											</div>
											<div class="form-group" id="gh">
												<div class="col-sm-12">
													<input class="form-control form-control-line" type="email"
														name="user_email" placeholder="이메일 주소" required="required">
												</div>
											</div>
											<div class="form-group" id="gh">
												<div class="col-sm-12">
													<input class="form-control form-control-line" type="text"
														name="user_name" placeholder="이름" required="required">
												</div>
											</div>
											<div class="form-group" id="gh">
												<div class="col-sm-12">
													<input class="form-control form-control-line" type="text"
														name="user_dept" placeholder="부서" required="required">
												</div>
											</div>
											<div class="form-group" id="gh">
												<font size="4">직급</font>
												<div class="col-sm-6">
													<select class="selectpicker" name="user_job"
														data-style="form-control btn-warning">
														<option>사원</option>
														<option>대리</option>
														<option>과장</option>
														<option>차장</option>
														<option>부장</option>
														<option>부사장</option>
														<option>사장</option>
													</select>
												</div>
											</div>

											<div class="form-group" id="gh">
												<font size="4">연령</font>
												<div class="col-sm-6">
													<select class="selectpicker" name="user_age"
														data-style="form-control btn-info">
														<option>20대</option>
														<option>10대</option>
														<option>30대</option>
														<option>40대</option>
														<option>50대</option>
														<option>60대</option>
														<option>기타</option>
													</select>
												</div>
											</div>

											<div class="col-xl-12" id="gh">
												<div class="card m-b-30">
													<div class="card-body">
														<h5>사진 넣기</h5>
														<label for="input-file-now">(선택사항)</label> <input type="file"
															name = "user_file" id="input-file-now" class="dropify" />
													</div>
												</div>
											</div>

											<div class="form-group" id="gh">
												<div class="col-sm-12 mt-4">
													<button class="btn btn-primary btn-block" type="submit"><font size="4">가입하기</font></button>
												</div>
											</div>

											<div class="form-group" id="gh">
												<div class="col-sm-12 mt-4 text-center">
													<a href="/"><font size="4">이미 아이디가 있으신가요??</font></a>
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
	</section>

	<!-- jQuery -->
	<script src="/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/resources/js/popper.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery-migrate.js"></script>
	<script src="/resources/js/modernizr.min.js"></script>
	<script src="/resources/js/jquery.slimscroll.min.js"></script>
	<script src="/resources/js/slidebars.min.js"></script>

	<script src="/resources/plugins/timepicker/moment.js"></script>
	<script src="/resources/plugins/clockpicker/jquery-clockpicker.min.js"></script>
	<script src="/resources/plugins/tagsinput/jquery.tagsinput.min.js"></script>
	<script src="/resources/plugins/switchery/switchery.min.js"></script>
	<script src="/resources/plugins/toggles/toggles.min.js"></script>
	<script
		src="/resources/plugins/timepicker/tempusdominus-bootstrap-4.js"></script>
	<script
		src="/resources/plugins/timepicker/bootstrap-material-datetimepicker.js"></script>

	<!--colorpcker-->
	<script src="/resources/plugins/colorpicker/jquery-asColor.js"
		type="text/javascript"></script>
	<script src="/resources/plugins/colorpicker/jquery-asGradient.js"
		type="text/javascript"></script>
	<script
		src="/resources/plugins/colorpicker/jquery-asColorPicker.min.js"
		type="text/javascript"></script>

	<script
		src="/resources/plugins/jquery-multi-select/jquery.multi-select.js"
		type="text/javascript"></script>
	<script
		src="/resources/plugins/jquery-multi-select/jquery.quicksearch.js"
		type="text/javascript"></script>
	<script
		src="/resources/plugins/bootstrap-inputmask/bootstrap-inputmask.min.js"
		type="text/javascript"></script>
	<script
		src="/resources/plugins/bootstrap-select/bootstrap-select.min.js"
		type="text/javascript"></script>
	<script src="/resources/plugins/spinner/spinner.min.js"
		type="text/javascript"></script>
	<script src="/resources/plugins/select2/select2.min.js"
		type="text/javascript"></script>
	<script src="/resources/pages/jquery.form-advance.init.js"
		type="text/javascript"></script>

	<!--app js-->
	<script src="/resources/js/jquery.app.js"></script>

</body>
</html>
