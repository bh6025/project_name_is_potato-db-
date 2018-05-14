<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


<br>
<div class="container-fluid text-center">
	<h1 id="gh" style="color:#005000">${loginUser.user_name}씨의 미래 자산은!</h1>
</div>
<br>

<fmt:parseNumber var="deposit" value="${depositMoney.total_deposit}" integerOnly="true"/>

<div class="container-fluid text-center">
	<div class="row">
	<div class="col-4 text-center card bg-white">
		<div class="row">
			<div class ="col-lg-6" style="text-align:right;">
				<h2 class="m-0 counter" id="gh">
					<fmt:formatNumber value="${(userMoney.deposit * 36)+deposit}" pattern=".0"/>
				</h2>
			</div>
	    	<div class ="col-lg-2" style="text-align:left;" id="gh">
				<h4 id="gh">만원</h4>
			</div>
		</div>
    	<h5 id="gh">(3년 후 저축 금액)</h5> 
	</div>
	<div class="col-4 text-center card bg-white">
		<div class="row">
			<div class ="col-lg-6" style="text-align:right;">
				<h2 class="m-0 counter" id="gh">
					<fmt:formatNumber value="${(userMoney.deposit * 60)+deposit}" pattern=".0"/>
				</h2>
				
			</div>
	    	<div class ="col-lg-2" style="text-align:left;">
				<h4 id="gh">만원</h4>
			</div>
		</div>
    	<h5 id="gh">(5년 후 저축 금액)</h5> 
	</div>
	<div class="col-4 text-center card bg-white">
		<div class="row">
			<div class ="col-lg-6" style="text-align:right;">
				<h2 class="m-0 counter" id="gh">
					<fmt:formatNumber value="${(userMoney.deposit * 120)+deposit}" pattern=".0"/>
				</h2>
			</div>
	    	<div class ="col-lg-2" style="text-align:left;">
				<h4 id="gh">만원</h4>
			</div>
		</div>
    	<h5 id="gh">(10년 후 저축 금액)</h5> 
	</div>
</div>
<!--  차    -->

