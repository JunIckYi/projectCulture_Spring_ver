<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/client/common/common.jspf" %>
    <link href="/resources/dist/css/signin.css" rel="stylesheet">

	<script type="text/javascript">
		$(function(){
			let errorMsg = "${errorMsg}";
			if(errorMsg!=""){
				alert(errorMsg);
				errorMsg = "";
			}
		
		
		  $("#loginBtn").click(function(){
			  if(!chkData("#a_id", "아이디를")) return;
			  else if(!chkData("#a_pwd", "비밀번호를")) return;
			  else{
			     $("#loginForm").attr({
			    	 "method":"post",
			    	 "action":"/admin/login"
			     });
                 $("#loginForm").submit();
				  
			  }
			  
		  });
		  
		  $("#logOutBtn").click(function(){
			  location.href = "/admin/logout"
			  
		  });
		  
		});
		
	</script>
</head>
<body>

    <div class="container">
      <c:if test="${empty adminLogin}">
      	 <form class="form-signin" id="loginForm">
	    	<a><img src="/resources/image/cultureLogo.jpg" width="300"></a>
	         <h2 class="form-signin-heading">관리자 로그인</h2>
         <label for="a_id" class="sr-only">아이디</label> 
         <input type="text" name = "a_id" id="a_id" class="form-control" placeholder="아이디"> 
         
         <label for="a_pwd" class="sr-only">비밀번호</label> 
         <input type="password" name = "a_pwd" id="a_pwd" class="form-control" placeholder="비밀번호">
         <button class="btn btn-lg btn-primary btn-block" type="button" id="loginBtn">로그인</button>
      </form>
      </c:if>
      <c:if test = "${not empty adminLogin}">
         <h3>${adminLogin.a_name} 님 환영합니다. 로그인에 실패하였거나 잘못 된 접근입니다. 다시 시도해주세요.</h3>
         <br/>
         <button type = "button" id = "logOutBtn">로그아웃</button>
      </c:if> 
   </div>

</body>
</html>