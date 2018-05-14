<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<script src="/resources/plugins/chart-js/Chart.bundle.js"></script>
<script src="/resources/pages/chartjs-init.js"></script>
<script src="/resources/pages/flot-chart-init.js"></script>
<script src="/resources/plugins/flot-chart/jquery.flot.pie.js"></script>

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

<input type="hidden" id="data01" value="${data01}" />
<input type="hidden" id="data02" value="${data02}" />
<input type="hidden" id="data03" value="${data03}" />

<br><br>
<div id="emptyDivForMobile"><br/><br/></div>
<h2 id="gh" style="color:#005000"><b>◆ 상세 소비 통계 결과</b></font></h2>
<h5 id="gh">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;※ 소비 패턴 관리 그래프에서 나와 같은 연령대의 소비 정보와 비교해보자</h5>
<br>

<div class="container-fluid text-center">
	<div class="row" id="gh">
		<div class="col-lg-6 col-sm-12">
			<div class="card m-b-30">
	        	<h3></br>나의 소비</br></br></h3>            
	           	<div class="flot-container"  id="gh">
	           		<canvas id="pieChart"></canvas></br></br>
	            </div>
		    </div>
		</div>                
		<div class="col-lg-6 col-sm-12">
		    <div class="card m-b-30">
	        	<h3></br>소비 패턴 관리</br></br></h3>           
	            <div class="panel-body">
	            	<canvas id="radarChart"></canvas></br>
	            </div>
		    </div>
		</div> 
	</div>
</div>



<div class="col-md-3 ml-auto">
	<div class="card m-b-30"  id="gh">
	   	<div class="card-body text-center">
	   		<H5 style="color:green"><i class="mdi mdi-emoticon-happy"></i> 상세 소비정보를 확인해볼까요?!</H5>
	    		<div class="button-list">
	               	<a href="/mine/totalExpense.dbinc"><button id="goToTotalBtn" type="button" class="btn btn-primary">상세 소비 정보 확인하기</button> </a>
               </div>
    	</div>
    </div>
</div>

<div id="emptyDivForMobile"><br/><br/></div>

<script>
	var data01 = ${data01};
	var arr01 = new Array();
	for(var i=0 ; i < data01.length ; i++) {
		arr01.push(data01[i]);
	}
	//pie chart
	var ctx=document.getElementById("pieChart");
	ctx.height=150;
	var myChart=new Chart( ctx, {
	    type: 'pie', data: {
	        datasets: [ {
	            data: arr01 , 
	            backgroundColor: [ "#E59866", "#F8C471", "#F7DC6F", "#76D7C4", "#85C1E9", "#7FB3D5", "#D7BDE2"], 
	            hoverBackgroundColor: [ "#E59866", "#F8C471", "#F7DC6F", "#76D7C4", "#85C1E9", "#7FB3D5", "#D7BDE2"]
	        }
	        ], 
	        labels: [ "식비", "교통비", "생활용품비", "문화생활비", "통신비", "공과비", "기타"]
	    }
	    , options: {
	        responsive: true
	    }
	}
	);
	
	var data02 = ${data02};
	var arr02 = new Array();
	for(var i=0 ; i < data02.length ; i++) {
		arr02.push(data02[i]);
	}
	var data03 = ${data03};
	var arr03 = new Array();
	for(var i=0 ; i < data02.length ; i++) {
		arr03.push(data03[i]);
	}
	//radar chart
	var ctx=document.getElementById("radarChart");
	ctx.height=160;
	var myChart=new Chart( ctx, {
	    type: 'radar', data: {
	        labels: [ "식비", "교통비", "생활용품비", "문화생활비", "통신비", "공과비", "기타"], datasets: [ {
	            label: "내 소비 정보", 
	            data: arr02 , 
	            borderColor: "rgba(220, 118, 51, 0.6)", 
	            borderWidth: "1", 
	            backgroundColor: "rgba(220, 118, 51, 0.6)"
	        }
	        , {
	            label: "동일 연령대 소비 정보", 
	            data: arr03 , 
	            borderColor: "rgba(244, 208, 63, 0.7)", 
	            borderWidth: "1", 
	            backgroundColor: "rgba(244, 208, 63, 0.7)"
	        }
	        ]
	    }
	    , options: {
	        legend: {
	            position: 'top'
	        }
	        , scale: {
	            ticks: {
	                beginAtZero: true
	            }
	        }
	    }
	}
	);
</script>

<%@include file="../include/footer.jsp"%>