<%@page import="com.hp.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//��������ı��
request.setCharacterEncoding("UTF-8");

//1.��ȡ��д�Ĺ������������
String NoticeName = request.getParameter("title");
String NoticeCon = request.getParameter("content");
String idStr  = request.getParameter("id");
//int id1 = Integer.parseInt(NoticeName);
//int id2 = Integer.parseInt(NoticeCon);
int id = Integer.parseInt(idStr);

//2.�������ݿ�
  //(1).��������
   Connection conn = DBHelper.getConn();
  //(2).��дSQL���
  String sql = "update Notice set NoticeName = ?, NoticeCon = ?, NoticeDate = GETDATE() where NoticeId = ?";
  //(3).ִ��SQL���:�޸�һ������
  int count = DBHelper.executeUpdate(conn, sql,NoticeName,NoticeCon,id);
 //(4).����ִ�н��
  if(count>0){
	  out.print("<script>alert('��ϲ��,�޸ĳɹ�!');  location.href='notice_list.jsp';  </script>");
  }
	//5.�ر�����
	DBHelper.closeConn(conn);
%>

</body>
</html>