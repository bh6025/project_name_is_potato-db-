<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<style>
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
	#gh{
		font-family: 'Hanna', sans-serif; 
	}
</style>

<div class="container">

	<br /> <br />
	<div class="container-fluid">
		<div class=" offset-md-2 col-sm-8">
			<div class="card m-b-30">
				<div class="card-body">
					<p align="center" id="gh"><font size="5"><b>계정정보 변경</b></font></p>

					<div class="general-label">
						<form action="/user/modify.dbinc" method="post"
							enctype="multipart/form-data">
							<input type="hidden" name="user_id" value="${loginUser.user_id}">
							<div class="form-group row" id="gh">
								<label class="col-2 col-form-label">이름</label>
								<div class="col-10">
									<input class="form-control" type="text" name="user_name"
										placeholder="${loginUser.user_name}">
								</div>
							</div>

							<div class="form-group row" id="gh">
								<label class="col-2 col-form-label">비밀번호</label>
								<div class="col-10">
									<input class="form-control" type="password" name="user_pwd">
								</div>
							</div>
							<div class="form-group row" id="gh">
								<label for="example-tel-input" class="col-2 col-form-label">이메일</label>
								<div class="col-10">
									<input class="form-control" type="email" name="user_email"
										placeholder="${loginUser.user_email}">
								</div>
							</div>


							<div class="form-group row" id="gh">
								<label for="example-search-input" class="col-2 col-form-label">부서</label>
								<div class="col-10">
									<input class="form-control" type="text" name="user_dept"
										placeholder="${loginUser.user_dept}">
								</div>
							</div>

							<div class="form-group row" id="gh">
								<label for="example-tel-input" class="col-2 col-form-label">직급</label>
								<div class="col-10">
									<select class="selectpicker" name="user_job"
										data-style="form-control btn-warning">
										<c:if test="${loginUser.user_job == '사원'}">
											<option selected="selected">사원</option>
											<option>대리</option>
											<option>과장</option>
											<option>차장</option>
											<option>부장</option>
											<option>부사장</option>
											<option>사장</option>
										</c:if>
										<c:if test="${loginUser.user_job == '대리'}">
											<option selected="selected">대리</option>
											<option>사원</option>
											<option>과장</option>
											<option>차장</option>
											<option>부장</option>
											<option>부사장</option>
											<option>사장</option>
										</c:if>
										<c:if test="${loginUser.user_job == '과장'}">
											<option selected="selected">과장</option>
											<option>사원</option>
											<option>대리</option>
											<option>차장</option>
											<option>부장</option>
											<option>부사장</option>
											<option>사장</option>
										</c:if>
										<c:if test="${loginUser.user_job == '차장'}">
											<option selected="selected">차장</option>
											<option>사원</option>
											<option>대리</option>
											<option>과장</option>
											<option>부장</option>
											<option>부사장</option>
											<option>사장</option>
										</c:if>
										<c:if test="${loginUser.user_job == '부장'}">
											<option selected="selected">부장</option>
											<option>사원</option>
											<option>대리</option>
											<option>과장</option>
											<option>차장</option>
											<option>부사장</option>
											<option>사장</option>
										</c:if>
										<c:if test="${loginUser.user_job == '부사장'}">
											<option selected="selected">부사장</option>
											<option>사원</option>
											<option>대리</option>
											<option>과장</option>
											<option>차장</option>
											<option>부장</option>
											<option>사장</option>
										</c:if>
										<c:if test="${loginUser.user_job == '사장'}">
											<option selected="selected">사장</option>
											<option>사원</option>
											<option>대리</option>
											<option>과장</option>
											<option>차장</option>
											<option>부장</option>
											<option>부사장</option>
										</c:if>
										
									</select>
								</div>
							</div>

							<div class="form-group row" id="gh">
								<label for="example-tel-input" class="col-2 col-form-label">나이</label>
								<div class="col-10">
									<select class="selectpicker" name="user_age"
										data-style="form-control btn-info">
										<c:if test="${loginUser.user_age == '10대'}">
											<option selected="selected">10대</option>
											<option>20대</option>
											<option>30대</option>
											<option>40대</option>
											<option>50대</option>
											<option>60대</option>
											<option>기타</option>
										</c:if>
										<c:if test="${loginUser.user_age == '20대'}">
											<option>10대</option>
											<option selected="selected">20대</option>
											<option>30대</option>
											<option>40대</option>
											<option>50대</option>
											<option>60대</option>
											<option>기타</option>
										</c:if>
										<c:if test="${loginUser.user_age == '30대'}">
											<option>10대</option>
											<option>20대</option>
											<option selected="selected">30대</option>
											<option>40대</option>
											<option>50대</option>
											<option>60대</option>
											<option>기타</option>
										</c:if>
										<c:if test="${loginUser.user_age == '40대'}">
											<option>10대</option>
											<option>20대</option>
											<option>30대</option>
											<option selected="selected">40대</option>
											<option>50대</option>
											<option>60대</option>
											<option>기타</option>
										</c:if>
										<c:if test="${loginUser.user_age == '50대'}">
											<option>10대</option>
											<option>20대</option>
											<option>30대</option>
											<option>40대</option>
											<option selected="selected">50대</option>
											<option>60대</option>
											<option>기타</option>
										</c:if>
										<c:if test="${loginUser.user_age == '60대'}">
											<option>10대</option>
											<option>20대</option>
											<option>30대</option>
											<option>40대</option>
											<option>50대</option>
											<option selected="selected">60대</option>
											<option>기타</option>
										</c:if>
										<c:if test="${loginUser.user_age == '기타'}">
											<option>10대</option>
											<option>20대</option>
											<option>30대</option>
											<option>40대</option>
											<option>50대</option>
											<option>60대</option>
											<option selected="selected">기타</option>
										</c:if>
									</select>
								</div>
							</div>

							<div class="form-group row" id="gh">
								<div class="card m-b-30 ">
									<div class="card-body">
										<h5 class="header-title">프로필 사진 수정</h5>
										<label for="input-file-now"> >> </label> <input type="file"
											name="user_file" id="input-file-now" class="dropify" />
									</div>
								</div>
							</div>

							<button style="float: right" type="submit"
								class="btn btn-primary bg-modal-gred-2 btn-animation"
								data-animation="swing" id="gh">수정완료</button>

							<button style="float: left" type="button"
								class="btn btn-danger bg-modal-gred-2 btn-animation"
								data-animation="swing" data-toggle="modal"
								data-target="#deleteModal" id="gh">회원탈퇴</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end row-->
</div>

<!-- Modal -->
<!--  

<div class="modal fade" id="modifyModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content bg-modal-gred-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">정보수정 창</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">기입한 정보로 수정하시겠습니까?</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">아니요.
					좀 더 생각해보겠습니다.</button>
				<button type="submit" class="btn btn-danger">예</button>
			</div>
		</div>
	</div>
</div>

 -->

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document" id="gh">
		<div class="modal-content bg-modal-gred-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">회원탈퇴 창</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">정말 회원탈퇴 하시겠습니까? 저장된 모든 데이터가 삭제됩니다.</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">아니요.
					좀 더 생각해보겠습니다.</button>
				<a href="/user/delete.dbinc"><button type="button" class="btn btn-danger">예</button></a>
			</div>
		</div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>