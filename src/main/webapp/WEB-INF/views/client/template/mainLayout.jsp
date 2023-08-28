<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> --%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" href="/resources/image/common/icon1.png">

    <title><tiles:getAsString name = "title" /></title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/dist/css/sticky-footer-navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="/resources/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<!--     <script src="/resources/assets/js/ie-emulation-modes-warning.js"></script> -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
    
    
        <!-- css -->
    <link rel="stylesheet" href="/resources/assets/css/reset10.css">
    <link rel="stylesheet" href="/resources/assets/css/style10.css">
    <link rel="stylesheet" href="/resources/assets/css/swiper.css">
    <script type="text/javascript" src="/resources/js/jquery-3.7.0.min.js"></script>
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
		
		$("#searchBtn").click(function(){
			$("#search").attr({
				method : "post",
				action : "/movieSearch"
			})
			$("#search").submit();
		})
	})
    </script>
    
    <!--[if lt IE 9]> 
    <script src="assets/js/html5shiv.min.js"></script>
    <script type="text/javascript">
       alert("현재 브라우저는 지원하지 않습니다. 크롬 브라우저를 추천합니다.!");
    </script>
    
    
    
    
    
    
  </head>

  <body>

    <!-- Fixed navbar -->
<!--     <nav class="navbar navbar-default navbar-fixed-top"> -->
<%-- 		<tiles:insertAttribute name="header" /> --%>
<!--     </nav> -->
<script type="text/javascript">


</script>
    <!-- Begin page content -->
    <div class="contentLayout container">
     <!-- ////////////////////////////////////////////////////////// -->
     
     
     
        <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="#">
                            <em><img src="/resources/assets/img/문화빛길.jpg" alt="culture" style="margin-bottom: 20px;" ></em>
                            <strong><img src="/resources/assets/img/logo-sub.png" alt="LIFE THEATER"></strong>
                        </a>    
                    </h1>
                    <nav id="mNav">
                        <h2 class="ir_so">전체메뉴</h2>
                        <a href="#" class="ham"><span></span></a>
                    </nav>
                    <nav class="nav">
                        <ul class="clearfix">
                            <li><a href="#">영화</a></li>
                            <li><a href="#">뮤지컬</a></li>
<!--                             <li><a href="#">영화관</a></li> -->
<!--                             <li><a href="#">오시는길</a></li> -->
                            <li><a href="/board/boardList">게시판</a></li>
                            <li><a href="#">로그인</a></li>
                            <li><a href="#">회원가입</a></li>
                        </ul>
                    </nav>    
                </div>
            </div>
        </div>
    </header>
    <!-- //header -->
    
 
    
    
    <section id="banner">
        <div class="banner_menu">
            <h2 class="ir_so">배너 영역</h2>
            <div class="container">
                <div class="row">
                    <div class="bm_left">
                        <ul>
                            <li class="total"><a href="#">전체메뉴</a></li>
                            <li class="line"><a href="#">필름 소사이어티</a></li>
                            <li><a href="#">클래식 소사이어티</a></li>
                        </ul>
                    </div>
                    <div class="bm_right">
                        <ul>
                            <li class="line"><a href="#">고객센터</a></li>
                            <li class="line"><a href="#">테스트</a></li>
                            <li><a href="#">VIP</a></li>
                        </ul>
                        <ul>
<!--                             <li class="white"><a href="#">상영시간표</a></li> -->
<!--                             <li class="purple"><a href="#">빠른예매</a></li> -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide ss1">
                        <div class="container">
                            <div class="row">
                                <h2>더 플래시<em>The Flash</em></h2>
                                <p>차원이 다른 히어로가 온다!</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss2">
                        <div class="container">
                            <div class="row">
                                <h2>엘리멘탈 <em>Elemental</em></h2>
                                <p>불, 물, 공기, 흙 4개의 원소들이 살고 있는 엘리멘트 시티</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss3">
                        <div class="container">
                            <div class="row">
                                <h2>트랜스포머: 비스트의 서막 <em>Transformers: Rise of the Beasts</em></h2>
                                <p>모두의 운명을 건 그들의 압도적 전투가 시작된다!</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </section>
    <!-- //검색바 -->
    <nav class="navbar navbar-light bg-light">
        <div class="container-fluid">
	     	<form id="search" name="search"  class="d-flex">
				<input type="text" class="form-control" id="title1" name="title1" />
				<button type="button" class="btn btn-outline-success" id="searchBtn" name="searchBtn">검색</button>
			</form>
   		 </div>
    </nav>
    
    <form id="detail" name="detail" >
		<input type="hidden" id="id" name="id" />
	</form>

