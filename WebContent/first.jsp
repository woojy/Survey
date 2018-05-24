<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성격유형검사</title>
<style>
h1{
	text-align: center;
	color:green;
}
h3{
	text-align:center;
	margin-right: auto;
	margin-left: auto;
	
}

fieldset.a1{
	text-align:center;
	width:800px;
	margin-left: auto;
	margin-right: auto;
}
div.b{
	text-align: center;
}
a:link {text-decoration: none; color: green;}
a:visited {text-decoration: none; color: green;}
a:active {text-decoration: none; color: green;}
a:hover {text-decoration: none; color:green;}

input#b1{
	border: 8px solid red;
}
div{
	text-align: center;
}
</style>
</head>
<body>
<h1><a href="first.jsp">성 격 유 형 검 사</a></h1>
<header></header>
<form action="result.jsp" method="post">
<header class="h1" align="center">
	<img src="img/1.png">&nbsp;
	<img src="img/2.png">&nbsp; 
	<img src="img/3.png">&nbsp;
	<img src="img/4.png">&nbsp;
</header>

<fieldset class="a1">
<legend><h3>다른 사람들에게 자신을 소개하는 것을 어려워합니다.</h3></legend>
<div>
	<input id="b1" type="radio" value ="1" name="a1" style="width:30px;height:30px;">
	<input id="b2" type="radio" value ="2" name="a1" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a1" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a1" style="width:30px;height:30px;">
</div>
</fieldset>

<fieldset class="a1">
<legend><h3>보통 대화를 먼저 시작하지 않습니다.</h3></legend>
<div>
	<input type="radio" value ="1" name="a2" style="width:30px;height:30px;">
	<input type="radio" value ="2" name="a2" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a2" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a2" style="width:30px;height:30px;">
</div>
</fieldset>

<fieldset class="a1">
<legend><h3>순전히 호기심 때문에 행동을 하는 경우는 거의 없습니다.</h3></legend>
<div>
	<input type="radio" value ="1" name="a3" style="width:30px;height:30px;">
	<input type="radio" value ="2" name="a3" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a3" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a3" style="width:30px;height:30px;">
</div>
</fieldset>

<fieldset class="a1">
<legend><h3>다른 사람들에게 자신을 소개하는 것을 어려워 합니다.</h3></legend>
<div>
	<input type="radio" value ="1" name="a4" style="width:30px;height:30px;">
	<input type="radio" value ="2" name="a4" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a4" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a4" style="width:30px;height:30px;">
</div>
</fieldset>

<fieldset class="a1">
<legend><h3>논쟁에서 이기는 것이 상대방을 불쾌하지 않도록 하는 것보다 더 중요합니다.</h3></legend>
<div>
	<input type="radio" value ="1" name="a5" style="width:30px;height:30px;">
	<input type="radio" value ="2" name="a5" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a5" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a5" style="width:30px;height:30px;">
</div>
</fieldset>

<fieldset class="a1">
<legend><h3>집과 업무 환경이 잘 정돈되어 있습니다.</h3></legend>
<div>
	<input type="radio" value ="1" name="a6" style="width:30px;height:30px;">
	<input type="radio" value ="2" name="a6" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a6" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a6" style="width:30px;height:30px;">
</div>
</fieldset>

<fieldset class="a1">
<legend><h3>주목 받는 일에는 관심이 없습니다.</h3></legend>
<div>
	<input type="radio" value ="1" name="a7" style="width:30px;height:30px;">
	<input type="radio" value ="2" name="a7" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a7" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a7" style="width:30px;height:30px;">
</div>
</fieldset>

<fieldset class="a1">
<legend><h3>사람들 때문에 화나는 일이 거의 없습니다.</h3></legend>
<div>
	<input type="radio" value ="1" name="a8" style="width:30px;height:30px;">
	<input type="radio" value ="2" name="a8" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a8" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a8" style="width:30px;height:30px;">
</div>
</fieldset>

<fieldset class="a1">
<legend><h3>종종 다른 사람들을 부러워합니다.</h3></legend>
<div>
	<input type="radio" value ="1" name="a9" style="width:30px;height:30px;">
	<input type="radio" value ="2" name="a9" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a9" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a9" style="width:30px;height:30px;">
</div>
</fieldset>

<fieldset class="a1">
<legend><h3>다소 내성적이고 조용한 성격입니다.</h3></legend>
<div>
	<input type="radio" value ="1" name="a10" style="width:30px;height:30px;">
	<input type="radio" value ="2" name="a10" style="width:25px;height:25px;">
	<input type="radio" value ="3" name="a10" style="width:25px;height:25px;">
	<input type="radio" value ="4" name="a10" style="width:30px;height:30px;">
</div>
</fieldset>
<br><hr>
<div class="b">
	이름 입력 : <input type="text" name="name" required>
</div>
<hr>
<div class="b">
	<input type="submit" value ="제출하기" style="
	background-color: green;color:white;">
	<input type="reset" value ="초기화" style="
	background-color: green;color:white;">
</div>
</form>

</body>
</html>
