<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
.integration-single .container {
    max-width: 1000px; /* 최대 넓이 설정 */
    margin: 0 auto; /* 중앙 정렬 */
    padding: 0 20px; /* 좌우 패딩 */
}

.card {
    height: auto;
    min-height: 100vh;
    overflow-y: visible;
    max-width: 1000px;
    margin: 0 auto;
}

.list_info {
    display: flex;
    justify-content: flex-end;
    align-items: center;
}

.box_item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 30px 30px;
    border-bottom: 1px solid #ccc;
    margin-bottom: 15px;
}

.com-title {
    flex: 6;
}

.com-info {
    flex: 0.9;
    border-left: 2px solid #ccc;
    padding-left: 20px;
}

.support_detail {
    text-align: right;
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-end;
}

.date {
    font-size: 15px;
    margin-right: 8px;
}

.recruit-present-info {
    display: flex;
    justify-content: space-between;
    width: 100%;
    align-items: center;
}
.job_meta{
	margin-top:5px;

}
.job_meta .job-keyword{

	padding:3px 5px;
    color: #6777EE;
    text-decoration: none;
    border: 1px solid #6777EE;
    border-radius: 5px;
    background-color: #fff;
    transition: background-color 0.3s, color 0.3s;
	margin-right:5px;
}

.com-name {
    font-size: 1.1rem;
    color: #707070;
}

.job_tit {
	margin: 7px 0;
    font-size: 1.5rem;
    color: #333;
}

.PageBox {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    margin: 0 auto;
}

#list-cnt {
    color: #6777EE;
}

.list-header {
    margin: 15px 0;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.InpBox {
    margin-right: 5px;
    border: 1px solid #BFBFBF;
    border-radius: 6px;
    overflow: hidden;
    background-color: white;
    position: relative;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    width: auto;
}

.InpBox select {
    width: 100%;
    max-width: 80px;
    min-width: 80px;
    padding: 8px 16px;
    border: none;
    background: transparent;
    appearance: none;
    color: #707070;
    font-size: 14px;
}

.InpBox::after {
    content: '\25BC';
    position: absolute;
    top: 0;
    right: 10px;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #BFBFBF;
    font-size: 10px;
}

.InpBox:hover {
    border-color: #6777EE;
    background-color: #6777EE;
    cursor: pointer;
}

.InpBox:hover select {
    color: #FFF;
}

.InpBox select option {
    color: #707070;
}

.list {
    text-align: left;
    width: 500px;
}



#searchForm {
    display: flex;
    align-items: center;
    justify-content: center;
    background: #FFFFFF;
    padding: 10px 20px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    border-radius: 25px;
    width: 50%;
    margin: 20px auto;
}

#searchForm .input {
    flex-grow: 1;
    border: none;
    padding: 8px 15px;
    font-size: 14px;
    outline: none;
}

#searchForm button.search {
    background: #6777EE;
    border: none;
    color: white;
    padding: 8px 20px;
    border-radius: 0 15px 15px 0;
    cursor: pointer;
    font-size: 14px;
}

#searchForm button.search:hover {
    background-color: #5a67d8;
}

#searchForm .input:focus {
    outline: none;
    border: none;
    box-shadow: none;
}

.list-title {
    margin-left: 10px;
}

.list-title span,
.list-title p {
    font-size: 1.5rem;
    display: inline;
    color: #333;
}

