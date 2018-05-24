<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	text-align: center;
	color:green;
}
h3{
	text-align:center;
}
body{

	text-align: center;
}
div{
	text-align: left;
}

.h_graph ul{margin:0 50px 0 50px;padding:1px 0 0 0;border:1px solid #ddd;border-top:0;border-right:0;font-size:11px;font-family:Tahoma, Geneva, sans-serif;list-style:none}
.h_graph li{position:relative;margin:10px 0;vertical-align:top;white-space:nowrap}
.h_graph .g_term{position:absolute;top:0;left:-50px;width:40px;font-weight:bold;color:#767676;line-height:20px;text-align:right}
.h_graph .g_bar{display:inline-block;position:relative;height:20px;border:1px solid #ccc;border-left:0;background:green}
.h_graph .g_bar span{position:absolute;top:0;right:-50px;width:40px;color:#767676;line-height:20px}

</style>
</head>
<body>
<%
	String filename = request.getParameter("FILE_NAME");

	String name = request.getParameter("name");
%>
<h3><%=name %>의 성격은</h3>

<%
	request.setCharacterEncoding("UTF-8");

	String a1= request.getParameter("a1");String a2= request.getParameter("a2");
	String a3= request.getParameter("a3");String a4= request.getParameter("a4");
	String a5= request.getParameter("a5");String a6= request.getParameter("a6");
	String a7= request.getParameter("a7");String a8= request.getParameter("a8");
	String a9= request.getParameter("a9");String a10= request.getParameter("a10");
%>
<%!
	int cnt1 =0, cnt2=0, cnt3=0,cnt4=0;
%>
<%
	BufferedReader reader1 = null;
	String[] array1;

	int cnt1 =0, cnt2=0, cnt3=0,cnt4=0;
	
	try{
		String filePath = application.getRealPath("/WEB-INF/bbs/"+filename);	
		reader1 = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader1.readLine();
			if(str==null) break;
			array1 = str.split("/");
			
			switch(array1[0]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break;
			}
			switch(array1[1]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break;
			}
			
			switch(array1[2]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break;
			}
			switch(array1[3]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array1[4]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array1[5]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array1[6]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array1[7]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array1[8]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array1[9]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
		}
		
	}
	catch(Exception e){
		out.println("지정된 파일을 읽을 수 없습니다.");
	}
	finally{
		reader1.close();
	}
	
%>
<br>

<hr>
<h2>나의 그래프</h2>
<div class="h_graph">
<ul>
	<li><span class="g_term">외 향 적</span><span class="g_bar" style="width:<%=cnt1 %>%"><span><%=cnt1%>회</span></span></li>
	<li><span class="g_term">조금외향</span><span class="g_bar" style="width:<%=cnt2 %>%"><span><%=cnt2%>회</span></span></li>
	<li><span class="g_term">조금내향</span><span class="g_bar" style="width:<%=cnt3 %>%"><span><%=cnt3%>회</span></span></li>
	<li><span class="g_term">내 향 적</span><span class="g_bar" style="width:<%=cnt4 %>%"><span><%=cnt4%>회</span></span></li>
</ul>
</div>
<hr>
<a href="result.jsp">뒤로</a>
</body>
</html>
