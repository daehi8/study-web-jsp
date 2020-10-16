<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="jquery-3.5.1.js"></script>
<script>
 $(function(){
  $('#user_pass').keyup(function(){
   $('font[name=check]').text('');
  }); //#user_pass.keyup

  $('#chpass').keyup(function(){
   if($('#user_pass').val()!=$('#chpass').val()){
    $('font[name=check]').text('');
    $('font[name=check]').html("암호틀림");
   }else{
    $('font[name=check]').text('');
    $('font[name=check]').html("암호맞음");
   }
  }); //#chpass.keyup
 });
</script>

JSP 소스

<table>
  <tr>
   <td>비밀번호</td>
   <td><input type="password" name="user_pass" id="user_pass" size="10" /></td>
  </tr>
  <tr>
   <td>비밀번호확인</td>
   <td>
    <input type="password" name="chpass" id="chpass" size="10" />
    <font name="check" size="2" color="red"></font> 
   </td>
  </tr>
 </table> 