<!-- 	<form id="search" name="search" > -->
<!-- 		<input type="text" id="title" name="title" /> -->
		
<!-- 	</form> -->


        <!-- //검색바 끝 -->
    <section id="movie">
        <div class="container">
            <div class="row">
                <h2 class="ir_so">영화 예매</h2>
                <div class="movie">
                    <div class="movie_title">
                        <ul class="clearfix">
                            <li class="active"><a href="#">인기순위</a></li>
                            <li><a href="#">최신개봉작</a></li>
                            <li><a href="#">상영예정작</a></li>
                            <li><a href="#">미정</a></li>
                        </ul>
                    </div>
                    <div class="movie_chart">
                   		<div class="swiper-container2">
					        <div class="chart_cont1 swiper-wrapper">
					            <c:forEach var="moviepop" items="${popular}">
					                <div class="swiper-slide">
					                    <div class="poster">
					                        <figure>
					                            <img src="<c:out value='http://image.tmdb.org/t/p/w400${moviepop.poster_path}'/>" srcset="<c:out value='http://image.tmdb.org/t/p/w400${moviepop.poster_path} 2x'/>" alt="<c:out value='${moviepop.title}'/>" >
					                        </figure>
<%-- 					                        <div class="rank"><strong><c:out value='${movie.rank}' /></strong></div> --%>
					                        <div class="mx">
					                            <span class="icon m ir_pm">MX</span>
					                            <span class="icon b ir_pm">Boutique</span>
					                            <!-- 필요한 정보를 여기에 추가하세요 -->
					                        </div>
					                    </div>
					                    <div class="infor">
					                        <h3>
					                            <span class="icon all ir_pm">전체관람가</span> <strong><c:out value='${moviepop.title}'/></strong>
					                        </h3>
					                        <div class="infor_btn">
					                        
					                            <a href="#">상세정보</a>
					                            <a href="#">예매하기</a>
					                        </div>
					                    </div>
					                </div>
					            </c:forEach>
					        </div>
					    </div>
                        <!-- //chart_cont1-->
                        <div class="swiper-container2">
					        <div class="chart_cont2 swiper-wrapper">
					            <c:forEach var="movie" items="${movies}">
					                <div class="swiper-slide">
					                    <div class="poster">
					                        <figure>
					                            <img src="<c:out value='http://image.tmdb.org/t/p/w400${movie.poster_path}'/>" srcset="<c:out value='http://image.tmdb.org/t/p/w400${movie.poster_path} 2x'/>" alt="<c:out value='${movie.title}'/>" >
					                        </figure>
<%-- 					                        <div class="rank"><strong><c:out value='${movie.rank}' /></strong></div> --%>
					                        <div class="mx">
					                            <span class="icon m ir_pm">MX</span>
					                            <span class="icon b ir_pm">Boutique</span>
					                            <!-- 필요한 정보를 여기에 추가하세요 -->
					                        </div>
					                    </div>
					                    <div class="infor">
					                        <h3>
					                            <span class="icon all ir_pm">전체관람가</span> <strong><c:out value='${movie.title}'/></strong>
					                        </h3>
					                        <div class="infor_btn">
					                        
					                            <a href="#">상세정보</a>
					                            <a href="#">예매하기</a>
					                        </div>
					                    </div>
					                </div>
					            </c:forEach>
					        </div>
					    </div>
                        <!-- //chart_cont2-->
                        
                     <div class="swiper-container2">
					        <div class="chart_cont3 swiper-wrapper">
					            <c:forEach var="movieup" items="${upcoming}">
					                <div class="swiper-slide">
					                    <div class="poster">
					                        <figure>
					                            <img src="<c:out value='http://image.tmdb.org/t/p/w400${movieup.poster_path}'/>" srcset="<c:out value='http://image.tmdb.org/t/p/w400${movieup.poster_path} 2x'/>" alt="<c:out value='${movieup.title}'/>" >
					                        </figure>
