# 화랑

문화생활정보가 부족한 사람들을 위한 전시와 공연에 대한 정보를 제공하는 사이트. <br>
Spring 프레임워크를 기반으로 제작되었으며 공공데이터포털에서 받은 API를 활용해 정보를 전달했으며 Bootstrap을 이용해 레이아웃을 구성했습니다. 데이터베이스로는 sqlDeveloper을 이용해 게시글과 회원,전시정보들을 DB에 저장되도록 mybatis을 이용했습니다.

|구분|사용기술|
|:------:|:------:|
|OS 및 DB|Windows10, ORACLE|
|사용 Tool|Eclipse, STS, sqlDeveloper, Githab|
|프로그래밍 언어|JAVA, JSP|
|웹 표준 기술|HTML5, CSS, JavaScript, JQuery, Ajax|
|프레임 워크|Spring, MyBatis, Bootstrap|
|서버|AWS, tomcat|

## 담당 - 회원기능 및 관람후기/홍보게시판

Spring-security을 사용해 회원과 관리자의 권한을 설정해주었으며, 네이버와 카카오톡 REST API을 이용해 간편로그인 회원을 만들었습니다.
DB에 비밀번호 저장시 암호화를 사용하여 보안을 강화했고 그 밖에 CRUD가 되는 관람후기 게시판과 홍보 게시판을 개발했으며 비동기적인 일이 필요하다 판단되면 Ajax를 적극적으로 활용했습니다.

## 기능
- 전시/공연 정보조회
- 지도검색
- 네이버,카카오톡 간편로그인
- 회원 찜,즐겨찾기
- 관리자 모드
- 클라우드 펀딩
- 커뮤니티 
- 결제기능 및 관람 후기 작성

## 참고

![메인](https://user-images.githubusercontent.com/53885622/74632196-283f2480-51a2-11ea-8f3f-08938d411a5a.png)

![메뉴](https://user-images.githubusercontent.com/53885622/74632194-270df780-51a2-11ea-9f95-3da6e11363fa.png)

![로그인](https://user-images.githubusercontent.com/53885622/74632354-87049e00-51a2-11ea-848e-b1246ad077f4.png)

## 발표영상
https://www.youtube.com/watch?v=W-0skKgWLC4&t=528s