.gradiTitle span {
    background: linear-gradient(184.78deg, #535AED 7.64%, #004F8B 120.07%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.mt-6 {
    margin-top: 1.5rem;
}

.PageBox {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    margin-top: 3rem;
    margin: 3rem auto 0;
    text-align: center;
}

.pagination {
    display: flex;
    list-style: none;
    padding: 0;
}

.pagination li {
    margin: 0;
    display: flex;
    align-items: center;
}

.pagination li a {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 36px;
    padding: 8px 12px;
    color: #000;
    text-decoration: none;
    border: 1px solid #ddd;
    background-color: #fff;
    transition: background-color 0.3s, color 0.3s;
}

.paging-icon {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 4px;
    margin-top: 3px;
    min-height: 23px;
    font-size: 18px;
    color: #6777EE;
}

.pagination li.active a,
.pagination li a:hover,
.pagination li.active a span,
.pagination li a:hover span {
    background-color: #6777EE;
    color: #FFF;
    border-color: #6777EE;
}

.pagination li:first-child a {
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
}

.pagination li:last-child a {
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
}
<!-- 상세조회 -->
.optionRegion {
	margin-top: 20px;
	display: flex;
	border: 1px solid #dee2e6;
	border-radius: 4px;
	overflow: hidden;
}

.region-list {
    width: 100%; /* 전체 너비 사용 */
    max-height: 240px;
    padding: 10px;
    margin-top:10px;
    background-color: #f8f9fa;
    overflow-y: auto;
    color: #606060;
}

.region-list ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
    display: grid;
    grid-template-columns: repeat(9,1fr); 
    grid-template-rows: auto auto; /* 두 줄 생성 */
    grid-auto-flow: column; /* 열 방향으로 자동 배치 */
    grid-gap: 5px;
}

.region-list li {
	cursor: pointer;
	padding: 5px;
	border-radius: 4px;
	transition: background-color 0.3s;
}

.region-list li:hover {
	background-color: #e9ecef;
}

.location-list {
	flex-grow: 1;
	max-height: 240px;
	padding: 10px;
	background-color: #fff;
	overflow-y: auto;
	font-size: 0.85rem;
}

.location-list input[type='checkbox'] {
	height: 0.9rem;
	width: 0.9rem;
	margin-bottom: 1.5px;
}

.location-list input[type='checkbox']:focus, #welfareCheckboxes input[type='checkbox']:focus { 
	--tw-ring-shadow: none;
}

.location-list #locationCheckboxes {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	grid-gap: 10px;
	text-align: left;
}

.location-list label {
	display: block;
}

@media screen and (max-width: 768px) {
	.location-list #locationCheckboxes {
		grid-template-columns: repeat(2, 1fr);
	}
}

@media screen and (max-width: 480px) {
	.location-list #locationCheckboxes {
		grid-template-columns: 1fr;
	}
}


.tag-group {
	padding: 10px;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	height: 50px;
	gap: 10px;
}
.tag-group label {
	font-size: 0.8rem;
	display: inline-block;
	padding: 3px 8px;
	background-color: #f1f1f1;
	border-radius: 4px;
	cursor: pointer;
	margin: 0 2px;
}

.tag-group input[type="checkbox"] {
	display: none;
}

.tag-group input[type="checkbox"]:checked+label {
	background-color: #5068EF;
	color: #fff;
}

.table_scroll {
	max-height: 250px;
	overflow-y: auto;
	margin-top: 1.25rem;
	border: 1px solid #ccc;
	border-collapse: collapse;
}

.default_table {
	width: 100%;
	border-collapse: collapse;
}

.default_table th, .default_table td {
	padding: 10px;
	border: 1px solid #ccc;
	vertical-align: top;
}

.default_table th {
	background-color: #f5f5f5;
	font-weight: bold;
	text-align: center;
	color: #606060;
}

.default_table td {
	font-size: 14px;
}

.chk_list {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.chk_item {
	margin-bottom: 5px;
}

.clear {
	cursor: pointer;
	font-size: 0.85rem;
	color: #606060;
}

.gradiTitle span {
  background: linear-gradient(184.78deg, #535AED 7.64%, #004F8B 120.07%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
.preferTitle {
	color: #292929;
}

#userDetail {
	display: grid;
	font-size: 0.9rem;
	grid-template-columns: repeat(3, 1fr);
    grid-gap: 10px;
}
#userDetail h6 {
	line-height: 2;
}
#userDetail select {
	font-size: 0.9rem;
	padding-right: 2rem;
	padding-bottom: 0.3rem;
	padding-top: 0.3rem;
    border-radius: 2.5px;
    width: 90%;
}
#userDetail input[type='number']{
	font-size: 0.9rem;
    border-radius: 2.5px;
	width: 90%;
	height: 35px;
	padding: 0 0 0 0.75rem;
}

