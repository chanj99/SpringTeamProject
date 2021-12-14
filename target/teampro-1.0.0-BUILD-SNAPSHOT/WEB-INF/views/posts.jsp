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
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
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
	<th>Id</th> 
	<th>Category</th>
	<th>Classname</th>
	<th>Classtime</th>
	<th>Classplace</th>
	<th>Content</th>
	<th>Totalnum</th>
	<th>Closed</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>
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
<br/><button type="button" onclick="location.href='add'">새 글쓰기</button>

</body>
</html>