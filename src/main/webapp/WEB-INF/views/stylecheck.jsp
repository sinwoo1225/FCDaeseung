 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<!-- Style -->
 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

<style >
#aa {
color:white;
}
</style>

<script type="text/javascript">
 

</script>

</head>
<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
 <a class="navbar-brand mr-3" id="aa"  >스타일 등록</a></nav>
<body>
<center>
<br>
 




 <table class = "table">
  <tr>
   <td><b>스타일번호</b></td>
   <td align=left>
    <input type=text name=pcategory>
   </td>
  
   <td><b>스타일명</b></td>
   <td align=left>
    <input type=text name=pmodel>
   </td>
  </tr>
  <tr>
   <td><b>바이어</b></td>
   <td align=left>
    <input type=text name=pcode>
   </td>
 
   <td><b>오더일</b></td>
   <td align=left>
    <input type=text name=pcompany>
   </td>  
  </tr>
  <tr>
   <td><b>납기일</b></td>
   <td align=left>
    <input type=text name=pimage>
   </td>
 
   <td><b>시즌</b></td>
   <td align=left>
    <input type=text name=price>
   </td>
  </tr>
  <tr>
   <td><b>수량</b></td>
   <td align=left>
    <input type=text name=pspec>
   </td>
  
   <td><b>단가</b></td>
   <td align=left>
    <input type=text name=pspec>
   </td>
  </tr>
  <tr>
   <td><b>작업장</b></td>
   <td align=left>
   <input type=text name=pspec>
   </td>
  
   <td><b>작성자</b></td>
   <td align=left>
     <input type=text name=pspec>
   </td>
  </tr>
 
 
  
   
  </tr>
 
  <tr>
   <td colspan=2 align="center">
     <button type="button" class="btn btn-info">등록</button>
     <button class="btn btn-danger" onclick="window.close()">취소</button>
   
   </td>
  </tr>
 </table>
 </form>
</center>
</body>
</html>



