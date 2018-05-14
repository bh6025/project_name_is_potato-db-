<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<style>
	@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
	#gh{
		font-family: 'Hanna', sans-serif; 
	}
</style>

<!-- 여기서부터 보드판 -->
<br><br>
<div class="container-fluid" id="gh">
	<div class="page-head">
		<h2 id="gh" style="color:#005000"><b>◆ 게시판</b></font></h2>
	</div>
	<div class="row">
		<div class="col-12">
			<div class="card m-b-30 mail-inbox">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-12">
									<div class="btn-group mr-2 ml-auto" align="center">
									<a href="/board/boardwrite.dbinc">
										<button type="button" class="btn btn-outline-secondary">
											<font size="4">글쓰기&nbsp;</font><i class="fas fa-pencil-alt"></i>
										</button></a>
									</div>
								</div>
							</div>
							<!-- End row -->

							<div class="panel panel-default m-t-20">
								<div class="panel-body">
									<table class="table table-hover mails">
										<tbody>
											<tr>
											
											<th width=10p><font size="5">NO</font></th>
												<th><font size="5">ID</font></th>
												<th><font size="5">제목</font></th>
												<th class="text-right"><font size="5">날짜 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></th>
											</tr>
											<c:forEach items="${boardlist}" var="boardVO">
											<tr>
												<td width=10p align="center"><font size="4">${boardVO.board_numm}</font></td>
												<td><font size="4">${boardVO.user_id}</font></td>
												<td><font size="4"><a href="/board/boardRead.dbinc?oneboard=${boardVO.board_numm}">${boardVO.board_title} &nbsp;
												<c:if test="${boardVO.comment_count!=0}">
												<b>[${boardVO.comment_count}]</b>
												</c:if></a></font></td>
											
												<td class="text-right"><font size="4">${boardVO.board_date}</font></td>
											</tr>
											</c:forEach>


										</tbody>
									</table>
									<hr>
									<div class="row">
										<div class="col-sm-7"><font size="4">Showing ${page} of ${countlast}</font></div>
										<div class="col-sm-5">
											<div class="btn-group pull-right">
											
											<c:if test="${prepage!=0}">
											
												<a href="/board/board.dbinc?page=${prepage}"><button type="button" class="btn btn-outline-secondary">
													<i class="fa fa-chevron-left"></i>
												</button></a>
												</c:if>
												
												<c:if test="${page != countlast}">
												<a href="/board/board.dbinc?page=${nextpage}">
												<button type="button" class="btn btn-outline-secondary">
													<i class="fa fa-chevron-right"></i>
												</button></a>
												</c:if>
												
											</div>
										</div>
									</div>
									<!--end row-->
								</div>
							</div>
						</div>
					</div>
					<!--end row-->
				</div>
			</div>
		</div>
	</div>
	<!--end row-->

</div>
<!--end container-->
<%@include file="../include/footer.jsp"%>