#userDetail select:focus, #userDetail input[type='number']:focus{
	--tw-ring-color: #535AED;
}

.optionJob {
	border: 1px solid #dee2e6;
	border-radius: 4px;
	overflow: hidden;
}

.row_item {
	display: flex;
	border-bottom: 1px solid #ccc;
}

.row_item:last-child {
	border-bottom: none;
}

.category-list {
	width: 150px;
	padding: 10px;
	background-color: #f1f1f1;
	border-right: 1px solid #ccc;
	text-align: center;
}

.category-list h3 {
	margin: 0;
	cursor: pointer;
}



.tag-group label {
	font-size: 0.8rem;
	display: inline-block;
	padding: 3px 8px;
	background-color: #f1f1f1;
	border-radius: 4px;
	cursor: pointer;
}

.tag-group input[type="checkbox"] {
	display: none;
}

.tag-group input[type="checkbox"]:checked+label {
	background-color: #007bff;
	color: #fff;
}

.toggle-button {
	display: inline-block;
	margin-left: 5px;
	cursor: pointer;
}
.detail-search{
	margin-top: 10px;

}

        #detail-search-btn {
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            background-color: #6777EE;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
            line-height: 30px;
            font-size: 16px;
        }

        #detail-search-btn:hover {
            background-color: #5566cc;
        }

</style>
</head>

<%@include file="/WEB-INF/views/inc/header.jsp" %>

<body>

<!-- ./end floating assets -->

