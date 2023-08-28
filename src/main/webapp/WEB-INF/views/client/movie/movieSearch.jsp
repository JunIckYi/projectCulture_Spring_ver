<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/resources/image/icon.png">

    <title>영화 상세 페이지</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/dist/css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="dist/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="/resources/dist/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="/resources/js/common.js"></script>
    <script type="text/javascript" src="/resources/js/jquery-3.7.0.min.js"></script>
    <script type="text/javascript" src="/resources/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(function(){
		$(".movieDetail").click(function(){
			let id = $(this).parents("tr").attr("data-num");
			console.log("id :", id);
			$("#id").val(id);
			$("#detail").attr({
				method : "post",
				action : "/movieDetail/"+id
			})
			$("#detail").submit();
		})
	})
    </script>
    <style type="text/css">
     	.movieDetail{ 
      		height: 540px; 
      		width : 380px; 
     	} 
    </style>
  </head>

  <body>
	

	<form id="detail" name="detail" >
		<input type="hidden" id="id" name="id" />
	</form>

	<!-- Begin page content -->
    <div class="contentLayout container" id="main">
     	<!-- 메인  -->
		<h1>Searching Movies</h1>
		<table class="table">
			<c:forEach var="movie" items="${movies}">
			<tr data-num="${movie.id}"><td>
				<img class="movieDetail" src="http://image.tmdb.org/t/p/w400${movie.poster_path }">
			</td></tr>				
			</c:forEach>
		
		</table>
	</div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="/dist/js/ie10-viewport-bug-workaround.js"></script> -->
  </body>
</html>
