<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycom.teampro.teampage.TeampageDAO, com.mycom.teampro.teampage.TeampageVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- core 태그 라이브러리 선언  -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- content = "" 값에 http 헤더 제공  -->

<title>클래스 신청 게시판</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Yeon+Sung&display=swap');
body {
	background-image: url("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a");
	background-repeat: no-repeat;
	background-size: cover;
	color: black;
	font-family: "Black Han Sans", sans-serif;
}

h1 {
	text-align: center;
	font-size: 60px;
	background: linear-gradient(to bottom, #861657, #ffa69e);
    color: transparent;
    -webkit-background-clip: text;
}
#list {
  font-family: "Yeon Sung", cursive;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px black;
  border-style: dashed;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background: MistyRose;}
#list tr:hover {background-color: white;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: Pink;
  color: white;
}

#new {
	border: 7ps;
	border-color: white;
	background-color: Lavender;	
	float: right;
}

#new:hover{
	background-color:Thistle;
}

</style>
<script>
	// 삭제 확인 함수 생성 
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1>클래스 신청 게시판</h1>
<table id="list" width="90%">
<tr> 
	<th>번호</th> 
	<th>카테고리</th>
	<th>수업</th>
	<th>시간</th>
	<th>장소</th>
	<th>내용</th>
	<th>모집인원</th>
	<th>마감여부</th>
	<th>등록일</th>
	<th>수정</th>
	<th>삭제</th>
</tr>
<!-- list라는 이름을 가진 목록을 출력하는 기능  -->
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.getSeq()}</td>
		<td>${u.getCategory()}</td>
		<td>${u.getClassname()}</td>
		<td>${u.getClasstime()}</td>
		<td>${u.getClassplace()}</td>
		<td>${u.getContent()}</td>
		<td>${u.getTotalnum()}</td>	
		<td>${u.getClose()}</td>	
		<td>${u.getRegdate()}</td>
		<td><a href="editpost/${u.getSeq()}">글 수정</a></td>
		<td><a href="javascript:delete_ok('${u.getSeq()}')">글 삭제</a></td>
	</tr>
</c:forEach>
</table>
<!-- addpostform.jsp 로 이동  -->
<br/><button id="new" type="button" onclick="location.href='add'">새 글쓰기</button>

</body>
</html>