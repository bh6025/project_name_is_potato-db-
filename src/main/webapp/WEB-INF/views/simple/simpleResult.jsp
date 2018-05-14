<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<style>
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
	#gh{
		font-family: 'Hanna', sans-serif; 
	}
	
	@media screen and (min-width: 800px)
	{ #emptyDivForMobile
		{
			display: none;
		}
	} 
</style>



<br><br>

<div class="container-fluid">
	<div id="emptyDivForMobile"><br/><br/></div>
	<div class="page-head">
		<h2 id="gh" style="color:#005000"><b>◆ 나의 기본 정보</b></font></h2>
	</div>

	<div class="edit-table">
		<div class="row">
			<div class="col-lg-12 col-sm-12">
				<div class="card m-b-30">
					<div class="card-body">

						<form action="/simple/modify.dbinc" method="post">
	
							<input type="hidden" id="userTotDep" value="${userTotDep}" />

							<!-- <font size="5" id="gh">나의 기본 정보</font> -->
							<p class="text-muted"></p>
							<!-- 보현 -->
								<div class="row" id="gh">
									<div class="col-md-3">
									<font size="4">월급</font><br/><input type="number" name="income"
									value="${userMoney.income}" class="form-control" ><br/>
									</div>
									<div class="col-md-3">
									<font size="4">지출(월 단위)</font><br/><input type="number" name="expense"
									value="${userMoney.expense}" class="form-control"><br/>
									</div>
									<div class="col-md-3">
									<font size="4">정기 저축(월 단위)</font><br/><input type="number" name="deposit"
									value="${userMoney.deposit}" class="form-control"><br/>
									</div>
									<div class="col-md-3">
									<font size="4">추가 저축(정기저축 이외)</font><br/><input type="number" name="total_deposit"
									value="0" class="form-control"><br/>
									</div>
								</div>
								
								<!-- 보현 -->
								<font size="3" id="gh">* 단위는 <b>(만원)</b> 입니다.</font>
								<br/>
								<font size="3" id="gh">* 추가 저축란에 <b>-(마이너스)</b> 금액 입력시 기존에 저축된 금액 <b>소비</b></font>
								<button id="modifyBtn" class="btn btn-primary mt-3"
									style="float: right"><font size="4" id="gh">변경하기</font></button>
							
						</form>
					</div>

				</div>
			</div>
		</div>
		<!--end row-->
	</div>

</div>
<!--end container-->


<!--  -->
<!--  -->
<!--  -->
<!--  -->
<!--  -->
<!--  -->
<!--  -->

<div class="page-head">
	<h2 id="gh" style="color:#005000"><b>◆ 저축 그래프</b></font></h2>
	<h5 id="gh">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;※ 나와 같은 연령대의 저축 정보를 확인해보자</h5>
</div>

<!--  MULTI LINE CHART -->
<div class="container-fluid">
	<div class="col-lg-12 col-sm-12">
		<div class="card m-b-30">
			<div class="card-body">
				<font size="5" id="gh">DEPOSIT CHART(3,5,10년)</font>
				<div id="multi-line-chart"></div>
			</div>
		</div>
	</div>
</div>

