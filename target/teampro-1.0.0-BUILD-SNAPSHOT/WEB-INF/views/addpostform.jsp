<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- contents type 속성.  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 제목  -->
<title>addpostform</title>
</head>
<body>

	<h1>새로운 클레스 등록</h1>
	<form action="addok" method="post">
		<!-- 값이 addpost.jsp로 보내진다.  -->
		<table id="edit">
			<%-- 새로운 post를 테이블에 추가 --%>
			<tr>
				<td>카테고리</td>
				<td><select name="category" id="category" />
					<option value="댄스">댄스</option>
					<option value="노래">노래</option>
					<option value="운동">운동</option>
					<option value="요리">요리</option>
					<option value="기타">기타</option> </select></td>
			</tr>
			<tr>
				<td>클래스 이름</td>
				<td><input type="text" name="classname" /></td>
			</tr>
			<tr>
				<td>클래스 수강시간(00:00 - 00:00)</td>
				<td><input type="text" name="classtime" /></td>
			</tr>
			<tr>
				<td>클래스 수강장소</td>
				<td><input type="text" name="classplace" /></td>
			</tr>
			<tr>
				<td>클래스 내용</td>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td>클래스 정원(숫자만 입력)</td>
				<td><input type="text" name="totalnum" /></td>
			</tr>
			<tr>
				<td>마감 여부</td>
				<td><input type="radio" id="1" name="close" value="마감"><label
					for="마감완료">마감완료</label></td>
				<td><input type="radio" id="2" name="close" value="마감전"><label
					for="마감전">마감전</label></td>
			</tr>

		</table>
		<button type="button" onclick="location.href=list">목록보기</button>
		<button type="submit">등록하기</button>
	</form>

</body>
</html>