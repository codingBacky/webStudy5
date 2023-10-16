<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="./script/member.js"></script>

<title>Insert title here</title>
</head>
<body>
<h2>회원전용 페이지</h2>

<div class="container">
  <h2>Stacked form</h2>
  <form action="logout.do" method="post" name="frm">
  
  	안녕하세요 ${loginUser.name}(${loginUser.userid})님😊<br><br>
  
	<button type="submit" class="btn btn-danger">로그아웃</button>&nbsp;&nbsp;
    <button type="button" class="btn btn-warning"
    	 onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">회원정보변경</button>&nbsp;&nbsp;
  </form>
</div>


</body>
</html>