<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>
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

<link href="/resources/plugins/morris-chart/morris.css" rel="stylesheet">
<!-- Theme Css -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/slidebars.min.css" rel="stylesheet">
<link href="/resources/css/icons.css" rel="stylesheet">
<link href="/resources/css/menu.css" rel="stylesheet" type="text/css">
<link href="/resources/css/style.css" rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"
	integrity="sha384-SlE991lGASHoBfWbelyBPLsUlwY1GwNDJo3jSJO04KZ33K2bwfV9YBauFfnzvynJ"
	crossorigin="anonymous"></script>

<style>
#styleLogo {
background-color: #25675F;
}

#styleLeft {
background-color:  #3AA396;

}

#styleHeader {
background-color: #30877C;
}

#styleContent {
}

@media screen and (max-width: 1400px)
{ #headGoalText
	{
		display: none;
	}
} 

@media screen and (max-width: 1000px)
{ #headRightInformationButton
	{
		display: none;
	}
} 

</style>

</head>

<style>
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
	#gh{
		font-family: 'Hanna', sans-serif; 
	}
</style>

<body class="sticky-header" id="styleLeft">
	<section>
		<!-- sidebar left start-->
		<div class="sidebar-left" id="gh">
			<div class="sidebar-left-info">

				<div class="user-box">
					<div class="d-flex justify-content-center">
						<img src="/resources/images/userImg/${loginUser.user_img}"
							alt="엑박" class="img-fluid rounded-circle">
					</div>
					<div class="text-center text-white mt-2">
						<font size="5">${loginUser.user_name}</font>
						<h5>${loginUser.user_dept}/${loginUser.user_job}</h5>
					</div>
				</div>

				<!--sidebar nav start-->
				<ul class="side-navigation">
					<li>
						<h3 class="navigation-title">Navigation</h3>
					</li>
					<li class="menu-list"><a href="/mine/modify.dbinc"><i
							class="mdi mdi-gauge"></i> <span><font size="4">내 정보</font></span></a>
						<ul class="child-list">
							<li ><a href="/mine/goal.dbinc" style="color:white"><font size="4">목표 저축 정보</font></a></li>
							<li><a href="/mine/futureAsset.dbinc" style="color:white"><font size="4">미래 자산 분석</font></a></li>
							<li><a href="/mine/totalExpense.dbinc" style="color:white"><font size="4">소비 정보 분석</font></a></li>
							<li><a href="/user/modifyForm.dbinc" style="color:white"><font size="4">개인정보 변경</font></a></li>
						</ul></li>
					<li class="menu-list"><a href="/simple/simpleMain.dbinc"><i
							class="mdi mdi-buffer"></i> <span><font size="4">기본 통계</font></span></a>
						<ul class="child-list">
							<li><a href="/simple/simple.dbinc" style="color:white"><font size="4">데이터 입력</font></a></li>
							<li><a href="/simple/simpleResult.dbinc" style="color:white"><font size="4">기본 통계 결과</font></a></li>
						</ul></li>


					<li class="menu-list"><a href="/detail/detailMain.dbinc"><i
							class="mdi mdi-chart-arc"></i> <span><font size="4">상세 통계</font></span></a>
						<ul class="child-list">
							<li><a href="/detail/detail.dbinc" style="color:white"><font size="4">데이터 입력</font></a></li>
							<li><a href="/detail/detailSub.dbinc" style="color:white"><font size="4">상세통계 결과</font></a></li>
						</ul></li>

					<li class="menu=list"><a href="/board/board.dbinc?page=1"><i
							class="mdi mdi-table"></i> <span><font size="4">게시판</font></span></a></li>
				</ul>
				<!--sidebar nav end-->
			</div>
		</div>
		<!-- sidebar left end-->

		<!-- body content start-->
		<div class="body-content" id="styleContent">
			<!-- header section start-->
			<div class="header-section" id="styleHeader">
				<!--logo and logo icon start-->
				<div class="logo" id="styleLogo">
					<a href="/simple/simpleResult.dbinc"> <span class="logo-img">
							<img src="/resources/images/dbpoint.PNG" alt=""
							style='max-width: 100%; max-height: 50px;'">
					</span> <!--<i class="fa fa-maxcdn"></i>--> <span class="brand-name">DB Money</span>
					</a>
				</div>
				   <!--toggle button start-->
                    <a class="toggle-btn"><i class="ti ti-menu"></i></a>
                    <!--toggle button end-->
				
				<div id="headGoalText"
					class="col-md-2 col-md-push-2 navbar-collapse collapse mega-menu" style="color:white" id="gh">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font id="gh">▶ 목표금액 달성도 >> </font><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font id="gh">▶ 목표금액 : ${userMoney.goal_deposit} 만원</font><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font id="gh">▶ 저축금액 : <fmt:formatNumber value="${depositMoney.total_deposit}" pattern=".0"/> 만원</font>
				</div>

				<!--  바 시작  -->
				<div class="col-md-7 col-8 navbar-collapse collapse mega-menu">
					<div class="progress my-3" style="height: 26px;">
						<div
							class="progress-bar progress-bar-striped progress-bar-animated bg-warning"
							role="progressbar"
							style="width: ${depositMoney.total_deposit*100 / userMoney.goal_deposit}%;"
							aria-valuenow="${depositMoney.total_deposit*100 / userMoney.goal_deposit}"
							aria-valuemin="0" aria-valuemax="100">
							
							<c:if
							test="${depositMoney.total_deposit*100 / userMoney.goal_deposit > 50}">
								<div class="row">
									<div class="col-md-10" align="right">
									<h5 class="m-0 counter" id="gh">${depositMoney.total_deposit*100 / userMoney.goal_deposit}</h5>
									</div>
									<div>
									<h5 id="gh">% 달성 !</h5>
									</div> 
								</div>
							</c:if>

						</div>
						
							<c:if
								test="${depositMoney.total_deposit*100 / userMoney.goal_deposit <= 50}">
								<h5 class="m-0 counter" id="gh">${depositMoney.total_deposit*100 / userMoney.goal_deposit}</h5><h5 id="gh">&nbsp;% 달성 !</h5>
							</c:if>
					</div>
				</div>
				<!--  바 종료  -->
				
				<div class="col-lg-1 navbar-collapse collapse mega-menu"></div>
				<div class="notification-wrap" id="headRightInformationButton">
					<!--right notification start-->
					<div class="right-notification">
						<ul class="notification-menu">
							<li><a href="javascript:;" data-toggle="dropdown"> <img
									src="/resources/images/userImg/${loginUser.user_img}" alt="엑박">
							</a>
								<div class="dropdown-menu dropdown-menu-right profile-menu" id="gh">

									<a class="dropdown-item" href="/mine/goal.dbinc">
										<font size="4"><i class="mdi mdi-account-circle m-r-5 text-muted"></i> 목표</font></a> 
									<a class="dropdown-item" href="/mine/modify.dbinc">
										<font size="4"><i class="mdi mdi-settings m-r-5 text-muted"></i> 개인정보 변경</font></a> 
									<a class="dropdown-item" href="/mine/totalExpense.dbinc">
										<font size="4"><i class="mdi mdi-lock-open-outline m-r-5 text-muted"></i> 상세소비분석</font></a> 
									<a class="dropdown-item" data-animation="swing" data-toggle="modal" href="#logoutModal">
										<font size="4"><i class="mdi mdi-logout m-r-5 text-muted"></i> 로그아웃</font></a>
								</div></li>
						</ul>
					</div>

					<!--right notification end-->
				</div>
			</div>
			<!-- header section end-->

			<!-- Modal -->

			<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document" id="gh">
					<div class="modal-content bg-modal-gred-3">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel"><b>로그아웃 창</b></h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body"><font size="4">정말 로그아웃 하시겠습니까...??</font></div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal"><font size="4">아니요. 좀 더 둘러보겠습니다.</font></button>
							<a href="/user/logout.dbinc"><button type="button"
									class="btn btn-secondary"><font size="4">예</font></button></a>
						</div>
					</div>
				</div>
			</div>

			<div
				style="position: fixed; bottom: 1%; right: 2%; z-index: 2; cursor: pointer;"
				onclick="window.scrollTo(0,0);">
				<img src="/resources/images/dbpoint.PNG" style="height: 40px;">
				<p style="color: green; text-align: center; vertical-align: top;">TOP
			</div>