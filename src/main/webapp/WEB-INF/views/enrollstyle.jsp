 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Custom styles for this template-->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/enrollstyle.css" />
  </head>
  <body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark static-top">
      <a class="navbar-brand" href="">스타일등록</a>
    </nav>
    <br />
    <table class="table">
      <tbody>
        <tr>
          <td><b>스타일번호</b></td>
          <td>
            <input type="text" name="style_id" />
          </td>
          <td><b>스타일명</b></td>
          <td>
            <input type="text" name="style_name" />
          </td>
        </tr>
        <tr>
          <td><b>오더일</b></td>
          <td>
            <input type="date" name="style_deliverydate" />
          </td>
          <td><b>납기일</b></td>
          <td>
            <input type="date" name="style_orderdate" />
          </td>
        </tr>
        <tr>
          <td><b>시즌</b></td>
          <td>
            <input type="text" name="style_season" />
          </td>
          <td><b>작업장</b></td>
          <td>
            <input type="text" name="style_workplace" />
          </td>
        </tr>
        <tr>
          <td><b>수량</b></td>
          <td>
            <input type="text" name="style_quantity" />
          </td>
          <td><b>단가</b></td>
          <td>
            <input type="text" name="style_price" />
          </td>
        </tr>
        <tr>
          <td><b>작성자</b></td>
          <td>
            <input type="text" name="style_inputname" />
          </td>
          <td><b>거래처코드</b></td>
          <td id="correspondent_code">
            <input type="text" name="correspondent_code" readonly />
            <button id="searchBtn" class="btn btn-info">
              거래처명으로 검색
            </button>
            <div id="searchCorresDiv" class="hidden">
              <input
                type="text"
                name="correspondent_name"
                placeholder="거래처명 입력"
              />
              <ul>
                <li class="underline head_list">
                  <span class="width30">거래처코드</span>
                  <span class="width30">거래처명</span>
                  <span class="width30">거래처구분</span>
                </li>
              </ul>
            </div>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <button type="button" id="enrollBtn" class="btn btn-info">
              등록
            </button>
            <button class="btn btn-danger" onclick="window.close()">
              취소
            </button>
          </td>
        </tr>
      </tbody>
    </table>

    <!-- Custom scripts for all pages-->
    <script
      src="https://code.jquery.com/jquery-2.2.4.min.js"
      integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
      crossorigin="anonymous"
    ></script>
    <script src="js/sb-admin.min.js"></script>
    <!-- import custom jacascript code -->
    <script src="js/enrollstyle.js"></script>
  </body>
</html>
