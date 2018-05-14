<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

#gh {
	font-family: 'Hanna', sans-serif;
}
</style>

<br/>
<br/>
<h2 id="gh" style="color:#005000"><b>◆ 자산 정보 입력</b></font></h2>
<div class="row">
	<div class="col-sm-9 col-lg-6" >
		<div class="card m-b-30 ">
			<div class="card-body">
				<div class="general-label">
					<form action="simpleMain.dbinc" method="post">

						<input type="hidden" name="user_id" value="${loginUser.user_id }">

						<div class="form-group has-success row" id="gh">
							<label class="form-control-label col-sm-4"
								for="validationServer01"><font size="5">&nbsp;&nbsp;- 월급</font></label>
							<div class="col-sm-6">
								<input type="text" class="form-control form-control-success"
									id="income" name="income" placeholder="..." required
									onkeyup="myFunction('income','income_out') "
									onclick="myFunction('income','income_out') ">
							</div>
							<div class="text-center pt-2">
								<output id="income_out"> </output>
							</div>

						</div>
						<div class="form-group has-warning row" id="gh">
							<label class="form-control-label col-sm-4"
								for="validationServer02"><font size="5">&nbsp;&nbsp;- 월 저축 금액</font></label>
							<div class="col-sm-6">
								<input type="text" class="form-control form-control-warning"
									id="deposit" name="deposit" placeholder="..." required
									onkeyup="myFunction('deposit','deposit_out');yourFunction('income','deposit','exp') "
									onclick="myFunction('deposit','deposit_out');yourFunction('income','deposit','exp') ">
							</div>
							<div class="text-center pt-2">
								<output id="deposit_out"> </output>
							</div>
						</div>
						<div class="form-group has-warning row" id="gh">
							<label class="form-control-label col-sm-4"
								for="validationServer02"><font size="5">&nbsp;&nbsp;- 기존 보유 금액</font></label>
							<div class="col-sm-6">
								<input type="text" class="form-control form-control-warning"
									id="total_deposit" name="total_deposit" placeholder="..."
									required
									onkeyup="myFunction('total_deposit','total_deposit_out')"
									onclick="myFunction('total_deposit','total_deposit_out')">
							</div>
							<div class="text-center pt-2 ">
								<output id="total_deposit_out"> </output>
							</div>
						</div>
						<div class="form-group has-warning row" id="gh">
							<label class="form-control-label col-sm-4"
								for="validationServer02"><font size="5">&nbsp;&nbsp;- 목표 저축 금액</font></label>
							<div class="col-sm-6">
								<input type="text" class="form-control form-control-warning"
									id="goal_deposit" name="goal_deposit" placeholder="..."
									required
									onkeyup="myFunction('goal_deposit','goal_deposit_out')"
									onclick="myFunction('goal_deposit','goal_deposit_out')">
							</div>
							<div class="text-center pt-2 ">
								<output id="goal_deposit_out"> </output>
							</div>
						</div>
						<div class="form-group has-danger row" id="gh">
							<label class="form-control-label col-sm-4" for="inputSuccess1">
								<font size="5">&nbsp;&nbsp;- 지출=(월급-저축)</font></label>
							<div class="col-sm-6 ">
								<output id="exp" class="form-control form-control-warning"></output>
							</div>
							<br><br>
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<!--end row-->



<script>
	var won = "만원"

	function yourFunction(Ainput, Binput, Coutput) {

		document.getElementById(Coutput).value = document
				.getElementById(Ainput).value
				- document.getElementById(Binput).value + won;

	}
</script>


<script>
	var won = "만원"

	function myFunction(Pinput, Poutput) {

		document.getElementById(Poutput).style.fontSize = "large";
		document.getElementById(Poutput).style.textAlign = "center";
		document.getElementById(Poutput).value = document
				.getElementById(Pinput).value
				+ won;

	}
</script>






<%@include file="../include/footer.jsp"%>