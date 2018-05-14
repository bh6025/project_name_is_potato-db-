<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<script src="/resources/js/jquery-3.2.1.min.js"></script>

<style>
	.accent{
			font-weigh:bold;
			font-size:50px;}
	.accent2{
			font-size:30px;}
</style>
<style>
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
	#gh{
		font-family: 'Hanna', sans-serif; 
	}
</style>

<input type="hidden" id="chart" value="${chart}" />

</br></br>
<div class="container">
	<div class="row">
		<div class="col-lg-12 col-sm-12">
			<div class="card-body text-center">
				</br>
				<p class="acent2" id="gh"><span class="accent" style="color:green">${loginUser.user_name}</span>
					<span class="accent2">님의</span></p> 
				</br>
				<h2 id="gh">소비 항목 별 사용 내역은 아래와 같습니다.</h2>
			</div>
		</div>
	</div>	
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-lg-4 col-sm-12">
        	<div class="card m-b-30">
            	<div class="card-body text-center">
	                <!-- <h5 class="header-title text-shadow">식비</h5> -->
	                <p align="center"><font size="5"id="gh">식비</font></p>  
	                <div id="morris-area-chart1"></div>             
	            </div>
	        </div>
	    </div>
		
		<div class="col-lg-4 col-sm-12">
	    	<div class="card m-b-30">
	        	<div class="card-body text-center">
	            	<!-- <h5 class="header-title" >교통비</h5>  --> 
	            	<p align="center"><font size="5" id="gh">교통비</font></p>          
	                <div id="extra-area-chart1"></div>              
	            </div>
	        </div>
	    </div>
	    
		<div class="col-lg-4 col-sm-12">
        	<div class="card m-b-30">
            	<div class="card-body text-center">
	                <!-- <h5 class="header-title pb-3">생활용품비</h5>  -->
	                <p align="center"><font size="5" id="gh">생활용품비</font></p> 
	                <div id="morris-area-chart2"></div>             
	            </div>
	        </div>
	    </div>
	    
	    <div class="col-lg-4 col-sm-12">
	    	<div class="card m-b-30">
	        	<div class="card-body text-center">
	            	<!--  <h5 class="header-title pb-3">문화생활비</h5>        -->
	            	<p align="center"><font size="5" id="gh">문화생활비</font></p>      
	                <div id="extra-area-chart2"></div>              
	            </div>
	        </div>
	    </div>
	    
	    <div class="col-lg-4 col-sm-12">
        	<div class="card m-b-30">
            	<div class="card-body text-center">
	                <!-- <h5 class="header-title pb-3">통신비</h5>   -->
	                <p align="center"><font size="5"  id="gh">통신비</font></p>
	                <div id="morris-area-chart3"></div>             
	            </div>
	        </div>
	    </div>
	    
   	    <div class="col-lg-4 col-sm-12">
	    	<div class="card m-b-30">
	        	<div class="card-body text-center">
	            	<!-- <h5 class="header-title pb-3">공과비</h5>   -->  
	            	<p align="center"><font size="5" id="gh">공과비</font></p>       
	                <div id="extra-area-chart3"></div>              
	            </div>
	        </div>
	    </div>
	    
	    <div class="col-md-4">
	    	<div class="card m-b-30 text-center">
	        	<div class="card-body text-center">
	        		</br></br></br></br></br></br></br>
	        		<H5 style="color:green" id="gh"><i class="mdi mdi-emoticon-happy"></i> 소비 데이터를 변경해볼까요?!</H5>
	        		<div class="button-list">
                    	<button id="goToInputBtn" type="button" class="btn btn-primary"><h5 id="gh">소비 정보 변경하기</h5></button> 
                    </div>
	        		</br></br></br></br></br></br></br>
	        	</div>
	        </div>
	    </div>
	    <div class="col-md-4 col-md-offset-3">
		    <div class="card m-b-30">
		        <div class="card-body text-center">
		            <!-- <h5 class="header-title pb-3">기타 비용</h5>  --> 
		            <p align="center"><font size="5" id="gh">기타 비용</font></p>       
		            <div id="multi-line-chart"></div>                
		        </div>
		    </div>
		</div>
		<div class="col-md-4">
	    	<div class="card m-b-30">
	        	<div class="card-body text-center">
	        		</br></br></br></br></br></br></br>
	        		<H5 style="color:green" id="gh"><i class="mdi mdi-emoticon-happy"></i> 최근 소비정보를 확인해볼까요?!</H5>
	        		<div class="button-list">
                    	<button id="goToResultBtn" type="button" class="btn btn-primary"><h5 id="gh">소비 정보 확인하기</h5></button> 
                    </div>
	        		</br></br></br></br></br></br></br>
	        	</div>
	        </div>
	    </div>
	    
	</div>	    
