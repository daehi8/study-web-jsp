<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <h1>form 페이지</h1>
    <form action="pro.jsp">
    	id : <input type="text" name="id">
    	pw : <input type="password" name="pw">
		<br />
		1학년<input type="radio" name="step" value="1" >
		2학년<input type="radio" name="step" value="2">    		

    		<input type="submit" value="전송"/>
    </form>