<%-- 					                        <div class="rank"><strong><c:out value='${movie.rank}' /></strong></div> --%>
					                        <div class="mx">
					                            <span class="icon m ir_pm">MX</span>
					                            <span class="icon b ir_pm">Boutique</span>
					                            <!-- 필요한 정보를 여기에 추가하세요 -->
					                        </div>
					                    </div>
					                    <div class="infor">
					                        <h3>
					                            <span class="icon all ir_pm">전체관람가</span> <strong><c:out value='${movieup.title}'/></strong>
					                        </h3>
					                        <div class="infor_btn">
					                        
					                            <a href="#">상세정보</a>
					                            <a href="#">예매하기</a>
					                        </div>
					                    </div>
					                </div>
					            </c:forEach>
					        </div>
					    </div>
                        <!-- //chart_cont3-->
                        
                       <div class="swiper-container2">
					        <div class="chart_cont4 swiper-wrapper">
					            <c:forEach var="movie" items="${movies}">
					                <div class="swiper-slide">
					                    <div class="poster">
					                        <figure>
					                            <img src="<c:out value='http://image.tmdb.org/t/p/w400${movie.poster_path}'/>" srcset="<c:out value='http://image.tmdb.org/t/p/w400${movie.poster_path} 2x'/>" alt="<c:out value='${movie.title}'/>" >
					                        </figure>
<%-- 					                        <div class="rank"><strong><c:out value='${movie.rank}' /></strong></div> --%>
					                        <div class="mx">
					                            <span class="icon m ir_pm">MX</span>
					                            <span class="icon b ir_pm">Boutique</span>
					                            <!-- 필요한 정보를 여기에 추가하세요 -->
					                        </div>
					                    </div>
					                    <div class="infor">
					                        <h3>
					                            <span class="icon all ir_pm">전체관람가</span> <strong><c:out value='${movie.title}'/></strong>
					                        </h3>
					                        <div class="infor_btn">
					                        
					                            <a href="#">상세정보</a>
					                            <a href="#">예매하기</a>
					                        </div>
					                    </div>
					                </div>
					            </c:forEach>
					        </div>
					    </div>
                        <!-- //chart_cont4-->
                        
                        <!-- //chart_cont4 end-->
                    </div>
                </div>
            </div>
        </div>
    </section>  
    <!-- //movie -->
    

    
    <!-- 자바스크립트 라이브러리 -->
<!--     <script src="/resources/assets/js/jquery.min_1.12.4.js"></script> -->
    <script src="/resources/assets/js/modernizr-custom.js"></script>
    <script src="/resources/assets/js/ie-checker.js"></script>
    <script src="/resources/assets/js/swiper.min.js"></script>
    <script>
        //배너 이미지 슬라이드
        var swiper = new Swiper('.swiper-container',{
            pagination: {
                el: '.swiper-pagination',
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            autoplay: {
                delay: 5000,
            },
        });
        
        //영화차트 이미지 슬라이드
        var swiper = new Swiper('.swiper-container2',{
            slidesPerView: 4,
            spaceBetween: 24,
            mousewheel: {
                invert: true,
            },
            keyboard: {
                enabled: true,
                onlyInViewport: false,
            },
            autoplay: {
                delay: 4000,
            },
            breakpoints: {
                600: {
                    slidesPerView: 1.4,
                    spaceBetween: 24
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 24
                },
                960: {
                    slidesPerView: 3,
                    spaceBetween: 24
                }
            }
        });
        
        //영화차트 탭 메뉴
        var movBtn = $(".movie_title > ul > li");    
        var movCont = $(".movie_chart > div");  

        movCont.hide().eq(0).show();

        movBtn.click(function(e){
            e.preventDefault();
            var target = $(this);         
            var index = target.index();  
            movBtn.removeClass("active");   
            target.addClass("active");    
            movCont.css("display","none");
            movCont.eq(index).css("display","block");
        });
    </script>
     
     
     
     
     
     
     
     
     
     
     
     
     
     <!-- ////////////////////////////////////////////////////////// -->
     
    </div>

    <footer class="footer">
     	<tiles:insertAttribute name="footer" />
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
    <script src="/resources/dist/js/bootstrap.min.js"></script>
    
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<!--     <script src="/resources/assets/js/ie10-viewport-bug-workaround.js"></script> -->
  </body>
</html>