</div>

<script>
$(document).ready(function() {
	$("#goToInputBtn").click(function() {
		location.href = "/detail/detail.dbinc";
	});
	
	$("#goToResultBtn").click(function() {
		location.href = "/detail/detailSub.dbinc";
	});

});
</script>
		
<script>
$( function () {
	"use strict";
	//area chart 1 - 식비
	var chart = ${chart};
	var arr01 = new Array();
	var arr011 = new Array();
	for(var i=0; i < chart.length ; i++){
		arr01.push(chart[i].food_expense);
		arr011.push(chart[i].user_date);
	}
	if(arr01.length != 6){
		for(var i = arr01.length; i <6; i++){
			arr01.push(0);
			arr011.push('2018-03-01');
		}
	}
	var chart01_1 = ${chart_sameAge.food_expense};
	Morris.Area( {
        element: 'morris-area-chart1', data: [ {
            period: arr011[5], 나: arr01[5], 평균연령대: chart01_1,
        }
        , {
        	period: arr011[4], 나: arr01[4], 평균연령대: chart01_1,
        }
        , {
        	period: arr011[3], 나: arr01[3], 평균연령대: chart01_1,
        }
        , {
        	period: arr011[2], 나: arr01[2], 평균연령대: chart01_1,
        }
        , {
        	period: arr011[1], 나: arr01[1], 평균연령대: chart01_1,
        }
        , {
        	period: arr011[0], 나: arr01[0], 평균연령대: chart01_1,
        }
        ],	xkey: 'period', 
        	ykeys: [ '나', '평균연령대'], 
        	labels: [ '나', '평균연령대'], 
        	pointSize: 0, 
        	fillOpacity: 0.4,
			pointStrokeColors: [ '#D64115', '#F19334'], 
			behaveLikeLine: true, 
			gridLineColor: '#e0e0e0', 
			lineWidth: 0, 
			smooth: false, 
			hideHover: 'auto', 
			lineColors: [ '#D64115', '#F19334'], 
			resize: true
    }
    );
	
	//extra chart 1 - 교통비
	var chart = ${chart};
	var arr02 = new Array();
	var arr021 = new Array();
	for(var i=0; i < chart.length ; i++){
		arr02.push(chart[i].transportation_expense);
		arr021.push(chart[i].user_date);
	}
	if(arr02.length != 6){
		for(var i = arr02.length; i <6; i++){
			arr02.push(0);
			arr021.push('2018-03-01');
		}
	}
	var chart02_1 = ${chart_sameAge.transportation_expense};
    Morris.Area( {
        element: 'extra-area-chart1', data: [ {
        	period: arr021[5], 나: arr02[5], 평균연령대: chart02_1,
        }
        , {
        	period: arr021[4], 나: arr02[4], 평균연령대: chart02_1,
        }
        , {
        	period: arr021[3], 나: arr02[3], 평균연령대: chart02_1,
        }
        , {
        	period: arr021[2], 나: arr02[2], 평균연령대: chart02_1,
        }
        , {
        	period: arr021[1], 나: arr02[1], 평균연령대: chart02_1,
        }
        , {
        	period: arr021[0], 나: arr02[0], 평균연령대: chart02_1,
        }
        ], lineColors: [ '#0060B0', '#12A2DE'], 
        xkey: 'period', 
    	ykeys: [ '나', '평균연령대'], 
    	labels: [ '나', '평균연령대'], 
           pointSize: 0, 
           lineWidth: 0, 
           resize: true, 
           fillOpacity: 0.8, 
           behaveLikeLine: true, 
           gridLineColor: '#e0e0e0', 
           hideHover: 'auto'
    }
    );
	
    //area chart 2 - 생활용품비
	var chart = ${chart};
	var arr03 = new Array();
	var arr031 = new Array();
	for(var i=0; i < chart.length ; i++){
		arr03.push(chart[i].living_expense);
		arr031.push(chart[i].user_date);
	}
	if(arr03.length != 6){
		for(var i = arr03.length; i <6; i++){
			arr03.push(0);
			arr031.push('2018-03-01');
		}
	}
	var chart03_1 = ${chart_sameAge.living_expense};
	Morris.Area( {
        element: 'morris-area-chart2', data: [ {
        	period: arr031[5], 나: arr03[5], 평균연령대: chart03_1,
        }
        , {
        	period: arr031[4], 나: arr03[4], 평균연령대: chart03_1,
        }
        , {
        	period: arr031[3], 나: arr03[3], 평균연령대: chart03_1,
        }
        , {
        	period: arr031[2], 나: arr03[2], 평균연령대: chart03_1,
        }
        , {
        	period: arr031[1], 나: arr03[1], 평균연령대: chart03_1,
        }
        , {
        	period: arr031[0], 나: arr03[0], 평균연령대: chart03_1,
        }
        ],  xkey: 'period', 
	    	ykeys: [ '나', '평균연령대'], 
	    	labels: [ '나', '평균연령대'], 
	    	pointSize: 0, 
	    	fillOpacity: 0.4,
			pointStrokeColors: [ '#007F41', '#84BF25'], 
			behaveLikeLine: true, 
			gridLineColor: '#e0e0e0', 
			lineWidth: 0, 
			smooth: false, 
			hideHover: 'auto', 
			lineColors: [ '#007F41', '#84BF25'],  
			resize: true
    }
    );
	 
	//extra chart 2 - 문화생활비
	var chart = ${chart};
	var arr04 = new Array();
	var arr041 = new Array();
	for(var i=0; i < chart.length ; i++){
		arr04.push(chart[i].culture_expense);
		arr041.push(chart[i].user_date);
	}
	if(arr04.length != 6){
		for(var i = arr04.length; i <6; i++){
			arr04.push(0);
			arr041.push('2018-03-01');
		}
	}
	var chart04_1 = ${chart_sameAge.culture_expense};
    Morris.Area( {
        element: 'extra-area-chart2', data: [ {
        	period: arr041[5], 나: arr04[5], 평균연령대: chart04_1,
        }
        , {
        	period: arr041[4], 나: arr04[4], 평균연령대: chart04_1,
        }
        , {
        	period: arr041[3], 나: arr04[3], 평균연령대: chart04_1,
        }
        , {
        	period: arr041[2], 나: arr04[2], 평균연령대: chart04_1,
        }
        , {
        	period: arr041[1], 나: arr04[1], 평균연령대: chart04_1,
        }
        , {
        	period: arr041[0], 나: arr04[0], 평균연령대: chart04_1,
        }
        ], lineColors: [ '#FF33CC', '#FF99CC'],  
        	xkey: 'period', 
    		ykeys: [ '나', '평균연령대'], 
    		labels: [ '나', '평균연령대'], 
           	pointSize: 0, 
           	lineWidth: 0, 
           	resize: true, 
           	fillOpacity: 0.8, 
           	behaveLikeLine: true, 
           	gridLineColor: '#e0e0e0', 
           	hideHover: 'auto'
    }
    );
	
  	//area chart 3 - 통신비
    var chart = ${chart};
	var arr05 = new Array();
	var arr051 = new Array();
	for(var i=0; i < chart.length ; i++){
		arr05.push(chart[i].phone_expense);
		arr051.push(chart[i].user_date);
	}
	if(arr05.length != 6){
		for(var i = arr05.length; i <6; i++){
			arr05.push(0);
			arr051.push('2018-03-01');
		}
	}
	var chart05_1 = ${chart_sameAge.phone_expense};
    Morris.Area( {
        element: 'morris-area-chart3', data: [ {
        	period: arr051[5], 나: arr05[5], 평균연령대: chart05_1,
        }
        , {
        	period: arr051[4], 나: arr05[4], 평균연령대: chart05_1,
        }
        , {
        	period: arr051[3], 나: arr05[3], 평균연령대: chart05_1,
        }
        , {
        	period: arr051[2], 나: arr05[2], 평균연령대: chart05_1,
        }
        , {
        	period: arr051[1], 나: arr05[1], 평균연령대: chart05_1,
        }
        , {
        	period: arr051[0], 나: arr05[0], 평균연령대: chart05_1,
        }
        ],  xkey: 'period', 
    		ykeys: [ '나', '평균연령대'], 
    		labels: [ '나', '평균연령대'], 
    		pointSize: 0, 
    		fillOpacity: 0.4,
			pointStrokeColors: [ '#00bcd2', '#007BFF'], 
			behaveLikeLine: true, 
			gridLineColor: '#e0e0e0', 
			lineWidth: 0, 
			smooth: false, 
			hideHover: 'auto', 
			lineColors: [ '#00bcd2', '#007BFF'],  
			resize: true
    }
    );
  
  	//extra chart 3 - 공과비
    var chart = ${chart};
	var arr06 = new Array();
	var arr061 = new Array();
	for(var i=0; i < chart.length ; i++){
		arr06.push(chart[i].service_expense);
		arr061.push(chart[i].user_date);
	}
	if(arr06.length != 6){
		for(var i = arr06.length; i <6; i++){
			arr06.push(0);
			arr061.push('2018-03-01');
		}
	}
	var chart06_1 = ${chart_sameAge.service_expense};
    Morris.Area( {
        element: 'extra-area-chart3', data: [ {
        	period: arr061[5], 나: arr06[5], 평균연령대: chart06_1,
        }
        , {
        	period: arr061[4], 나: arr06[4], 평균연령대: chart06_1,
        }
        , {
        	period: arr061[3], 나: arr06[3], 평균연령대: chart06_1,
        }
        , {
        	period: arr061[2], 나: arr06[2], 평균연령대: chart06_1,
        }
        , {
        	period: arr061[1], 나: arr06[1], 평균연령대: chart06_1,
        }
        , {
        	period: arr061[0], 나: arr06[0], 평균연령대: chart06_1,
        }
        ], lineColors: [ '#00FF99', '#99FFCC'], 
    		xkey: 'period', 
			ykeys: [ '나', '평균연령대'], 
			labels: [ '나', '평균연령대'], 
       		pointSize: 0, 
       		lineWidth: 0, 
       		resize: true, 
       		fillOpacity: 0.8, 
       		behaveLikeLine: true, 
       		gridLineColor: '#e0e0e0', 
       		hideHover: 'auto'
    }
    );
  	
	//line chart - 기타
    var chart = ${chart};
	var arr07 = new Array();
	var arr071 = new Array();
	for(var i=0; i < chart.length ; i++){
		arr07.push(chart[i].etc_expense);
		arr071.push(chart[i].user_date);
	}
	if(arr07.length != 6){
		for(var i = arr07.length; i <6; i++){
			arr07.push(0);
			arr071.push('2018-03-01');
		}
	}
	var chart07_1 = ${chart_sameAge.etc_expense};
    Morris.Area( {
        element: 'multi-line-chart', data: [ {
        	period: arr071[5], 나: arr07[5], 평균연령대: chart07_1,
        }
        , {
        	period: arr071[4], 나: arr07[4], 평균연령대: chart07_1,
        }
        , {
        	period: arr071[3], 나: arr07[3], 평균연령대: chart07_1,
        }
        , {
        	period: arr071[2], 나: arr07[2], 평균연령대: chart07_1,
        }
        , {
        	period: arr071[1], 나: arr07[1], 평균연령대: chart07_1,
        }
        , {
        	period: arr071[0], 나: arr07[0], 평균연령대: chart07_1,
        }
        ],  xkey: 'period', 
			ykeys: [ '나', '평균연령대'], 
			labels: [ '나', '평균연령대'], 
        	pointSize: 3, 
        	fillOpacity: 0, 
        	pointStrokeColors: [ '#ffcdd3', '#a1c3d3'], 
        	behaveLikeLine: true, 
        	gridLineColor: '#e0e0e0', 
        	lineWidth: 3, 
        	hideHover: 'auto', 
        	lineColors: [ '#ffcdd3', '#a1c3d3'], 
        	resize: true
    }
    );
}
);
</script>

<%@include file="../include/footer.jsp"%>