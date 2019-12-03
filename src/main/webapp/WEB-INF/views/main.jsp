<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <!-- Custom styles for this template-->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/main.css" />
  </head>
  <body>
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
      <div class="left_nav80">
        <a class="navbar-brand mr-1" href="bom">스타일-자재</a>&nbsp;&nbsp;
        <a class="navbar-brand mr-3" href="order">발주</a>
      </div>
      <div class="right_nav20">
        <a class="btn btn-primary" href="login">Logout</a>
      </div>
    </nav>
    <div class="mycontainer">
      <div class="row">
        <button
          class="btn btn-info"
          onclick="window.open('enrollstyle','window_name','width=800,height=600,location=no,status=no,scrollbars=yes');"
        >
          스타일 등록
        </button>
      </div>
      <div class="row margin-top_10 width100">
        <table id="inquiryInputTable" class="table width100">
          <tbody>
            <tr>
              <td width="100">스타일번호</td>
              <td width="200">
                <input type="text" name="style_id" />
              </td>
              <td width="100">스타일명</td>
              <td width="200">
                <input type="text" name="style_name" />
              </td>
              <td width="100">시즌</td>
              <td width="200">
                <input type="text" name="style_season" />
              </td>
              <td width="100">작성자</td>
              <td width="200">
                <input type="text" name="style_inputname" />
              </td>
            </tr>
            <tr>
              <td width="100">거래처명</td>
              <td width="200">
                <input type="text" name="correspondent_name" />
              </td>
              <td width="100">작업장</td>
              <td width="200">
                <input type="text" name="style_workplace" />
              </td>
              <td width="100">오더일</td>
              <td width="200">
                <input type="text" name="style_orderdate" />
              </td>
              <td width="120">납기일</td>
              <td width="200">
                <input type="text" name="style_deliverydate" />
              </td>
            </tr>
          </tbody>
        </table>
        <button id="inquiryBtn" class="btn btn-success">조회</button>
        <button id="resetBtn" class="btn btn-info margin-left_5">초기화</button>
        <button id="styleDeleteButton" class="btn btn-danger margin-left_5">
          삭제
        </button>
        <button class="btn btn-warning margin-left_5">수정</button>
      </div>
      <div class="row margin-top_20">
        <table id="styleTable" class="table width60">
          <thead>
            <tr>
              <th>no</th>
              <th><input type="checkbox" /></th>
              <th>스타일번호</th>
              <th>스타일명</th>
              <th>거래처명</th>
              <th>오더일</th>
              <th>납기일</th>
              <th>시즌</th>
              <th>수량</th>
              <th>단가</th>
              <th>작업장</th>
              <th>작성자</th>
              <th>작성일</th>
            </tr>
          </thead>
          <tbody class="table__dataList"></tbody>
        </table>
        <table id="materialTable" class="table width40">
          <thead>
            <tr>
              <th>no</th>
              <th><input type="checkbox" /></th>
              <th>자재코드</th>
              <th>자재이름</th>
              <th>컬러</th>
              <th>사이즈</th>
              <th>자재단가</th>
              <th>단위</th>
            </tr>
          </thead>
          <tbody class="table__dataList"></tbody>
        </table>
      </div>
      <div class="row margin-top_10">
        <button
          class="btn btn-info"
          onclick="window.open('stylematerial','window_name','width=800,height=600,location=no,status=no,scrollbars=yes');"
        >
          자재등록
        </button>
      </div>
    </div>
    <!-- Custom scripts for all pages-->
    <script
      src="https://code.jquery.com/jquery-2.2.4.min.js"
      integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
      crossorigin="anonymous"
    ></script>
    <script src="js/sb-admin.min.js"></script>

    <!-- Javascript import -->
    <script src="js/main.js"></script>
  </body>
</html>
