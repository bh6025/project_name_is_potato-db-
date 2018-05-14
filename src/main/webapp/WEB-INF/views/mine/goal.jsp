<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

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

<section>
	<br> <br>
</section>


<div class="container text-center">
	<div class="row">
		<div class="col-lg-12 col-sm-12">
			<div class="card m-b-30">
				<br>
				<h1 id="gh" style="color:#005000"><b>목표 저축 금액</b></font></h1>	
				<br>
				<div class="col-lg-12">
	                <div class="card m-b-30">
	                    <div class="card-body">
	                        <!-- <h5 class="header-title pb-3">목표 달성도</h5>    --> 
	                        <p id="gh" align="center"><font size="5" >목표 달성도</font></p>         
	                        <div class="panel-body">
	                            <canvas id="lineChart"></canvas>
	                        </div>
	                    </div>
	                </div>
	            </div>
				<div class="page-head"></div>
				<div class="data-table">
					<div class="row">
						<div class="col-lg-12 col-sm-12">
							<div class="card-body table-responsive">
								<h2 id="gh" style="color:#005000"><font size="7">${loginUser.user_name}</font>
								씨의 목표!</font></h2>	<br>
								<div class="table-odd">
									<table id="datatable" class="table table-bordered">
										<thead>
											<tr>
												<th id="gh"><font size="5">구분</font></th>
												<th id="gh"><font size="5">정보</font></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td id="gh"><font size="4">현재 까지 모은 금액</font></td>
												<fmt:parseNumber var="deposit" value="${depositMoney.total_deposit}" integerOnly="true" />
												<td id="gh"><font size="4">${deposit} 만원</font></td>
											</tr>
											<tr>
												<td id="gh"><font size="4">목표 저축액</font></td>
												<td id="gh"><font size="4">${userMoney.goal_deposit} 만원</font></td>

											</tr>
											<tr>
												<td id="gh"><font size="4">월 저축액</font></td>
												<td id="gh"><font size="4">${userMoney.deposit} 만원</font></td>
											</tr>
											<tr>
												<td id="gh"><font size="4">목표 달성률</font></td>
												<fmt:parseNumber var="goal" value="${depositMoney.total_deposit * 100 / userMoney.goal_deposit}" integerOnly="true" />
												<td id="gh"><font size="4">${goal} %</font></td>
											</tr>
											<tr>
												<td id="gh"><font size="4">목표까지 남은 개월 수</font></td>
												<fmt:parseNumber var="goalMonth" value="${((userMoney.goal_deposit-depositMoney.total_deposit) / userMoney.deposit)}" integerOnly="true" />
												<td id="gh"><font size="4">${goalMonth} 개월
													<c:if test ="${goalMonth >= 12}">
													<fmt:parseNumber var="goalYear" value="${goalMonth/12}" integerOnly="true" />
														( ${goalYear} 년 
															<c:if test ="${goalMonth%12 > 0}">
																${goalMonth%12} 개월
															</c:if>
														)
													</c:if></font>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="offset-md-7 col-sm-3">
   	<div class="card m-b-30">
       	<div class="card-body text-center">
       		<H5 style="color:green" id="gh"><i class="mdi mdi-emoticon-happy"></i>미래 자산을 확인해볼까요?!</H5>
       		<div class="button-list">
                  	<a href="/mine/futureAsset.dbinc">
                  		<button id="goToFutureBtn" type="button" class="btn btn-primary">
                  			<h5 id="gh">미래 자산 확인하기</h5>
                  		</button>
                  	</a> 
               </div>
    	</div>
    </div>
</div>
<div id="emptyDivForMobile"><br/><br/></div>

<script>


var deposit = '${userMoney.deposit}';
var totalDeposit = '${depositMoney.total_deposit}';
var goal_deposit = '${userMoney.goal_deposit}';

var today =	new Date();
var dd = 	today.getDate();
var mm =	today.getMonth()+1;
var yyyy = 	today.getFullYear();

if(dd<10){
	dd = '0'+dd;
}

if(mm<10){
	mm = '0'+mm;
}

var ctx=document.getElementById( "lineChart");
ctx.height=200;
var myChart=new Chart( ctx, {
    type: 'line', data: {
        labels: [ yyyy+"."+mm+"."+dd+".", yyyy+1+"."+mm+"."+dd+".", yyyy+2+"."+mm+"."+dd+".", yyyy+3+"."+mm+"."+dd+".", yyyy+4+"."+mm+"."+dd+".", yyyy+5+"."+mm+"."+dd+".", yyyy+6+"."+mm+"."+dd+".", yyyy+7+"."+mm+"."+dd+".", yyyy+8+"."+mm+"."+dd+".", yyyy+9+"."+mm+"."+dd+".", yyyy+10+"."+mm+"."+dd+"."], datasets: [ {
            label: "목표 금액 (만원)", borderColor: "rgba(0,0,0,.09)", borderWidth: "1", backgroundColor: "rgba(22,205,250,0.07)", data: [goal_deposit, goal_deposit, goal_deposit, goal_deposit, goal_deposit, goal_deposit, goal_deposit, goal_deposit, goal_deposit, goal_deposit, goal_deposit]
        }
        , {
            label: "저축 누적 금액 (만원)", borderColor: "rgba(30, 50,100, 0.9)", borderWidth: "1", backgroundColor: "rgba(245, 114, 161, 0.5)", pointHighlightStroke: "rgba(26,179,148,1)", data: [ (parseInt(totalDeposit)), (deposit*12)+(parseInt(totalDeposit)), deposit*24+(parseInt(totalDeposit)) , deposit*36+(parseInt(totalDeposit)) , deposit*48+(parseInt(totalDeposit)), deposit*60+(parseInt(totalDeposit)), deposit*72+(parseInt(totalDeposit)), deposit*84+(parseInt(totalDeposit)), deposit*96+(parseInt(totalDeposit)), deposit*108+(parseInt(totalDeposit)), deposit*120+(parseInt(totalDeposit))]
        }
        ]
    }
    , options: {
        responsive: true, tooltips: {
            mode: 'index', intersect: false
        }
        , hover: {
            mode: 'nearest', intersect: true
        }
    }
}
);
</script>

<%@include file="../include/footer.jsp"%>