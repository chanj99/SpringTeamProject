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
<title>Edit Form</title>
</head>
<body>
	<h1>클래스 수정</h1>
	<form:form commandName="teampageVO" method="POST" action="../editok">
		<form:hidden path="seq"/>
		<table id="edit">
			<tr>
				<td>카테고리</td>
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
				<td>클래스 이름</td>
				<td><form:input type="text" path="classname" /></td>
			</tr>
			<tr>
				<td>클래스 수강시간(00:00 - 00:00)</td>
				<td><form:input type="text" path="classtime" /></td>
			</tr>
			<tr>
				<td>클래스 수강장소</td>
				<td><form:input type="text" path="classplace" /></td>
			</tr>
			<tr>
				<td>클래스 내용</td>
				<td><form:textarea cols="50" rows="5" path="content"/></td>
			</tr>
			<tr>
				<td>클래스 정원(숫자만 입력)</td>
				<td><form:input type="text" path="totalnum" /></td>
			</tr>
			<tr>
				<td>마감 여부</td>
				<td><form:select path="close" id="close">
					<form:option value="마감" />마감
					<form:option value="마감전" />마감전
					</form:select>
				</td>
			</tr>
		</table>
		<input type="submit" value="수정하기" />
		<input type="button" value="취소하기" onclick="history.back()">
	</form:form>
</body>
</html>