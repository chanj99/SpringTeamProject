<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>

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
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
body {
	background-color: lightblue;
	color: black;
	font-family: "Black Han Sans", sans-serif;
}

P{
	color: white;
}
</style>
<body>

	<div class="jumbortron text-center">
		<h1>클래스 신청 게시판!</h1>
		<P>The time on the server is ${serverTime}.</P>
		<P>클래스를 신청하시려면 아래의 링크를 눌러주세요! :)</P>
		<P>
			<a href="/login/login">클래스신청 게시판으로 이동</a>
		</P>
	</div>


</body>
</html>
