<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="description" content="로그인 페이지">
<meta name="author" content="dbinc">
<meta name="keyword" content="">

<title>티끌모아 태산 / 로그인</title>

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
	background-image : url('/resources/images/back.jpg');
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
											<img src="/resources/images/dbpoint.PNG" style="width:10%"alt="" class="">
											<h3 class="mt-3" id="gh">
												<b>'티끌모아 태산 시스템'에 오신 것을<br>환영합니다</b>
											</h3>
										</div>
										<form class="form mt-5 contact-form" action="/user/login.dbinc" method="post">
											<div class="form-group" id="gh">
												<div class="col-sm-12">
													<input class="form-control form-control-line" type="text"
														name = "user_id" placeholder="아이디" required="required">
												</div>
											</div>
											<div class="form-group" id="gh">
												<div class="col-sm-12">
													<input class="form-control form-control-line"
														name = "user_pwd" type="password" placeholder="비밀번호" required="required">
												</div>
											</div>

											<div class="form-group" id="gh">
												<div class="col-sm-12 mt-4">
													<button class="btn btn-primary btn-block" type="submit">로그인
													</button>
												</div>
											</div>

											<div class="form-group" id="gh">
												<div class="col-sm-12 mt-4 text-center">
													<a href="/user/register.dbinc"><i class="fa fa-lock m-r-5"></i>
														<font size="4">회원가입</font></a>
												</div>
											</div>

											<div class="form-group" id="gh">
												<div class="col-sm-12 mt-4 text-center">
													<a href="/user/recover.dbinc"><i class="fa fa-lock m-r-5"></i>
														<font size="4">비밀번호 찾기</font></a>
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
	
<script>
	var flag = '${flag}';
	
	if(flag=='loginFail'){
	alert('아이디나 비밀번호가 틀렸습니다. 다시 로그인해주시길 바랍니다.');
	}
</script>

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
