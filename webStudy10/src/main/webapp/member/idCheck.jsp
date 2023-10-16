<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="script/member.js"></script>
<title>Insert title here</title>
</head>
<body>

<form action="idCheck.do" method="get" name="frm">
	아이디 <input type="text" name="userid" value="${userid }">
	 <input type="submit" value="중복체크"><br>
	 <c:if test="${result == 1 }">
	 	<script type="text/javascript">
	 		opener.document.frm.userid.value="";
	 	</script>
	 	${userid }는 이미 사용중인 아이디 입니다.
	 </c:if>
	 <c:if test="${result == -1 }">
	 	${userid }는 사용가능한 아이디 입니다.
	 	<input type="button" value="사용" class="cancel" onclick="idOk()">
	 </c:if>
	 

</form>
</body>
</html>