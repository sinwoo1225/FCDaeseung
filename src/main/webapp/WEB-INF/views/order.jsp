 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
 <a class="nav3" id="aa" >발주 등록</a></nav>
<body>
<center>

 
 <br>
 

 <table class = "table">
  <tr>
   <td><b>스타일번호</b></td>
   <td align=left>
    <input type=text name=pcategory>
   <td><b>거래처번호</b></td>
   <td align=left>
   <input type=text name=pspec>
   </td>
  
  
 
  <tr>
   <td><b>자재코드</b></td>
   <td align=left>
   <input type=text name=pspec>
   </td>
  
   <td><b>자재이름</b></td>
   <td align=left>
   <input type=text name=pspec>
   </td>
 
  
 
 
  <tr>
   <td colspan=2 align="center">
    <button type="button" class="btn btn-info">등록</button>
    <button class="btn btn-danger" onclick="window.close()">취소</button>
   <td>
   </td>
   </td>
   
  </tr>
 </table>
 </form>
</center>
</body>
</html>