<section class="page-hero pt-16 pb-6">
  <div class="container">
    <div class="card" id="itvWriteQnA">
      <div class="card-content-wrapper">
        <div class="card-content">
          <div class="px-4 text-center">
            <h1 class="mt-3 gradiTitle"><span>채용공고</span></h1>
            <p class="mt-6">채용이 진행 중인 공고를 확인하세요.</p>
          </div>

          <div>
            <form id="searchForm" method="" action="">
             
              <input type="text" name="input" class="input" id="search-input" placeholder="기업명으로 검색하세요.">
              <button type="button" class="search" id="search-btn">
                <span class="material-symbols-outlined">
                  <span class="material-symbols-outlined">search</span>
                </span>
              </button>
            </form>
            <form>
            	<button type="button" class="btn btnList w-full" id="detail-search-btn" >학력 / 경력 / 연봉 / 지역 / 직무로 상세조회하기</button>
            </form>
			</div>
			<div>
            <section class="integration-single section pt-0" style="display: none;" id="detailSection">

			<div class="container">
			<div class="justify-center">

				<div class="justify-center">
					
						<div class="mt-8 border-border py-10" id="userDetail">
							<div>
							<h6 class="text-left preferTitle">
								<i class="fa-solid fa-user-graduate"></i> 학력 선택
							</h6>
							<select>
								<option value="0">학력무관</option>
								<option value="1">고등학교졸업</option>
								<option value="2">대학교(2,3년)</option>
								<option value="3">대학교졸업(4년)</option>
								<option value="4">석사졸업</option>
								<option value="5">박사졸업</option>
								<option value="6">고등학교졸업이상</option>
								<option value="7">대학교(2,3년)이상</option>
								<option value="8">대학교졸업(4년)이상</option>
								<option value="9">석사졸업이상</option>
							</select>
							</div>
							<div>
							<h6 class="text-left preferTitle">
								<i class="fa-solid fa-briefcase"></i> 경력 선택
							</h6>
							<input type="number" min="0" max="40" step="1" placeholder="숫자만 입력(0 ~)" required>
							</div>
							<div>
							<h6 class="text-left preferTitle">
								<i class="fa-solid fa-hand-holding-dollar"></i> 희망연봉
							</h6>
							<select>
								<option value="0">회사내규에 따름</option>
								<option value="9">2,600만원 이상</option>
								<option value="10">2,800만원 이상</option>
								<option value="11">3,000만원 이상</option>
								<option value="12">3,200만원 이상</option>
								<option value="13">3,400만원 이상</option>
								<option value="14">3,600만원 이상</option>
								<option value="15">3,800만원 이상</option>
								<option value="16">4,000만원 이상</option>
								<option value="17">5,000만원 이상</option>
								<option value="18">6,000만원 이상</option>
								<option value="19">7,000만원 이상</option>
								<option value="20">8,000~9,000만원</option>
								<option value="21">9,000~1억원</option>
								<option value="22">1억원 이상</option>
								<option value="99">면접후 결정</option>
							</select>
							</div>

						</div>

						<!-- 선호근무지역 Start -->
						<div class="border-border">
							<h5 class="text-left preferTitle">
								<i class="fa-solid fa-location-dot"></i> 지역으로 조회하기(최대 3건)
							</h5>
							<div class="optionRegion">
								<div class="region-list">
									<ul>
										<li onclick="showLocations('서울')">서울</li>
										<li onclick="showLocations('경기')">경기</li>
										<li onclick="showLocations('인천')">인천</li>
										<li onclick="showLocations('부산')">부산</li>
										<li onclick="showLocations('대구')">대구</li>
										<li onclick="showLocations('광주')">광주</li>
										<li onclick="showLocations('대전')">대전</li>
										<li onclick="showLocations('울산')">울산</li>
										<li onclick="showLocations('세종')">세종</li>
										<li onclick="showLocations('강원')">강원</li>
										<li onclick="showLocations('경남')">경남</li>
										<li onclick="showLocations('경북')">경북</li>
										<li onclick="showLocations('전남')">전남</li>
										<li onclick="showLocations('전북')">전북</li>
										<li onclick="showLocations('충남')">충남</li>
										<li onclick="showLocations('충북')">충북</li>
										<li onclick="showLocations('제주')">제주</li>
									</ul>
								</div>

								<div class="location-list">
									<div id="locationCheckboxes"></div>
								</div>
							</div>
							<div class="tag-group">
								<span id="lctag"> </span> <span class="clear"
									onclick="clearLocations()"><i
									class="fa-solid fa-rotate-right"></i> 지역 초기화</span>
							</div>
						</div>
						<!-- 선호근무지역 End -->
						<!-- 선호직무 -->
						<div data-tab-group="service-tab" class="">
						<div class="px-4 text-center">
							<h5 class="text-left">🖤선호직무</h5>
							<div class="optionJob mt-4">
								<dl class="row_item">
									<dt class="category-list">
										<h6>
											직무·직업<span class="toggle-button"
												onclick="toggleTagList(event)">+</span>
										</h6>
									</dt>
									<dd class="tag-group">
										<input type="checkbox" id="tag1" value="데이터엔지니어"> <label
											for="tag1">데이터엔지니어</label> <input type="checkbox" id="tag2"
											value="프론트엔드"> <label for="tag2">프론트엔드</label>
									</dd>
								</dl>

								<dl class="row_item">
									<dt class="category-list">
										<h6>
											전문분야<span class="toggle-button"
												onclick="toggleTagList(event)">+</span>
										</h6>
									</dt>
									<dd class="tag-group">
										<input type="checkbox" id="tag3" value="자바"> <label
											for="tag3">자바</label> <input type="checkbox" id="tag4"
											value="AWS"> <label for="tag4">AWS</label> <input
											type="checkbox" id="tag5" value="Python"> <label
											for="tag5">Python</label>
									</dd>
								</dl>

								<dl class="row_item">
									<dt class="category-list">
										<h6>
											기술스택<span class="toggle-button"
												onclick="toggleTagList(event)">+</span>
										</h6>
									</dt>
									<dd class="tag-group">
										<input type="checkbox" id="tag6" value="React"> <label
											for="tag6">React</label> <input type="checkbox" id="tag7"
											value="웹개발"> <label for="tag7">웹개발</label> <input
											type="checkbox" id="tag8" value="ABAP"> <label
											for="tag8">ABAP</label>
									</dd>
								</dl>
							</div><div class="tag-group">
								<span id="lctag"> </span> <span class="clear"
									onclick="clearLocations()"><i
									class="fa-solid fa-rotate-right"></i> 직무 초기화</span>
							</div>
						</div>

