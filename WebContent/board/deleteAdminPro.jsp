<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "ch12.board.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("euc-kr");%>

<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  BoardDBBean dbPro = BoardDBBean.getInstance();
  int check = dbPro.deleteArticle(num);

  if(check==1){
%>
	  <meta http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum%>" >
<% }else{%>
       <script language="JavaScript">      
       <!--      
         alert("��й�ȣ�� ���� �ʽ��ϴ�");
         history.go(-1);
       -->
      </script>
<%
    }
 %>