<div class="row">
	<div class="col-lg-4 col-sm-12 card bg-white">
		<div class="text-center ">
			<h1 id="gh">자동차</h1>
		</div>
		<div class="m-b-30">
			<div id="carouselCar" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="text-center">
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<h1 id="gh">미래의 내 차?</h1>
							<br /><br />
							<br /><br />
							<br /><br />
							<br /><br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
						</div>
					</div>

					<c:forEach var="car" items="${car}">
						<div class="carousel-item">
							<img src="/resources/images/asset/car/${car.car_img}.png" alt="차"
								class="img-fluid" width="500" height="360"> <br />
							<br />
							<br />
							<br />
							<br />
							<div class="card-body widget-blog">
								<div class="text-muted mb-2" id="gh">
									<font size="4"><i class="mdi mdi-square-inc-cash" style="color:#f00;"></i> 가격 : <a href="#">
									<span class="text-muted">${car.car_price} 만원</span></a></font>
								</div>
								<div class="card-title mb-2">
									<font size="5" id="gh">${car.car_name}</font>
								</div>
								<p class="card-text">

									<c:if test="${((userMoney.deposit * 36)+deposit) - car.car_price  >= 0}">
										<div class="alert alert-primary" id="gh"><font size="4">지금 월 저축이면 3년 후엔 충분히 사실 수 있습니다!</font></div>
									</c:if>
									
									<c:if test="${car.car_price - ((userMoney.deposit * 36)+deposit) > 0}">
									<fmt:parseNumber var="threeCar" value="${(car.car_price - ((userMoney.deposit * 36)+deposit)) / 36}" integerOnly="true" />
										<div class="alert alert-danger" id="gh"><font size="4">3년 후에는
											힘듭니다. <b>${threeCar}</b> 만원씩
											매달 더 모으셔야 되요!</font></div>
									</c:if>

									<c:if test="${((userMoney.deposit * 60)+deposit) - car.car_price  >= 0}">
										<div class="alert alert-primary" id="gh"><font size="4">지금 월 저축이면 5년 후엔 충분히 사실
											수 있습니다!</font></div>
									</c:if>
									
									<c:if test="${car.car_price - ((userMoney.deposit * 60)+deposit) > 0}">
									<fmt:parseNumber var="fiveCar" value="${(car.car_price - ((userMoney.deposit * 60)+deposit)) / 60}" integerOnly="true" />
										<div class="alert alert-danger" id="gh"><font size="4">5년 후에는
											힘듭니다. <b>${fiveCar}</b> 만원씩
											매달 더 모으셔야 되요!</font></div>
									</c:if>

									<c:if test="${((userMoney.deposit * 120)+deposit) - car.car_price  >= 0}">
										<div class="alert alert-primary" id="gh"><font size="4">지금 월 저축이면 10년 후엔 충분히 사실
											수 있습니다!</font></div>
									</c:if>
									
									<c:if test="${car.car_price - ((userMoney.deposit * 120)+deposit) > 0}">
									<fmt:parseNumber var="tenCar" value="${(car.car_price - ((userMoney.deposit * 120)+deposit)) / 120}" integerOnly="true" />
										<div class="alert alert-danger" id="gh"><font size="4">10년 후에도... 휴... <b>${tenCar}</b> 만원씩
											매달 더 모으셔야 되요!</font></div>
									</c:if>
								</p>
							</div>
						</div>
					</c:forEach>
				</div>

				<a class="carousel-control-prev" href="#carouselCar" role="button"
					data-slide="prev"> <span class="carousel-control-prev-icon"
					aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselCar" role="button"
					data-slide="next"> <span class="carousel-control-next-icon"
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>
			</div>


		</div>
	</div>

	<!--  전자제품   -->
	<div class="col-lg-4 col-sm-12 card bg-white">
		<div class="text-center ">
			<h1 id="gh">전자제품</h1>
		</div>
		<div class="m-b-30">
			<div id="carouselElectric" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="text-center">
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<h1 id="gh">미래의 내 전자제품?</h1>
							<br /><br /><br /><br /><br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
						</div>
					</div>

					<c:forEach var="electric" items="${electric}">
						<div class="carousel-item">
							<div class="text-center">
								<img
									src="/resources/images/asset/electric/${electric.electric_img}"
									alt="전자제품"  class="img-fluid">
							</div>
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<div class="card-body widget-blog">
								<div class="text-muted mb-2" id="gh">
									<font size="4"><i class="mdi mdi-square-inc-cash" style="color:#f00;"></i> 가격 : <a href="#"><span
										class="text-muted">${electric.electric_price} 만원</span></a></font>
								</div>
								<div class="card-title mb-2">
									<font size="5" id="gh">${electric.electric_name}</font>
								</div>
								<p class="card-text">

									<c:if test="${((userMoney.deposit * 36) + deposit) - electric.electric_price  >= 0}">
										<div class="alert alert-primary" id="gh"><font size="4">지금 월 저축이면 3년 후엔 충분히 사실
											수 있습니다!</font></div>
									</c:if>
									
									<c:if test="${electric.electric_price - ((userMoney.deposit * 36) + deposit) > 0}">
									<fmt:parseNumber var="threeElectric" value="${(electric.electric_price - ((userMoney.deposit * 36)+deposit)) / 36}" integerOnly="true" />
										<div class="alert alert-danger" id="gh"><font size="4">3년 후에는
											힘듭니다. <b>${threeElectric}</b> 만원씩
											매달 더 모으셔야 되요!</font></div>
									</c:if>

									<c:if test="${((userMoney.deposit * 60) + deposit) - electric.electric_price   >= 0}">
										<div class="alert alert-primary" id="gh"><font size="4">지금 월 저축이면 5년 후엔 충분히 사실
											수 있습니다!</font></div>
									</c:if>
									
									<c:if test="${electric.electric_price - ((userMoney.deposit * 60)+deposit) > 0}">
									<fmt:parseNumber var="fiveElectric" value="${(electric.electric_price - ((userMoney.deposit * 60)+deposit) ) / 60}" integerOnly="true" />
										<div class="alert alert-danger" id="gh"><font size="4">5년 후에도
											힘듭니다... <b>${fiveElectric}</b> 만원씩
											매달 더 모으셔야 되요!</font></div>
									</c:if>

									<c:if test="${((userMoney.deposit * 120)+deposit) - electric.electric_price  >= 0}">
										<div class="alert alert-primary" id="gh"><font size="4">지금 월 저축이면 10년 후엔 충분히 사실
											수 있습니다!</font></div>
									</c:if>
									
									<c:if test="${electric.electric_price - ((userMoney.deposit * 120)+deposit) > 0}">
									<fmt:parseNumber var="tenElectric" value="${(electric.electric_price - ((userMoney.deposit * 120)+deposit)) / 120}" integerOnly="true" />
										<div class="alert alert-danger" id="gh"><font size="4">10년 후에도... 휴... <b>${tenElectric}</b> 만원씩
											매달 더 모으셔야 되요!</font></div>
									</c:if>
								</p>
							</div>
						</div>
					</c:forEach>
				</div>
				<a class="carousel-control-prev" href="#carouselElectric"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselElectric"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>


	<!--  여행지    -->
	<div class="col-lg-4 col-sm-12 card bg-white">
		<div class="text-center ">
			<h1 id="gh">여행지</h1>
		</div>
		<div class="m-b-30">
			<div id="carouselTravel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="text-center">
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<h1 id="gh">미래에 놀러갈 여행지?</h1>
							<br /><br /><br /><br /><br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
						</div>
					</div>

					<c:forEach var="travel" items="${travel}">
						<div class="carousel-item">
							<div class="text-center">
								<img src="/resources/images/asset/travel/${travel.travel_img}"
									alt="여행지" width="500" height="360" class="img-fluid">
							</div>
							<br />
							<br />
							<br />
							<br />
							<br />
							<div class="card-body widget-blog">
								<div class="text-muted mb-2"  id="gh">
									<font size="4"><span><i class="mdi mdi-square-inc-cash" style="color:#f00;"></i> 가격 : <a href="#"><span
										class="text-muted">${travel.travel_price} 만원</span></a></font>
								</div>
								<div class="card-title mb-2">
									<font size="5"  id="gh">${travel.travel_name}</font>
								</div>
								<p class="card-text">

									<c:if test="${((userMoney.deposit * 36)+ deposit)  - travel.travel_price  >= 0}">
										<div class="alert alert-primary" id="gh"><font size="4">지금 월 저축이면 3년 후엔 충분히 사실
											수 있습니다!</font></div>
									</c:if>
									
									<c:if test="${travel.travel_price - ((userMoney.deposit * 36)+deposit) > 0}">
										<fmt:parseNumber var="threeTravel" value="${(travel.travel_price - ((userMoney.deposit * 36)+deposit)) / 36}" integerOnly="true" />
											<div class="alert alert-danger" id="gh"><font size="4">3년 후에는
												힘듭니다. <b>${threeTravel}</b> 만원씩
												매달 더 모으셔야 되요!</font></div>
									</c:if>

									<c:if test="${((userMoney.deposit * 60)+ deposit)  - travel.travel_price >= 0}">
										<div class="alert alert-primary" id="gh"><font size="4">지금 월 저축이면 5년 후엔 충분히 사실
											수 있습니다!</font></div>
									</c:if>
									
									<c:if test="${travel.travel_price - ((userMoney.deposit * 60)+deposit) > 0}">
									<fmt:parseNumber var="fiveTravel" value="${(travel.travel_price - ((userMoney.deposit * 60)+deposit)) / 60}" integerOnly="true" />
										<div class="alert alert-danger" id="gh"><font size="4">5년 후에도
											힘듭니다... <b>${fiveTravel}</b> 만원씩
											매달 더 모으셔야 되요!</font></div>
									</c:if>

									<c:if test="${((userMoney.deposit * 120)+deposit) - travel.travel_price  >= 0}">
										<div class="alert alert-primary" id="gh"><font size="4">지금 월 저축이면 10년 후엔 충분히 사실
											수 있습니다!</font></div>
									</c:if>
									
									<c:if test="${travel.travel_price - ((userMoney.deposit * 120)+deposit) > 0}">
									<fmt:parseNumber var="tenTravel" value="${(travel.travel_price - ((userMoney.deposit * 120)+deposit) )/ 120}" integerOnly="true" />
										<div class="alert alert-danger" id="gh"><font size="4">10년 후에도... 휴... <b>${tenTravel}</b> 만원씩
											매달 더 모으셔야 되요!</font></div>
									</c:if>
								</p>
							</div>
						</div>
					</c:forEach>
				</div>
				<a class="carousel-control-prev" href="#carouselTravel"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselTravel"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
</div>
</div>

<div class="col-sm-3 ml-auto">
   	<div class="card m-b-30">
       	<div class="card-body text-center">
       		<H5 style="color:green"  id="gh"><i class="mdi mdi-emoticon-happy"></i>상세 소비 정보를 분석해볼까요?!</H5>
       		<div class="button-list">
                  	<a href="/mine/totalExpense.dbinc">
                  		<button id="goToExpenseBtn" type="button" class="btn btn-primary">
                  		<h5 id="gh">상세 소비 정보 분석하기</h5>
                  	</button>
                  </a> 
               </div>
    	</div>
    </div>
</div>

<div id="emptyDivForMobile"><br/><br/></div>

<%@include file="../include/footer.jsp"%>