<%@page import="java.util.Scanner"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
<style>
h1{
	text-align: center;
	color:green;
}
h3{
	text-align:center;
}
a:link {text-decoration: none; color: green;}
a:visited {text-decoration: none; color: green;}
a:active {text-decoration: none; color: green;}
a:hover {text-decoration: none; color:green;}
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
<h1>성 격 유 형 검 사 결 과</h1>
<hr>
<%
	request.setCharacterEncoding("UTF-8");

	String a1= request.getParameter("a1");
	String a2= request.getParameter("a2");
	String a3= request.getParameter("a3");
	String a4= request.getParameter("a4");
	String a5= request.getParameter("a5");
	String a6= request.getParameter("a6");
	String a7= request.getParameter("a7");
	String a8= request.getParameter("a8");
	String a9= request.getParameter("a9");
	String a10= request.getParameter("a10");
	String name= request.getParameter("name");
	
	PrintWriter pwriter = null;
	String presult = a1 + "/" +a2+"/"+a3+"/"+a4+"/"+a5+"/"+a6+"/"+a7+"/"+a8+"/"+a9+"/"+a10;	
		try{
			String filename1 =  name+".txt";
			String filePath1 = application.getRealPath("/WEB-INF/bbs/"+filename1);
			
			pwriter = new PrintWriter(filePath1);
			pwriter.printf(presult);
			pwriter.flush();
		}
		catch(Exception e){
			out.println("오류 발생");
		}
		finally{
			pwriter.close();
		}
%>
<%
 	String dirPath = application.getRealPath("/WEB-INF/bbs");
	//out.println(dirpath);
	File dir = new File(dirPath);
	String filenames[] = dir.list();
	
	for(String filename1 : filenames ){%>
		<a href="resultProc.jsp?FILE_NAME=<%=filename1%>"><%=filename1 %></a>
		<br>
<%  }
%>	
<!-- 파일입출력 -->
<%
	
	String result = a1 + "/" +a2+"/"+a3+"/"+a4+"/"
	+a5+"/"+a6+"/"+a7+"/"+a8+"/"+a9+"/"+a10;
	
	BufferedWriter writer =null;
	
	try{

		String filePath = application.getRealPath("/WEB-INF/bbs/result.txt");
		
		writer = new BufferedWriter(new FileWriter(filePath, true));
		//writer.write(name+"/");
		writer.write(result+"\r\n");
	}
	catch(Exception e){
		out.println("오류 발생");
	}
	finally{
		writer.close();
	}
	
%>
<hr>
<h3>설문자들은 평균적</h3>

<%!
	int cnt1 =0, cnt2=0, cnt3=0,cnt4=0;
%>
<%
	BufferedReader reader = null;
	String[] array;
	
	int cnt1 =0, cnt2=0, cnt3=0,cnt4=0;
	
	try{
		String filePath = application.getRealPath("/WEB-INF/bbs/result.txt");	
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			array = str.split("/");
			
			switch(array[0]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break;
			}
			switch(array[1]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break;
			}
			
			switch(array[2]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break;
			}
			switch(array[3]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array[4]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array[5]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array[6]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array[7]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array[8]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
			switch(array[9]){
				case "1": cnt1 += 1; break;
				case "2": cnt2 += 1; break;
				case "3": cnt3 += 1; break;
				case "4": cnt4 += 1; break;
				default : break; 
			}
		}
		/* out.print(cnt1);
		out.print(cnt2);
		out.print(cnt3);
		out.print(cnt4); */
	}
	catch(Exception e){
		out.println("지정된 파일을 읽을 수 없습니다.");
	}
	finally{
		reader.close();
	}
%>

<br>
<div class="h_graph">
<ul>
	<li><span class="g_term">외 향 적</span><span class="g_bar" style="width:<%=cnt1 %>%"><span><%=cnt1%></span></span></li>
	<li><span class="g_term">조금외향</span><span class="g_bar" style="width:<%=cnt2 %>%"><span><%=cnt2%></span></span></li>
	<li><span class="g_term">조금내향</span><span class="g_bar" style="width:<%=cnt3 %>%"><span><%=cnt3%></span></span></li>
	<li><span class="g_term">내 향 적</span><span class="g_bar" style="width:<%=cnt4 %>%"><span><%=cnt4%></span></span></li>
</ul>
</div>
<hr>

<br>
<a href="first.jsp">HOME</a>
</body>
</html>