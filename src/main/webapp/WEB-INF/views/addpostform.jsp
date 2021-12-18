<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- contents type 속성.  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 제목  -->
<title>addpostform</title>
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
}

.new:hover{
	background-color:Thistle;
}
.desc{
	text-align: center;
}

</style>
<body>

	<h1>새로운 클레스 등록</h1>
	<div class="container">
	<form action="addok" method="post">
		<!-- 값이 addpost.jsp로 보내진다.  -->
		<table id="edit">
			<%-- 새로운 post를 테이블에 추가 --%>
			<tr>
				<td class="desc">카테고리</td>
				<td><select name="category" id="category" />
					<option value="댄스">댄스</option>
					<option value="노래">노래</option>
					<option value="운동">운동</option>
					<option value="요리">요리</option>
					<option value="기타">기타</option> </select></td>
			</tr>
			<tr>
				<td class="desc">클래스 이름</td>
				<td><input type="text" name="classname" /></td>
			</tr>
			<tr>
				<td class="desc">클래스 수강시간(00:00 - 00:00)</td>
				<td><input type="text" name="classtime" /></td>
			</tr>
			<tr>
				<td class="desc">클래스 수강장소</td>
				<td><input type="text" name="classplace" /></td>
			</tr>
			<tr>
				<td class="desc">클래스 내용</td>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td class="desc">클래스 정원(숫자만 입력)</td>
				<td><input type="text" name="totalnum" /></td>
			</tr>
			<tr>
				<td class="desc">마감 여부</td>
				<td><input type="radio" id="1" name="close" value="마감"><label
					for="마감완료">마감완료</label></td>
				<td><input type="radio" id="2" name="close" value="마감전"><label
					for="마감전">마감전</label></td>
			</tr>

		</table>
		<button class="new" type="button" onclick="location.href=list">목록보기</button>
		<button class="new" type="submit">등록하기</button>
	</form>
	</div>

</body>
</html>