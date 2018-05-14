<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

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

<br/>
<br/>
<div id="emptyDivForMobile"><br/><br/></div>
<h2 id="gh" style="color:#005000"><b>◆ 상세 소비 정보 입력</b></font></h2>
	<div class="container-fluid">
		<div class="row">
		    <div class="col-sm-8 col-lg-6">
		        <div class="card m-b-30">
		            <div class="card-body ">
						<br><br>
		                <div class="general-label ">
		                    <form  action="detailMain.dbinc" method="post">    
		                    
		                    	<input type="hidden" id="user_id" name="user_id" value="${loginUser.user_id}">
		                    	                                        
		                        <div class="form-group row" id="gh">
		                            <div class="col-md-2 col-sm-12 col-xs-12 col-form-label font-weight-bold">
		                            	<font size="4" id="gh">&nbsp;&nbsp;- 식비</font></div>
		                             <div class="col-7">
		                                <input class="form-control" type="number" min="0" step="1"
		                                		name="food_expense" id="food_expense" placeholder="만원" required="required"  onkeyup="myFunction('food_expense','food_expense_out')" onclick="myFunction('food_expense','food_expense_out')" >
		                             </div>
		                             
		                             <div class="text-center pt-2">
		                             	<output id="food_expense_out"> </output>
		                          	 </div>

		                         </div>  
		                            	
		                            	
		                        <div class="form-group row" id="gh">
		                             <div class="col-md-2 col-sm-12 col-xs-12 col-form-label font-weight-bold">
		                            	<font size="4" id="gh">&nbsp;&nbsp;- 교통비</font></div>
		                            <div class="col-7">
		                                <input class="form-control" type="number" min="0" step="1"
		                                		name="transportation_expense" id="transportation_expense" placeholder="만원" required="required" onkeyup="myFunction('transportation_expense','transportation_expense_out')" onclick="myFunction('transportation_expense','transportation_expense_out')">
		                            </div>  
		                            
		                             <div class="text-center pt-2">
		                             <output id="transportation_expense_out"> </output>
		                          	 </div> 
		                          	 
		                        </div>
		                        
		                        <div class="form-group row" id="gh">
		                            <div class="col-md-2 col-sm-12 col-xs-12 col-form-label font-weight-bold">
		                            	<font size="4" id="gh">&nbsp;&nbsp;- 생활용품비</font></div>
		                            <div class="col-7">
		                                <input class="form-control" type="number" min="0" step="1"
		                                		name="living_expense" id="living_expense" placeholder="만원" required="required" onkeyup="myFunction('living_expense','living_expense_out')" onclick="myFunction('living_expense','living_expense_out')" >
		                            </div>
		                            
		                             <div class="text-center pt-2">
		                             <output id="living_expense_out"> </output>
		                          	 </div> 
		                        </div>
		                        <div class="form-group row" id="gh">
		                            <div class="col-md-2 col-sm-12 col-xs-12 col-form-label font-weight-bold">
		                            	<font size="4" id="gh">&nbsp;&nbsp;- 문화생활비</font></div>
		                            <div class="col-7">
		                                <input class="form-control" type="number" min="0" step="1"
		                                		name="culture_expense" id="culture_expense" placeholder="만원" required="required"  onkeyup="myFunction('culture_expense','culture_expense_out')" onclick="myFunction('culture_expense','culture_expense_out')">
		                            </div>
		                            <div class="text-center pt-2">
		                             <output id="culture_expense_out"> </output>
		                          	 </div> 
		                            
		                        </div>
		                        <div class="form-group row" id="gh">
		                            <div class="col-md-2 col-sm-12 col-xs-12 col-form-label font-weight-bold">
		                            	<font size="4" id="gh">&nbsp;&nbsp;- 통신비</font></div>
		                            <div class="col-7">
		                                <input class="form-control" type="number" min="0" step="1"
		                                		name="phone_expense" id="phone_expense" placeholder="만원" required="required" onkeyup="myFunction('phone_expense','phone_expense_out')" onclick="myFunction('phone_expense','phone_expense_out')">
		                            </div>
		                            
		                            <div class="text-center pt-2">
		                             <output id="phone_expense_out"> </output>
		                          	 </div>
		                          	  
		                        </div>
		                        <div class="form-group row" id="gh">
		                            <div class="col-md-2 col-sm-12 col-xs-12 col-form-label font-weight-bold">
		                            	<font size="4" id="gh">&nbsp;&nbsp;- 공과비</font></div>
		                            <div class="col-7">
		                                <input class="form-control" type="number" min="0" step="1"
		                                		name="service_expense" id="service_expense" placeholder="만원" required="required" onkeyup="myFunction('service_expense','service_expense_out')" onclick="myFunction('service_expense','service_expense_out')">
		                            </div>
		                            
		                            <div class="text-center pt-2">
		                             <output id="service_expense_out"> </output>
		                          	 </div>
		                            
		                        </div>
		                        <div class="form-group row" id="gh">
		                            <div class="col-md-2 col-sm-12 col-xs-12 col-form-label font-weight-bold">
		                            	<font size="4" id="gh">&nbsp;&nbsp;- 기타</font></div>
		                            <div class="col-7">
		                                <input class="form-control" type="number" min="0" step="1"
		                                		name="etc_expense" id="etc_expense" placeholder="만원" required="required"  onkeyup="myFunction('etc_expense','etc_expense_out'); " onclick="myFunction('etc_expense','etc_expense_out'); " >
		                            </div>
		                            
		                            <div class="text-center pt-2">
		                             <output id="etc_expense_out"> </output>
		                          	 </div>
		                            
		                            
		                        </div>
		                        
		                        <div class="form-group row">
		                            <div class="col-2">
		                            </div>
		                            <div class="col-3"></div>
		                            
		                            <div class="text-center pt-2">
		                          <output id="sum_out"> </output>
		                          	 </div>
	                            
		                        </div>

		                        <button type="submit" class="btn btn-success ml-2" style="float:right"  id="gh"><font size="4">입력</font></button>
		                    </form>    
		                    
		                    
		                                                       
		                </div>  
		                		<!--  
		                		<div class="col-lg-6 col-sm-6">
		                         <img src="/resources/images/dbpicture.PNG" alt="Smiley face" width="320" height="320">      
		                        </div>     
		                		-->        
		            </div>
		        </div>
		    </div>
		    
		    <div class=" col-lg-3">
		   </div>
		    
		    
		</div><!--end row-->	
</div><!--end container-->
	<!-- jQuery 2.1.4 -->
	<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.2 JS -->
	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!-- iCheck -->
	<script src="/resources/plugins/iCheck/icheck.min.js"
		type="text/javascript"></script>
		



<script>

var won ="만원"


function myFunction(Pinput, Poutput) {
	
	document.getElementById(Poutput).style.fontSize ="large";
	document.getElementById(Poutput).style.textAlign ="center";
	document.getElementById(Poutput).value = document.getElementById(Pinput).value + won ;

	
}




</script>

</body>
</html>

	
<%@include file="../include/footer.jsp"%>