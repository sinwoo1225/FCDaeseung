<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
	<link rel="stylesheet" href ="Main2.css">
</head>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.jsp/1.14.7/umd/popper.min.jsp"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/jsp/bootstrap.min.jsp"></script>
<style>
navbar { color: red}
  
</style>
</head>

<body>

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-3" href="main1">스타일</a>
    <a class="navbar-brand mr-1" href="main2">스타일-자재</a>&nbsp;&nbsp;
    <a class="navbar-brand mr-3" href="main3">발주</a>
    
    <div align= 'right'>
  	<a class="btn btn-primary"  href="login">Login</a>
    <a class="btn btn-primary"  href="login" >Logout</a>
    </div>

  

  </nav>
  
  
   <button class="btn btn-info" onclick="window.open('stylematerial','window_name','width=800,height=600,location=no,status=no,scrollbars=yes');">스타일-자재</button>
   <br> <br> <br>

  
         
   <table class ="table"   >
        <tr>
            <td width="100" >스타일번호 </td>
            <td width="200">
            
            <input type="text" name="style"></input>
          
            </td>
            <td width="100">자재코드</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
         <tr>
            <td width="100" >스타일명 </td>
            <td width="200">
            
            <input type="text" name="style"></input>
          
            </td>
            <td width="100">작업장</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
         <tr>
            <td width="100" >작성자 </td>
            <td width="200">
            
            <input type="text" name="style"></input>
          
            </td>
            <td width="100">수량</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
       <tr>
            <td width="100" >거래처번호 </td>
            <td width="200">
            
            <input type="text" name="style"></input>
          
            </td>
            <td width="100">작업장</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
        <tr>
             
            <td width="100">자재일련번호 </td>
            <td width="100">
            
            <input type="text" name="style"></input>
            </td>
            <td width="120">스타일별 자재</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
        <tr>
          <tr>
            <td width="100">오더일</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
             <td width="120">납기일</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
              
       
      
        <tr>
            <td>거래처명명</td>
            <td>
                <input type="text" name="cowork"></input>
            </td>
            <td width="100">시즌</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>
        <tr>
            <td>단가</td>
            <td>
                <input type="text" name="cowork"></input>
            </td>
            <td width="100">거래처구분</td>
            <td width="200">
               
                    <input type="text" name="stylematerial"></input>
                  
                   
            </td>
        </tr>

        <tr>
            <td>buyer</td>
            <td>
                <input type="text" name="buyer"></input>
            </td>
           
        </tr>

       
      
    

       
  
      
         </table>
    
             <button type="button" class="btn btn-success">조회</button>
              <button class="btn btn-info" onclick="window.open('work','window_name','width=800,height=600,location=no,status=no,scrollbars=yes');">거래처</button>
             <button type="button" class="btn btn-danger">삭제</button>
               <button type="button" class="btn btn-warning">수정</button>
       
        
    <div>
	<div id="grade" style="width:38%; float:right;">
	<table class ="table table-bordered">
	<tr>
		<td> no   </td>                 
                  <td><input type = "checkbox"> </td>
                       <td> 자재코드 </td>
                      <td>자재이름 </td>
                      <td> 컬러  </td>
                      <td> 사이즈  </td>
                      <td> 자재단가 </td>
                      <td> 단위  </td>
		
	</tr>
	 </tr>
            <tr>
                 <td> 1 </td>
                 <td> <input type = "checkbox"> </td>
                 <td>  </td>
                  <td>  </td>
                  <td>  </td>
                  <td>  </td>
                  <td>  </td>
                  <td>  </td>
             </tr>
	</table>
	</div>
	<div id= "aaaaa" style="width:60%; float:left;">
	 <table class ="table table-bordered">
	     <tr>
                 <td> no   </td>                 
                  <td><input type = "checkbox"> </td>
                      <td> 스타일번호</td>
                      <td>스타일명  </td>
                      <td> 바이어 </td>
                      <td> 오더일</td>
                      <td> 납기일 </td>
                      <td> 시즌 </td>
                      <td> 수량 </td>
                      <td> 단가 </td>
                      <td> 작업장 </td>
                      <td> 작성자 </td>
                   
            </tr>
            <tr>
                 <td> 1 </td>
                 <td> <input type = "checkbox"> </td>
                 <td>  </td>
                  <td>  </td>
                  <td>  </td>
                  <td>  </td>
                  <td>  </td>
                   <td>  </td>
                  <td>  </td>
                  <td>  </td>
                  <td>  </td>
                  <td>  </td>
             </tr>
             
                  
            
	 </table>
	</div>

</div><button class="btn btn-info" onclick="window.open('stylematerial','window_name','width=800,height=600,location=no,status=no,scrollbars=yes');">자재</button>
<button type="button" class="btn btn-info">자재조회</button>
	  <button type="button" class="btn btn-info">등록</button>
</div>

</div>
                  
       
    	
     
                  
             
                 
           </div>
 <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <script src="js/demo/chart-area-demo.js"></script>

</body>

</html>
