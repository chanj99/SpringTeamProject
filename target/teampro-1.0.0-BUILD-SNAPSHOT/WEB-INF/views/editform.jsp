<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- contents type 속성.  --%>
<%@page import="com.mycom.teampro.teampage.TeampageDAO, com.mycom.teampro.teampage.TeampageVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- class 두개를 Import 하여 사용해준다.  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Edit Form</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
body {
	background-image: url("https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v960-ning-30.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=63dd5f402645ef52fb7dfb592aec765a");
	background-repeat: no-repeat;
	background-size: cover;
	color: black;
	font-family: "Black Han Sans", sans-serif;
	display: inline-block;
}

h1 {
	text-align: center;
	font-size: 40px;
	background: linear-gradient(to bottom, #861657, #ffa69e);
    color: transparent;
    -webkit-background-clip: text;
}

.new {
	border: 7ps;
	border-color: white;
	background-color: Lavender;
	float: right;
}

.new:hover{
	background-color:Thistle;
}
.desc{
	text-align: center;
}

</style>
<body>
	<h1>클래스 수정</h1>
	<form:form class="form-horizontal" commandName="teampageVO" method="POST" action="../editok">
		<form:hidden path="seq"/>
		<table id="edit">
			<tr>
				<td class="desc">카테고리</td>
				<td><form:select path="category" id="category">
					<form:option value="댄스" />댄스
					<form:option value="노래" />노래
					<form:option value="운동" />운동
					<form:option value="요리" />요리
					<form:option value="기타" />기타
					</form:select>
				</td>
				
			</tr>
			<tr>
				<td class="desc">클래스 이름</td>
				<td><form:input type="text" path="classname" /></td>
			</tr>
			<tr>
				<td class="desc">클래스 수강시간(00:00 - 00:00)</td>
				<td><form:input type="text" path="classtime" /></td>
			</tr>
			<tr>
				<td class="desc">클래스 수강장소</td>
				<td><form:input type="text" path="classplace" /></td>
			</tr>
			<tr>
				<td class="desc">클래스 내용</td>
				<td><form:textarea cols="50" rows="5" path="content"/></td>
			</tr>
			<tr>
				<td class="desc">클래스 정원(숫자만 입력)</td>
				<td><form:input type="text" path="totalnum" /></td>
			</tr>
			<tr>
				<td class="desc">마감 여부</td>
				<td><form:select path="close" id="close">
					<form:option value="마감" />마감
					<form:option value="마감전" />마감전
					</form:select>
				</td>
			</tr>
			<br>
		</table>
		<br>
		<input class="new" type="submit" value="수정하기" />
		<input class="new" type="button" value="취소하기" onclick="history.back()">
	</form:form>
</body>
</html>