<!-- TABS& ACCORDIONS  -->
<div class="container-fluid">
	<div class="page-head">
		<h2 id="gh" style="color:#005000"><b>◆ 미래 구매 가능 품목<br></b></font></h2>
		<h5 id="gh">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;※ 당신이 곧(3, 5, 10년 후) 살 수 있는 품목을 알아보자</h5>
	</div>
	<div class="main-tabs">
		<div class="row">
			<div class="col-lg-12 col-sm-12">
				<div class="tab-2 m-b-30">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active"
							href="#home-3" data-toggle="tab" aria-expanded="false"><font size="5" id="gh">3년 후</font></a></li>
						<li class="nav-item"><a class="nav-link" href="#profile-2"
							id="level5" data-toggle="tab" aria-expanded="false"><font size="5" id="gh">5년 후</font></a></li>
						<li class="nav-item"><a class="nav-link" href="#about-2"
							id="level10" data-toggle="tab" aria-expanded="false"><font size="5" id="gh">10년 후</font></a></li>
					</ul>

					<!-- 여기가 있어야 안에 데이터가 들어간다. -->
					<!-- 3년 후 -->
					<div class="tab-content bg-white" id="gh">
						<div class="tab-pane active home-text p-4" id="home-3">

							<font size="6">After 3 years YOU CAN BUY:)</font>
							<p class="text-muted"><font size="3">Whatever you want, you can take it.</font>
							<div><font size="4">(YOU HAVE </font><font size="6">${userMoney.deposit*36}</font> <font size="4">ten thounsand won.)</font></div>
							</p>
							<p><font size="4" style="color:gray">But You have to save money. After 3 years, You can buy a
								car or a electric. Otherwise you can go travel.</font></p>

							<div class="row">
								<div class="col-sm-4">
									<img src="/resources/images/asset/car/${car.car_img}.png" width="100%" height="50%"
										alt="살 수 있는 차가 없습니다">
									
									<c:if test="${car.car_price != 0}">
									<hr />
									<font size="4">이 차의 이름은 </font><br>
									<font size="5">[${car.car_name}]</font><br>
									<font size="4"> 입니다.</font><br/>
									<hr />
									<font size="4">이 차의 금액은 </font><br>
									<font size="5">[${car.car_price}]</font><br>
									<font size="4"> 만원입니다.</font>
									</c:if>
									
									<c:if test="${car.car_price == 0}">
										<hr/>
										<font size="4">[${car.car_name}] </font><br/>
										<hr/>
										<font size="5">[${car.car_price}]</font><font size="4"> 원입니다.</font>
									</c:if>
								</div>

								<div class="col-sm-4">
									<img
										src="/resources/images/asset/electric/${electric.electric_img}" width="100%" height="50%"
										alt="살 수 있는 가전제품이 없습니다" />
									
									<c:if test="${electric.electric_price!=0}">
									<hr />
									<font size="4">이 가전제품의 이름은 </font><br>
									<font size="5">[${electric.electric_name}]</font><br>
									<font size="4"> 입니다.</font><br/>
									<hr />
									<font size="4">이 가전제품의 금액은 </font><br>
									<font size="5">[${electric.electric_price}]</font><br>
									<font size="4"> 만원입니다.</font>
									</c:if>
									
									
									<c:if test="${electric.electric_price==0}">
									<hr />
									<font size="4">[${electric.electric_name}]</font><br />
									<hr />
									<font size="5">[${electric.electric_price}]</font><font size="4"> 원입니다.</font>
									</c:if>
									
								</div>

								<div class="col-sm-4">
									<img src="/resources/images/asset/travel/${travel.travel_img}" width="100%" height="50%"
										alt="갈 수 있는 여행지가 없습니다" />
									<hr />
									<font size="4">이 여행지의 이름은 </font><br>
									<font size="5">[${travel.travel_name}]</font><br>
									<font size="4"> 입니다.</font><br/>
									<hr />
									<font size="4">이 여행지의 금액은 </font><br>
									<font size="5">[${travel.travel_price}]</font><br>
									<font size="4"> 만원입니다.</font>
								</div>
							</div>

						</div>

						<!-- 5년후 -->
						<!-- ajax통신해야해 -->
						<div class="tab-pane p-4" id="profile-2">
							<div class="tab-pane active home-text p-4">

								<font size="6">After 5 years YOU CAN BUY:)</font>
							<p class="text-muted"><font size="3">Whatever you want, you can take it.</font>
							<div><font size="4">(YOU HAVE </font><font size="6">${userMoney.deposit*60}</font> <font size="4">ten thounsand won.)</font></div>
							</p>
							<p><font size="4" style="color:gray">But You have to save money. After 5 years, You can buy a
								car or a electric. Otherwise you can go travel.</font></p>

								<div class="row">
									<div class="col-sm-4" id="gh">
									<img id="5yearCar" width="100%" height="50%" alt="살 수 있는 차가 없습니다">
										
										<hr/>
										<div id="result5"></div>
										
										<%-- 
										<c:if test="${car.car_price == 0}">
										<div id="5carname"></div>
										<hr/>
										<div id="5carprice"> 원입니다.</div>
 										</c:if>
									
									
										<c:if test="${car.car_price != 0}">
										<hr/>
										이 차의 이름은 <div id="5carname"></div><div>입니다.</div>
										<hr/>
										이 차의 가격은<div id="5carprice"></div><div>만원입니다.</div>
										</c:if>
										--%>
									</div>

									<div class="col-sm-4">
										<img  id="5yearElectric" width="100%" height="50%" alt="살 수 있는 가전제품이 없습니다">
										
										<hr />
										<font size="4">이 가전제품의 이름은 </font><font size="5"><div id="5elename">[${electric.electric_name}]</div></font>
										<font size="4">입니다.</font><br/>
										<hr />
										<font size="4">이 가전제품의 금액은 </font>
										<font size="5"><div id="5eleprice">[${electric.electric_price}] </div></font><font size="4">만원입니다.</font>
								
									</div>

									<div class="col-sm-4">
										<img  id="5yearTravel" width="100%" height="50%" alt="갈 수 있는 여행지가 없습니다">
										<hr />
										<font size="4">이 여행지의 이름은</font>
										<font size="5"><div id="5traname">[${travel.travel_name}]</div></font>
										<font size="4">입니다.</font><br/>
										<hr />
										<font size="4">이 여행지의 금액은</font>
										<font size="5"><div id="5traprice">[${travel.travel_price}]</div></font>
										<font size="4">만원입니다.</font>
									</div>

								</div>

							</div>
						</div>

						<!-- 10년 후 -->
						<!-- ajax통신 -->
						<div class="tab-pane p-4" id="about-2">

							<div class="tab-pane active home-text p-4">


								<font size="6">After 10 years YOU CAN BUY:)</font>
							<p class="text-muted"><font size="3">Whatever you want, you can take it.</font>
							<div><font size="4">(YOU HAVE </font><font size="6">${userMoney.deposit*120}</font> <font size="4">ten thounsand won.)</font></div>
							</p>
							<p><font size="4" style="color:gray">But You have to save money. After 10 years, You can buy a
								car or a electric. Otherwise you can go travel.</font></p>


								<div class="row">
									<div class="col-sm-4">
										<img id="10yearCar" width="100%" height="50%" alt="살 수 있는 차가 없습니다">
										<hr />
										<div id="result10"></div>
										<%-- 
										이 차의 이름은
										<div id="10carname">[${car.car_name}]</div>
										입니다.<br />
										<hr />
										이 차의 금액은
										<div id="10carprice">[${car.car_price}]</div>
										만원입니다.
										--%>
									</div>

									<div class="col-sm-4">
										<img src="" id="10yearElectric" width="100%" height="50%" alt="살 수 있는 가전제품이 없습니다">
										<hr />
											<font size="4">이 가전제품의 이름은</font>
											<font size="5"><div id="10elename">[${electric.electric_name}]</div></font>
											<font size="4">입니다.</font><br/>
										<hr/>
											<font size="4">이 가전제품의 금액은</font>
											<font size="5"><div id="10eleprice">[${electric.electric_price}]</div></font>
											<font size="4">만원입니다.</font>
									</div>

									<div class="col-sm-4">
										<img src="" id="10yearTravel"  width="100%" height="50%" alt="갈 수 있는 여행지가 없습니다">
										<hr />
										<font size="4">이 여행지의 이름은</font>
										<font size="5"><div id="10traname">[${travel.travel_name}]</div></font>
										<font size="4">입니다.</font><br />
										<hr />
										<font size="4">이 여행지의 금액은</font>
										<font size="5"><div id="10traprice">[${travel.travel_price}]</div></font>
										<font size="4">만원입니다.</font>
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


