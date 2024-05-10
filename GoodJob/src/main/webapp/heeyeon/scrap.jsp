<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<style>
</style>
<%@include file="/WEB-INF/views/inc/adminasset.jsp"%>
<head>
<%@include file="/WEB-INF/views/inc/mypageheader.jsp"%>
</head>
<body>
	<!-- Main Content -->
	<div class="main-content">
		<section class="section">
			<div class="section-header">
				<h1>스크랩</h1>
				<div class="section-header-breadcrumb">
					<div class="breadcrumb-item active">
						<a href="#">스크랩</a>
					</div>
					<div class="breadcrumb-item">내 스크랩 보기</div>
				</div>
			</div>
			<div class="section-body">
				<h2 class="section-title">내 스크랩 보기</h2>
				<div class="row" id="scrapCards">
				        <c:forEach var="scrap" items="${ScrapList}">
                        <div class="col-6 col-md-4 col-lg-3">
                            <div class="card">
                                <div class="card-body">
                                    <div class="logo">
                                        <img class="" src="${scrap.image}" alt="" />
                                        <i class="fas fa-bookmark scrap"></i>
                                    </div>
                                    <div class="infoCard">
                                  
                                        <p class="mt-0">${scrap.idst_name}</p>
                                        <span class="hiring">채용중</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/inc/adminfooter.jsp"%>
	<script>
		$('.fas.fa-bookmark.scrap').click(function() {
			$(this).parents().eq(3).remove();
			//데이터 처리도 해주기
		});
	</script>
</body>
</html>