<div class="detail-search px-4 text-center">
						<button class="btn btn-primary" type="submit">선택 조건으로 채용공고 조회하기</button>
						</div>
					</div>
					
				</div>
						
					</div>
				</div>
				</section>
			</div>
		</div>
	
         </div>

          <div id="default_list_wrap" style="position:relative">
            <section class="list_recruiting">
              <div class="list-header">
                <div class="list-title">
                  <p><span class="material-symbols-outlined">subject</span></p><p>조회된 채용공고는 총 <span id="list-cnt">1234</span>건입니다.</p>
                </div>
                <div class="list_info">
                  <div class="InpBox">
                    <select class="sorting" name="page_count" id="page_count">
                      <option value="20" selected>20개씩</option>
                      <option value="30">30개씩</option>
                      <option value="50">50개씩</option>
                      <option value="100">100개씩</option>
                    </select>
                  </div>
                  <div class="InpBox">
	            <select class="sorting" name="sort" id="sort">
	                <option value="RD" selected>최신순</option><option value="EA" >마감순</option>
	            </select>
	        	</div>
                 
                </div>
              </div>

 
                  <div class="list_body">
        
        <div id="rec-48103333" class="list_item">
        <div class="box_item row mx-0 rounded-[20px] bg-white px-10 shadow-lg">
            	<div class="com-title">
            	<div class="recruit-present-info">
            	
				<div class="com-name">
              
                                        <span>네이버</span></button>                                                                         
                </div>
                <div class="col support_info">
                <p class="support_detail">
                    <span class="date">~05.16(목)</span>
                    <span class="deadlines">39분 전 등록</span>
               </p>
            </div>
                </div>
                <div class="col notification_info">
                	<div class="job_tit">
                    	<a class="str_tit_title new" id="rec_link_48103333" onclick="" href="#" target="_blank" onmousedown="">
                    	<span><h3>신입직원 공개채용(일반행정)</h3></span></a>                     
                    </div>
               		<div class="job_meta">
                      	<span class="job-keyword">java</span>
                      	<span class="job-keyword">엔지니어</span>
                      	<span class="job-keyword">빅데이터</span>
                	</div>
                </div>
                </div>
                <div class="com-info">
            <div class="col recruit_info">
                <ul>
                    <li>
                         <p class="work_place">서울 서초구</p>
                    </li>
                    <li>
                         <p class="career">신입</p>
                    </li>
                    <li>
                         <p class="education">학력무관</p>
                    </li>
                    <li>
                         <p class="salary">면접 후 협의</p>
                    </li>
               </ul>
               </div>

            </div>

        </div>
	</div>
	</div>   </section>
                </div>
              </div>
         
         
        </div>
  
  

  <nav class="PageBox" aria-label="Page navigation example">
    <ul class="pagination">
      <li class="page-item"><a class="page-link" href="#"><span class="material-symbols-outlined paging-icon">keyboard_double_arrow_left</span></a></li>
      <li class="page-item"><a class="page-link" href="#"><span class="material-symbols-outlined paging-icon">navigate_before</span></a></li>
      <li class="page-item"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">4</a></li>
      <li class="page-item"><a class="page-link" href="#">5</a></li>
      <li class="page-item"><a class="page-link" href="#"><span class="material-symbols-outlined paging-icon">navigate_next</span></a></li>
      <li class="page-item"><a class="page-link" href="#"><span class="material-symbols-outlined paging-icon">keyboard_double_arrow_right</span></a></li>
    </ul>
  </nav>
