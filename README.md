## runningDog Final-Project
-----------------------
유기견 API 데이터를 이용한 유기견 정보, 주인찾기, 이슈, 후원하기 사이트 입니다.

- 유기견 주인찾기
- 유기견 정보
- 중고장터 댓글 구현

중고장터리스트는 속도 향상을 위해 이미지 리사이징을 하고 저장한 후 출력시켰습니다.<br>
* [/runningdog/animal/](https://github.com/HWAJONGLEE/runningdog/tree/master/src/main/java/com/kh/runningdog/animal) <br>
* [/runningdog/dboard/](https://github.com/HWAJONGLEE/runningdog/tree/master/src/main/java/com/kh/runningdog/dboard)<br>
* [/runningdog/dreply/](https://github.com/HWAJONGLEE/runningdog/tree/master/src/main/java/com/kh/runningdog/dreply)<br>
* [/mappers/animal-mapper.xml](https://github.com/HWAJONGLEE/runningdog/blob/master/src/main/resources/mappers/animal-mapper.xml)<br>
* [/mappers/dboard-mapper.xml](https://github.com/HWAJONGLEE/runningdog/blob/master/src/main/resources/mappers/dboard-mapper.xml)<br>
* [/mappers/dreply-mapper.xml](https://github.com/HWAJONGLEE/runningdog/blob/master/src/main/resources/mappers/dreply-mapper.xml)<br>
* [/resources/dboard/js/dboard.js](https://github.com/HWAJONGLEE/runningdog/blob/master/src/main/webapp/resources/dboard/js/dboard.js)<br>
* [/views/animal/](https://github.com/HWAJONGLEE/runningdog/tree/master/src/main/webapp/WEB-INF/views/animal)<br>
* [/views/admin/userBoard/chooseAdminList.jsp](https://github.com/HWAJONGLEE/runningdog/blob/master/src/main/webapp/WEB-INF/views/admin/userBoard/chooseAdminList.jsp)<br>
* [/views/admin/userBoard/chooseAdminUpdate.jsp](https://github.com/HWAJONGLEE/runningdog/blob/master/src/main/webapp/WEB-INF/views/admin/userBoard/chooseAdminUpdate.jsp)<br>
* [/views/admin/userBoard/chooseAdminView.jsp](https://github.com/HWAJONGLEE/runningdog/blob/master/src/main/webapp/WEB-INF/views/admin/userBoard/chooseAdminView.jsp)<br>



### 기능설명
--------------------------

+ 유기동물 주인찾기 게시판 작성
  + List Page Image width 300 맞춰서 reSizing
  + View Page Image width 800 맞춰서 reSizing 800이 안될경우 기존 width에 맞춰서 reSizing
  + 이미지가 아닌 파일 업로드 시 확인
  + 유기동물 발견 장소 카카오 API 위도,경도,위치주소 저장
  + 
  
+ 게시물 보기
  + 작성 게시물 정보 출력
  + 게시물 분별력을 위해 작성자 IP 출력
  + 좋아요 버튼(클릭 시 좋아요 1+ 좋아요 누른 회원 닉네임 출력, 다시 클릭시 좋아요 취소)
  + 최종 수정일자 출력
  + 이미지 4개 출력
  + 댓글기능, 대댓글의댓글 기능 구현(댓글 작성자 IP 출력)
  
+ 중고거래 리스트
  + 지역별 정렬
  + 최신등록순, 가격높은순, 가격낮은순, 좋아요순 정렬
  + 제목검색
  + 페이징처리
  + 페이징 이동시 검색 값 유지
  
+ 마이페이지 기능
  + 자신이 쓴 게시물 출력
  + 검색기능, 페이징처리
  
<h3>🛠 개발환경 </h3>

- 💻 &nbsp; Java | JSP | Spring 3.9.13
- 🌐 &nbsp; HTML | CSS | JavaScript | jQuery 3.5.1
- 🛢 &nbsp; Oracle Database 11g Release 11.2.0.2.0 | Sql
- 🔧 &nbsp; Git | SourceTree
- 📫 &nbsp; apache-tomcat-8.5.57
<br>

