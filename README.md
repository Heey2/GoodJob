# IT's GoodJOB(잇츠굿잡)

### 📌 Summary
사용자 설문을 통해 근무성향조건을 파악하여 구직자의 주관적 선호 반영을 좀 더 극대화한 맞춤 기업 추천 플랫폼입니다.
본 프로젝트는 기업 정보를 바탕으로 자체 제작한 매칭 알고리즘을 이용해 사용자별 매칭률을 계산하고, 맞춤 추천을 제공합니다.

---

### 💡 주요기능
1. 회원가입 / 로그인 / 로그아웃 / 계정 찾기 / 탈퇴       
2. 기업 / 채용 목록 조회
     - 리뷰순, 최신순, 채용중인 기업 정렬 기능
     - 학력 / 경력 / 연봉 / 위치 조건으로 필터링 조회
     - 기본 정보 / 재무 / 채용 / 업종 정보 조회
     - 관련 뉴스 조회
     - 기업 리뷰 조회
     - 실시간 댓글(채팅형) 조회
     - 스크랩 기능
3. 맞춤 기업 추천
     - 사용자 설문조사 > 정확도 검증으로 결과 신뢰도 증가
     - 선호 연봉/직종/지역 등록 > 보다 정확한 추천을 위함
     - 맞춤 기업 추천 > 기업 정보를 기반으로 점수화 + 사용자 성향 점수/가중치 계산
     - 선택 기업 비교 > 사용자가 원하는 기업들의 점수, 연봉, 평점 등 비교
4. 기업 리뷰 / 면접스터디 구인 / 면접후기 / 질문게시판 / 공지사항 
     - 각종 커뮤니티로 기업 상세 정보 획득
     - 댓글, 신고 기능 구현       
5. 마이페이지
     - 각종 활동 내역, 스크랩, 설문조사 내역 수정/삭제 등 관리 기능
6. 관리자
     - 회원(조회, 차단 및 신고) 관리
     - 기업(조회, 등록, 수정) 관리
     - 게시판(신고 게시글, 리뷰 승인/반려 등) 관리
     - 통계(가입자, 방문자, 등록기업, 리뷰 수 등) 기능

---

### 🔨 Tech Stack
- Java(Servlet/JSP)
- HTML
- CSS
- Javascript
- SQL(Oracle)

---

### 🔎 사용한 API 
1. [사람인 : 채용 공고 API](https://oapi.saramin.co.kr/)
2. [금융감독원 : 상장기업 재무정보 API](https://opendart.fss.or.kr/guide/detail.do?apiGrpCd=DS003&apiId=2019017)
3. [금융감독원 : 사업보고서 주요정보 API](https://opendart.fss.or.kr/guide/detail.do?apiGrpCd=DS002&apiId=2019011)
4. [금융감독원 : 공시정보 API](https://opendart.fss.or.kr/guide/detail.do?apiGrpCd=DS001&apiId=2019002)
5. [네이버 : 뉴스 API](https://developers.naver.com/docs/serviceapi/search/news/news.md#%EB%89%B4%EC%8A%A4)
6. [카카오 : 우편번호 API](https://postcode.map.daum.net/guide)
