<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>


<script type="text/javascript">
	$(function(){
		  $("#insertFormBtn").click(function(){
			  location.href="/board/writeForm";
		  });
		  
		  /* 제목 클릭 시 살세 페이지 이동을 위한 처리 이벤트 */
		  $(".goDetail").click(function(){
			  let b_num = $(this).parents("tr").attr("data-num");
			  $("#b_num").val(b_num);
			  console.log("글번호 : "+b_num);
			  //세세 페이지로 이동하기위해 form추가 (id=: detailForm)
			  $("#detailForm").attr({
				  "method" : "get",
				  "action" : "/board/boardDetail"
			  });
			  $("#detailForm").submit();
		  });
		  
		  /* 입력양식 제거  enter 제거*/
		  $("#keyword").bind("keydown",function(event){
			  if(event.keyCode == 13){
				  event.preventDefault();
			  }
		  })
		  0
		  /* 검색 대상이 변경될 떄마다 처리 이벤트 */
		   $("#search").change(function(){
			   if($("#search").val()=="all"){
				   $("#keyword").val("전체 목록 조회합니다.");
			   }else if ($("#search").val()!="all"){
				   $("#keyword").val("");
				   $("#keyword").focus();
			   }
		   })
		  
		   /* 검색 버튼 클릭 시 처리 이벤트 */
		     $("#searchData").click(function(){
		    	 if($("#search").val()!="all"){
		    		 if(!chkData("#keyword","검색어를"))return;
		    	 }
		    	 goPage();
		     });
	}); // $함수 종료문

	/* 검색을 위한 실질적인 처리 함수 */
	   function goPage(){
	      if($("#search").val()=="all") {
	         $("#keyword").val("");
	      }
	      
	      $("#f_search").attr({
	         "method" : "get",
	         "action" : "/board/boardList"
	      });
	      $("#f_search").submit();
	   }

</script>


</head>
<body>

	<div class="container">
		<form id="detailForm">
			<input type="hidden" id="b_num" name="b_num" />
		</form>
	
		
		<%-- ===============================리스트 시작 ============================= --%>
		<div id="boardList" class="table-height">
			<table summary="게시판 리스트" class="table table-striped">
				<thead>
					<tr>
						<th data-value = "b_num" class="order text-center col-md-1">글번호</th>
						<th class="text-center col-md-6">글제목</th>
						<th class="text-center col-md-2">작성자</th>
						<th data-value = "d_date" class="text-center order-md-1">날짜</th>
						<th class="text-center col-md-1">조회수</th>
					</tr>
				</thead>
				<tbody id="list" class="table-striped" >
					<!-- 데이터 출력 -->
					<c:choose>
						<c:when test="${not empty boardList}">
							<c:forEach var="board" items="${boardList}" varStatus="status">
								<tr class="text-center" data-num="${board.b_num}">
									<td>${board.b_num}</td>
									<td class="goDetail text-left">${board.b_title}</td>
									<td class="name">${board.b_name}</td>
									<td class="text-center">${board.b_date}</td>									
									<td class="text-center">${board.readcnt}</td>
								</tr>
							</c:forEach>	
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5" class="tac text-center">등록된 게시글이 존재하지 않습니다.</td> 
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>		
		</div>
		<%-- ===========================================리스트 종료============================================= --%>
		
		<%-- ======================================  글쓰기 버튼 출력 시작  ====================================== --%>
		<div class="contentBtn text-right" >
			<input type="button" value="글쓰기"  id="insertFormBtn" class="btn btn-success"/>
		</div>
		<%-- ======================================  글쓰기 버튼 출력 종료  ====================================== --%>
	
	
		
	
	</div>
</body>
</html>