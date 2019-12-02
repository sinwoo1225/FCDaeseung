<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title> <!-- Custom fonts for this template-->

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>
</head>

<body>
<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="bom">스타일-자재</a>&nbsp;&nbsp;
    <a class="navbar-brand mr-3" href="order">발주</a>
    
   <div align= 'right'>
    <a class="btn btn-primary"  href="login" >Logout</a>
    </div>
  </nav>






   
    <button class="btn btn-info" onclick="window.open('stylematerial','window_name','width=800,height=600,location=no,status=no,scrollbars=yes');">스타일-자재</button>
    
   <br> <br> <br>

    <div class ="row">
       <div class ="col-md-12">
         
   <table class ="table"  >
        <tr>
            <td width="100">발주번호 </td>
            <td width="200">
            
            <input type="text" name="style"></input>
          
            </td>
            <td width="100">거래처번호</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
         <tr>
            <td width="100">자재코드 </td>
            <td width="200">
            
            <input type="text" name="style"></input>
          
            </td>
            <td width="100">스타일별 자재내역_자재일련번호</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
      
        <tr>
             
            <td width="100">발주일 </td>
            <td width="100">
            
            <input type="text" name="style"></input>
            </td>
            <td width="120">발주일련번호</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
        <tr>
          <tr>
            <td width="100">발주자</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
             <td width="120">발주수량</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
              
       
      
        <tr>
            <td>스타일번호</td>
            <td>
                <input type="text" name="cowork"></input>
            </td>
           
        </tr>

        
      
    

       
  
      
         </table>
 
    
      <button type="button" class="btn btn-success">조회</button>
     <button class="btn btn-light" onclick="window.open('enrollorder','window_name','width=800,height=600,location=no,status=no,scrollbars=yes');">발주</button>
       <div>
          <div class="card-header">
           
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                 <td> no   </td>                 
                  <td><input type = "checkbox"> </td>
                       <td> 발주일자 </td>
                      <td>거래처명명 </td>
                      <td> 거래처번호 </td>
                      <td> 거래처명명 </td>
                      <td> 거래처구분 </td>
                      <td> 발주번호 </td>
                      <td> 발주일 </td>
                      <td> 발주자</td>
                      <td> 스타일별 자재내역_자재일련번호  </td>
                       <td> 스타일번호</td>
                      <td> 발주수량 </td>
                      <td> 작성자 </td>
                      <td> 작성일 </td>
                     
                      
                                 </tr>
                                 
                                 <tr>
                        <td> 1 </td>
                   <td> <input type = "checkbox"> </td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                       
                      


                          </tr>
                      
       
              </table>
            
           
          </div>
         
        </div>

      </div>
    
               <button type="button" class="btn btn-danger">삭제</button> &nbsp;
               <button type="button" class="btn btn-warning">수정</button>&nbsp;
    

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->



 


  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>
<script
      src="https://code.jquery.com/jquery-2.2.4.min.js"
      integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
      crossorigin="anonymous"
    ></script>
</body>

</html>
