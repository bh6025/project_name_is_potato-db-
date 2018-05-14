<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
								<div class="card m-b-30"  id="gh">

									<!--  -->
									<c:if test="${alert==1}">
										<div class="alert alert-info btn  btn-lg" role="alert">
											해당 메일에 임시암호가 발송되었습니다.</div>
									</c:if>
									<c:if test="${alert==0}">
										<div class="alert alert-danger btn btn-lg" role="alert">해당
											메일 주소가 존재하지 않습니다.</div>
									</c:if>

									<!--  -->

									<div class="card-body">
										<div class="card-title text-center">
											<img src="/resources/images/dbpoint.PNG" style="width:25%" alt="" class="">
											<h4 class="mt-3">
												<b>비밀번호 찾기</b>
											</h4>
										</div>
										<form method="post" action="/mail/mail.dbinc" role="form"
											class="text-center contact-form">
											<div class="alert alert-info alert-dismissable mt-4">
												<button type="button" class="close text-white" data-dismiss="alert" aria-hidden="true">×</button>
												<font size="4">비밀번호를 찾으실 아이디의 <b style="color:lightgreen">이메일</b> 을 입력해주세요.</font>
											</div>
											<div class="form-group mt-5">
												<div class="input-group">
													<input name="user_email" type="email" class="form-control"
														placeholder="이메일 입력( ex> abc@email.com ) "
														required="required">
												</div>
											</div>
											<div class="form-group">
												<div class="col-sm-12 mt-3 px-0">
													<button class="btn btn-primary btn-block" type="submit"><font size="4">찾기</font></button>
												</div>
												
												<a class="btn btn-default"  href="/" ><b><font size="4">로그인 화면으로!</font></b></a>
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


	<!--app js-->
	<script src="/resources/js/jquery.app.js"></script>
</body>
</html>