</section>
<script>
document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("detail-search-btn").addEventListener("click", function() {
        var detailSection = document.getElementById("detailSection");
        if (detailSection.style.display === "none") {
            detailSection.style.display = "block";
        } else {
            detailSection.style.display = "none";
        }
    });
});
/* 선호근무지역 Start */
//선호근무지역 생성기
function showLocations(region) {
	var locationCheckboxes = document
			.getElementById('locationCheckboxes');
	locationCheckboxes.innerHTML = '';

	if (region === '서울') {
		var locations = [ '서울전체', '강남구', '강동구', '강북구', '강서구', '관악구',
				'광진구', '구로구', '금천구', '노원구', '도봉구', '동대문구', '동작구',
				'마포구', '서대문구', '서초구', '성동구', '성북구', '송파구', '양천구',
				'영등포구', '용산구', '은평구', '종로구', '중구', '중랑구' ];

		var locationcode = 101000;
	} else if (region === '경기') {
		var locations = [ '경기전체', '가평군', '고양시', '고양시 덕양구', '고양시 일산동구',
				'고양시 일산서구', '과천시', '광명시', '광주시', '구리시', '군포시', '김포시',
				'남양주시', '동두천시', '부천시', '부천시 소사구', '부천시 오정구', '부천시 원미구',
				'성남시', '성남시 분당구', '성남시 수정구', '성남시 중원구', '수원시',
				'수원시 권선구', '수원시 영통구', '수원시 장안구', '수원시 팔달구', '시흥시',
				'안산시', '안산시 단원구', '안산시 상록구', '안성시', '안양시', '안양시 동안구',
				'안양시 만안구', '양주시', '양평군', '여주시', '연천군', '오산시', '용인시',
				'용인시 기흥구', '용인시 수지구', '용인시 처인구', '의왕시', '의정부시', '이천시',
				'파주시', '평택시', '포천시', '하남시', '화성시' ];
		var locationcode = 102000;
	} else if (region === '광주') {
		var locations = [ '광주전체', '광산구', '남구', '동구', '북구', '서구' ];
		var locationcode = 103000;
	} else if (region === '대구') {
		var locations = [ '대구전체', '남구', '달서구', '달성군', '동구', '북구', '서구',
				'수성구', '중구', '군위군' ];

		var locationcode = 104000;
	} else if (region === '대전') {
		var locations = [ '대전전체', '대덕구', '동구', '서구', '유성구', '중구' ];
		var locationcode = 105000;
	} else if (region === '부산') {
		var locations = [ '부산전체', '강서구', '금정구', '기장군', '남구', '동구',
				'동래구', '부산진구', '북구', '사상구', '사하구', '서구', '수영구', '연제구',
				'영도구', '중구', '해운대구' ];

		var locationcode = 106000;
	} else if (region === '울산') {
		var locations = [ '울산전체', '남구', '동구', '북구', '울주군', '중구' ];

		var locationcode = 107000;
	} else if (region === '인천') {
		var locations = [ '인천전체', '강화군', '계양구', '미추홀구', '남동구', '동구',
				'부평구', '서구', '연수구', '옹진군', '중구' ];

		var locationcode = 108000;
	} else if (region === '강원') {
		var locations = [ '강원전체', '강릉시', '고성군', '동해시', '삼척시', '속초시',
				'양구군', '양양군', '영월군', '원주시', '인제군', '정선군', '철원군', '춘천시',
				'태백시', '평창군', '홍천군', '화천군', '횡성군' ];

		var locationcode = 109000;
	} else if (region === '경남') {
		var locations = [ '경남전체', '거제시', '거창군', '고성군', '김해시', '남해군',
				'창원시 마산회원구', '창원시 마산합포구', '창원시 성산구', '창원시 의창구', '밀양시',
				'사천시', '산청군', '양산시', '의령군', '진주시', '창원시 진해구', '창녕군',
				'창원시', '통영시', '하동군', '함안군', '함양군', '합천군' ];
		var locationcode = 110000;
	} else if (region === '경북') {
		var locations = [ '경북전체', '경산시', '경주시', '고령군', '구미시', '군위군',
				'김천시', '문경시', '봉화군', '상주시', '성주군', '안동시', '영덕군', '영양군',
				'영주시', '영천시', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군',
				'칠곡군', '포항시', '포항시 남구', '포항시 북구' ];
		var locationcode = 111000;
	} else if (region === '전남') {
		var locations = [ '전남전체', '강진군', '고흥군', '곡성군', '광양시', '구례군',
				'나주시', '담양군', '목포시', '무안군', '보성군', '순천시', '신안군', '여수시',
				'영광군', '영암군', '완도군', '장성군', '장흥군', '진도군', '함평군', '해남군',
				'화순군' ];
		var locationcode = 112000;
	} else if (region === '전북') {
		var locations = [ '전북전체', '고창군', '군산시', '김제시', '남원시', '무주군',
				'부안군', '순창군', '완주군', '익산시', '임실군', '장수군', '전주시',
				'전주시 덕진구', '전주시 완산구', '정읍시', '진안군' ];
		var locationcode = 113000;
	} else if (region === '충북') {
		var locations = [ '충북전체', '괴산군', '단양군', '보은군', '영동군', '옥천군',
				'음성군', '제천시', '증평군', '진천군', '청원군', '청주시', '청주시 상당구',
				'청주시 흥덕구', '충주시', '청주시 청원구', '청주시 서원구' ];

		var locationcode = 114000;
	} else if (region === '충남') {
		var locations = [ '충남전체', '계룡시', '공주시', '금산군', '논산시', '당진시',
				'보령시', '부여군', '서산시', '서천군', '아산시', '연기군', '예산군', '천안시',
				'천안시 동남구', '천안시 서북구', '청양군', '태안군', '홍성군' ];

		var locationcode = 115000;
	} else if (region === '제주') {
		var locations = [ '제주전체', '서귀포시', '제주시' ];

		var locationcode = 116000;
	} else if (region === '세종') {
		var locations = [ '세종특별자치시' ];

		var locationcode = 118000;
	}

	locations.forEach(function(location) {
		var label = document.createElement('label');
		var checkbox = document.createElement('input');
		checkbox.type = 'checkbox';
		checkbox.value = locationcode;
		label.appendChild(checkbox);
		label.appendChild(document.createTextNode(' ' + location));
		locationCheckboxes.appendChild(label);
		locationcode += 10;
	});

	//지역체크 유지하기 위한 코드
	document
			.querySelectorAll(
					'#locationCheckboxes input[type="checkbox"]')
			.forEach(
					function(locationCheckbox) {
						document
								.querySelectorAll(
										'#lctag input[type="checkbox"]')
								.forEach(
										function(lctagCheckbox) {
											if (locationCheckbox.value === lctagCheckbox.id) {
												locationCheckbox.checked = true;
											}
										});
					});

}

