 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />
  </head>
  <body id="page-top">
    <!-- 로긴폼 -->
    <br /><br /><br />
    <div class="container">
      <div class="row">
        <!-- 점보트론 -->
        <div class="jumbotron">
        <% 
       	String msg = (String) request.getAttribute("msg");
        if(msg !=null){ 
        %>
          <div class="warning_Container">
            <h3>${msg}</h3>
          </div>
        <%
        }
        %>
          <!-- 로그인 정보를 숨기면서 전송post -->
          <form method="post" action="login">
            <h3 style="text-align: center;">로그인화면</h3>
            <div class="form-group" id="aa">
              <input
                type="text"
                class="form-control"
                placeholder="아이디"
                name="adminId"
                maxlength="20"
              />
            </div>
            <div class="form-group">
              <input
                type="password"
                class="form-control"
                placeholder="비밀번호"
                name="password"
                maxlength="20"
              />
            </div>
            <input
              type="submit"
              class="btn btn-primary form-control"
              value="로그인"
            />
          </form>
        </div>
      </div>
    </div>
    <!-- 애니매이션 담당 JQUERY -->
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <!-- 부트스트랩 JS  -->
    <script src="js/bootstrap.js"></script>
  </body>
</html>
