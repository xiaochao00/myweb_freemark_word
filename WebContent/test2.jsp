<%@ page pageEncoding="UTF-8"%>  
<!DOCTYPE html>  
<head>  
<meta charset="UTF-8" />  
<title>Document</title>  
</head>
<body>
	<form action="saveDocServlet" method="post">  
	<table> 
		<tr>
			<td>order:</td>
			<td><input type="text" name="order"/></td>
		</tr> 
		<tr>
			<td>startMonth:</td>
			<td><input type="text" name="startMonth" ></td>
		</tr> 
		<tr>
			<td>startDay:</td>
			<td><input type="text" name="startDay" ></td>
		</tr> 
		<tr>
			<td>endMonth:</td>
			<td><input type="text" name="endMonth" ></td>
		</tr> 
		<tr>
			<td>endDay:</td>
			<td><input type="text" name="endDay" ></td>
		</tr> 
	</table>
	<div align="center" style="margin-top:15px;">  
        <input type="submit" value="保存Word文档" />  
    </div>
	</form>
</body>