<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<style>
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
	#gh{
		font-family: 'Hanna', sans-serif; 
	}
</style>

<div class="container-fluid" id="gh">
	<div class="page-head">
		<h4 class="mt-2 mb-2">게시글 쓰기</h4>
	</div>
	<div class="email-read">
		<div class="row">
			<div class="col-12">
				<div class="card m-b-30 mail-inbox">
					<div class="card-body">

						<div class="row">


							<div class="col-md-9">

								<div class="row">
									<div class="col-lg-12 col-sm-12">
										<div class="card mb-2">
											<div class="card-body">


												<form class="form mt-5 contact-form"
													action="/board/boardwrite" method="post">


													<div class="media m-b-30 ">


														<div class="media-body mt-2 ml-2">
															





															<h6 class="text-dark">
																<b>Writen by <input style="border: none" type="text" name="user_id"
																	value="${loginUser.user_id }" readonly="readonly"></b>
															</h6>

														</div>
													</div>
													<!-- media -->
													<div class="col-lg-12 col-sm-12">
														<textarea name="board_title" class="form-control"	placeholder="제목란..."></textarea>
													</div>

													<div class="container ">
														<textarea  name="board_content" class="form-control" style="height:500px"  placeholder="내용"></textarea>
													</div>

													


													<div class="col-sm-12 mt-4">
														<button class="btn btn-primary btn-block" type="submit">작성완료</button>
													</div>

												</form>

												<div>
													<div class="col-sm-12 mt-4 text-center">
														<a href="/board/board.dbinc?page=1">리스트로 가기</a>
													</div>
												</div>





											</div>

										</div>
									</div>
								</div>












								<!--end row-->





								<!--end row-->






							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--end row-->
	</div>


</div>
<!--end container-->

<%@include file="../include/footer.jsp"%>