//지역 초기화 버튼
function clearLocations() {
	$('#locationCheckboxes').html('');
	$('#lctag').html('');
}

//지역 체크시 태그 생성/삭제
$('#locationCheckboxes')
		.on(
				'change',
				'input[type="checkbox"]',
				function() {
					var target = $(this);
					var lctag = $('#lctag');

					if (lctag.children().length >= 6
							&& target.is(':checked')) {
						alert('3개 이상 선택할 수 없습니다.');
						target.prop('checked', false);
						return;
					}

					if (target.is(':checked')) {
						var tagname = target.parent().text().trim();
						var tagId = target.val();

						lctag
								.append('<input type="checkbox" id="' + tagId + '" value="' + tagname + '">'
										+ '<label for="' + tagId + '">'
										+ tagname
										+ ' <i class="fa-solid fa-xmark"></i></label>');
					} else {
						var tagId = target.val();
						$('#' + tagId).next().addBack().remove();
					}
				});

//지역 태그 눌러서 삭제하기
$('#lctag').on('change', 'input[type="checkbox"]', function() {
	var checkboxId = $(this).attr('id');

	$('#locationCheckboxes input[type="checkbox"]').each(function() {
		var locationCheckbox = $(this);
		if (locationCheckbox.val() === checkboxId) {
			locationCheckbox.prop('checked', false);
		}
	});
	$(this).next().addBack().remove();
});
/* 선호근무지역 End */

</script>
</body>

</html>