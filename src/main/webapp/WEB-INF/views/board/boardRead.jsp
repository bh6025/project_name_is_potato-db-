<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<style>
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
	#gh{
		font-family: 'Hanna', sans-serif; 
	}
</style>

<br><br>
<div class="container-fluid" id="gh">
	<div class="page-head">
		<h2 id="gh" style="color:#005000"><b>◆ 게시글 보기</b></font></h2>
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
												<div class="media m-b-30 ">


													<div class="media-body mt-2 ml-2">

														<c:if
															test="${loginUser.user_id == oneboard.user_id}">
															<span class="media-meta pull-right">${oneboard.board_date}
																AM&nbsp;&nbsp; <a
																href="/board/boardupdate?board_numm=${oneboard.board_numm}"><i
																	class="fas fa-wrench"></i></a> <a
																href="/board/boarddelete?board_numm=${oneboard.board_numm}&user_id=${oneboard.user_id}"><i
																	class="fas fa-trash"></i></a>
															</span>
														</c:if>
														<h6 class="text-dark">
															<font size="4"><b>Writen by ${oneboard.user_id} </b></font>
														</h6>
													</div>
												</div>
												<!-- media -->
												<p>
													<font size="5" style="color:#005000"><b>${oneboard.board_title}</b></font>
												</p>
												<br>
												<p><font size="5">${oneboard.board_content}</font></p>
											</div>
										</div>
									</div>
								</div>
								<!--end row-->

								<div class="row">
									<div class="col-lg-12 col-sm-12">
										<div class="card m-b-30">
											<div class="card-body table-responsive">
												<div class="">
													<table id="datatable2" class="table">
														<thead>


															<tr>
																<th class="jb-th-1"><font size="4">이름</font></th>
																<th><font size="4">내용</font></th>
																<th style="text-align: center" width=200><font size="4">날짜</font></th>
																<th style="text-align: center" width=70><font size="4">삭제</font></th>
															</tr>
														</thead>
														
														<tbody>
															<c:forEach items="${comments}" var="comment">
																<tr>
																	<td width=100><font size="4">${comment.comment_writer}</font></td>
																	<td><font size="4">${comment.comment_content}</font></td>
																	<td style="text-align: center" width=300><font size="4">${comment.comment_date}</font></td>
																	<td style="text-align: center" width=70><font size="4"><c:if
																			test="${loginUser.user_id == comment.comment_writer}">
																			<form action="/board/board_comment_delete"
																				method="get">
																				<input type="hidden" name="board_numm"
																					value="${oneboard.board_numm}"> <input
																					type="hidden" name="comment_num"
																					value="${comment.comment_num}"><input
																					type="hidden" name="comment_writer"
																					value="${comment.comment_writer}">


																				<button class="pull-right" type="submit">
																					<i class="fas fa-trash"></i>
																				</button>

																			</form>
																		</c:if></font>
																</tr>
															</c:forEach>

														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--end row-->






								<div class="row">
									<div class="col-lg-12   col-sm-12">
										<div class="card mb-2 ">
											<div class="card-body">


												<div class="row">
													<form action="/board/board_comment_insert" method="post">
														<input type="hidden" name="comment_writer"
															value="${loginUser.user_id}"> <input
															type="hidden" name="board_numm"
															value="${oneboard.board_numm}">
														<textarea name="comment_content" style="width: 100%"
															class="form-control" placeholder="Reply..."></textarea>
															<input class="btn btn-primary my-3 " type="submit"
															value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Send&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;">
														<a class="btn btn-default" type="button" href="javascript:void(0);" onclick="history.go(-1);"><font size="4"><b>리스트로 가기</b></font></a>

													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
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
