<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<html>
<head>
<title>회원가입</title>

<script src="jquery-3.5.1.js"></script>
<script>
 $(function(){
  $('#pw').keyup(function(){
   $('font[name=check]').text("");
  }); //#user_pass.keyup

  $('#pw2').keyup(function(){
   if($('#pw').val()!=$('#pw2').val()){
    $('font[name=check]').text('?');
    $('font[name=check]').html("암호틀림");
   }else{
    $('font[name=check]').text('');
    $('font[name=check]').html("암호일치");
   }
  }); //#chpass.keyup
 });
</script>

	<style >
		
	</style>

</head>

 <body bgcolor="#F6F6F6">
	<center>
	<br><br>
	<b><font size="10" color="#8041D9"> 회원가입 </font></b>
	<br><br>
	<form action="ex01Pro.jsp" method="post">
	 <table>
	 	<tr><td id="title">아이디</td></tr>
		<tr>	
				<td>
					<input type="text"  name="id" style=" border: 1px solid #D5D5D5; width:400px;height:40px;font-size:15px;"/>
					<input type="button" value="중복확인" />  
				</td>
		</tr>
	 
    	<tr><td id="title"> 비밀번호 </td></tr>
		<tr>	
				<td>
					<b><input type="password" name="pw" id="pw" placeholder="특수문자 포함 8-16자 조합." style=" border: 1px solid #D5D5D5; width:460px;height:40px;font-size:15px;" ></b>
				</td>
			</tr>

    	<tr><td width="150">비밀번호 확인</td></tr>
	   	<tr>	
	   		<td>
	   			<input type="password" name="pw2" id="pw2" maxlength="15" style=" border: 1px solid #D5D5D5; width:460px;height:40px;font-size:15px;" >
	   			<font name="check" size="2"></font>
	   		</td>
	   	<tr/>
	   	
		<tr><td id="title">이름</td></tr>
		<tr>	
			<td>
				<input type="text" name="name" maxlength="40" style=" border: 1px solid #D5D5D5; width:460px;height:40px;font-size:15px;" >
			</td>
		</tr>
                    
		<tr><td id="title">성별</td></tr>
		<tr>	
			<td>
				<input type="radio" name="gender" value="남" checked>남
				<input type="radio" name="gender" value="여" checked>여
				<input type="radio" name="gender" value="선택안함" checked>선택안함
			</td>
		</tr>
	    	
		<tr><td id="title">생년월일</td></tr>
		<tr>
           <td>
               <input type="text" name="birth_yy" maxlength="4" placeholder="년(4자)" style=" border: 1px solid #D5D5D5; width:180px;height:40px;font-size:15px;" >
               <select name="birth_mm" style=" border: 1px solid #D5D5D5; width:130px;height:44px;font-size:15px;">
                   <option value="">월</option>
                   <option value="01" >1</option>
                   <option value="02" >2</option>
                   <option value="03" >3</option>
                   <option value="04" >4</option>
                   <option value="05" >5</option>
                   <option value="06" >6</option>
                   <option value="07" >7</option>
                   <option value="08" >8</option>
                   <option value="09" >9</option>
                   <option value="10" >10</option>
                   <option value="11" >11</option>
                   <option value="12" >12</option>
               </select>
               <input type="text" name="birth_dd" maxlength="2" placeholder="일" size="4" style=" border: 1px solid #D5D5D5; width:130px;height:40px;font-size:15px;" >
           </td>
		</tr>
	    	
	    
	    	
		 <tr><td id="title">이메일</td></tr>
		<tr>	
			<td>
				<input type="text" name="email_1" maxlength="30" style=" border: 1px solid #D5D5D5; width:200px;height:40px;font-size:15px;" > @
				<input type="text" name="email_2" maxlength="15" style=" border: 1px solid #D5D5D5; width:150px;height:40px;font-size:15px;" >
				<select name="email_3" style ="border: 1px solid #D5D5D5;" >
					<option>naver.com</option>
					<option>daum.net</option>
					<option>gmail.com</option>
					<option>nate.com</option>                        
				</select>
			</td>
		</tr>

	    	
	</table>
	<br>
	<b><input type="submit" value="가입" style=" background-color: #8041D9;border: 1px solid #D5D5D5; width:480px;height:50px;font-size:20px;color:white;" /></b>
	</form>
	</center>
</body>
</html>