<div class="row">
	<div class="col-sm-3 ml-auto">
		<div class="card m-b-30">
			<div class="card-body text-center">
				<H5 style="color:#00BCD2" id="gh">
					<i class="mdi mdi-emoticon-happy"></i> 최근 소비정보 입력하러 가기!!
				</H5>
				<div class="button-list">
					<a href="/detail/detail.dbinc"><button type="button" class="btn btn-info"><h5 id="gh">소비 정보 입력하기</h5></button></a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-3">
		<div class="card m-b-30">
			<div class="card-body text-center">
				<H5 style="color: blue" id="gh">
					<i class="mdi mdi-emoticon-happy"></i> 최근 소비정보를 확인해볼까요?!
				</H5>
				<div class="button-list">
					<button id="goToResultBtn" type="button" class="btn btn-primary"><h5 id="gh">소비 정보 확인하기</h5></button>
				</div>
			</div>
		</div>
	</div>
</div>


	<div id="emptyDivForMobile"><br/><br/></div>

<script>
$(document).ready(function() {
	$("#goToResultBtn").click(function() {
		location.href = "/detail/detailSub.dbinc";
	});
});
</script>
<script>
	
</script>
	<script>
		$(document).ready(function() {
			$("#modifyBtn").click(function() {
				location.href = "/simple/modify.dbinc?user_id="+$("user_id").val()+"&income="+ $("#income").val()+ "&expense="+ $("#expense").val()+ "&deposit="+ $("#deposit").val();
				alert("변경되었습니다!");
			});
			
			
			$("#level5").click(function() {
				$.ajax({
					url :"/simple/ajaxAry5.dbinc",
					async:false,
					type : "post",
					dataType : "json",
					success : function(map){
						
						var txt = "";
						//alert("map.car.car_price "+map.car.car_price);
						if(map.car.car_price == 0) {
							txt += '<font size="4"><div id="5carname"></div></font>';
							txt += '<hr/>';
							txt += '<font size="5"><div id="5carprice"></div></font>';
							$("#result5").html(txt);
						}else {	
							
							txt+='<font size="4">이 차의 이름은</font>';
							txt+= '<font size="5"><div id="5carname"></div></font>';
							txt+='<font size="4"><div>입니다.</div></font>';
							txt+='<hr/>';
							txt+='<font size="4">이 차의 가격은</font>';
							txt+='<font size="5"><div id="5carprice"></div></font>';
							txt+='<font size="4"><div>만원입니다.</div><font>';
							$("#result5").html(txt);
						}
						
						////////////////////////////////////////
						$("#5yearCar").prop("src", "/resources/images/asset/car/"+map.car.car_img+".png");
						$("#5yearElectric").prop("src", "/resources/images/asset/electric/"+map.electric.electric_img);
						$("#5yearTravel").prop("src", "/resources/images/asset/travel/"+map.travel.travel_img);
						
						
						$("#5carname").html("["+[map.car.car_name]+"]");
						$("#5carprice").html("["+[map.car.car_price]+"]  원입니다.");
						$("#5elename").html("["+[map.electric.electric_name]+"]");
						$("#5eleprice").html("["+[map.electric.electric_price]+"]");
						$("#5traname").html("["+[map.travel.travel_name]+"]");
						$("#5traprice").html("["+[map.travel.travel_price]+"]");
					}
				});
				
			})
			
			$("#level10").click(function() {
				$.ajax({
					url :"/simple/ajaxAry10.dbinc",
					async:false,
					type : "post",
					dataType : "json",
					success : function(map){
						
						var txt = "";
						//alert("map.car.car_price "+map.car.car_price);
						if(map.car.car_price == 0) {
							txt +='<font size="4"><div id="10carname"></div></font>';
							txt +='<hr/>';
							txt +='<font size="5"><div id="10carprice"></div></font>';
							$("#result10").html(txt);
						}else {	
							
							txt+='<font size="4">이 차의 이름은</font>';
							txt+='<font size="5"><div id="10carname"></div></font>';
							txt+='<font size="4"><div>입니다.</div></font>';
							txt+='<hr/>';
							txt+='<font size="4">이 차의 가격은</font>';
							txt+='<font size="5"><div id="10carprice"></div></font>';
							txt+='<font size="4"><div>만원입니다.</div></font>';
							$("#result10").html(txt);
						}
						
						
						//////////////////////////////
						$("#10yearCar").prop("src", "/resources/images/asset/car/"+map.car.car_img+".png");
						$("#10yearElectric").prop("src", "/resources/images/asset/electric/"+map.electric.electric_img);
						$("#10yearTravel").prop("src", "/resources/images/asset/travel/"+map.travel.travel_img);
						$("#10carname").html("["+[map.car.car_name]+"]");
						$("#10carprice").html("["+[map.car.car_price]+"] 원입니다.");
						$("#10elename").html("["+[map.electric.electric_name]+"]");
						$("#10eleprice").html("["+[map.electric.electric_price]+"]");
						$("#10traname").html("["+[map.travel.travel_name]+"]");
						$("#10traprice").html("["+[map.travel.travel_price]+"]");	
					}
					});
			})
			
			
		});
		</script>

		<script>
		$(function() {
					"use strict";

					Morris.Area({
								element : 'multi-line-chart',
								data : [ {
									period : '2018',
									사용자 : ${userMoney.deposit},
									동일연령대 :  ${userTotDep.deposit}
									
								}, {
									period : '2021',
									사용자 : ${userMoney.deposit}*36,
									동일연령대 : ${userTotDep.deposit}*36
									
								}, {
									period : '2023',
									사용자 :  ${userMoney.deposit}*60,
									동일연령대 :  ${userTotDep.deposit}*60
									
								}, {
									period : '2028',
									사용자 :  ${userMoney.deposit}*120,
									동일연령대 :  ${userTotDep.deposit}*120
									
								}],
								xkey : 'period',
								ykeys : [ '사용자', '동일연령대' ],
								labels : [ '사용자', '동일연령대'],
								pointSize : 5,
								fillOpacity : 0,
								pointStrokeColors : [ '#ffcdd3', '#a1c3d3'],
								behaveLikeLine : true,
								gridLineColor : '#e0e0e0',
								lineWidth : 3,
								hideHover : 'auto',
								lineColors : [ '#ffcdd3', '#a1c3d3'],
								resize : true
							});
				}

				);
	</script>


	<%@include file="../include/footer.jsp"%>