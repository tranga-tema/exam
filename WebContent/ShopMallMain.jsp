<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String[] img ={"s10.jpg", "s20.jpg", "s21.jpg", "아이폰xs.jpg", "아이폰11.jpg", "아이폰12.png", "패드.jpg", "macbook.jpg", "탭.jpg"};
String[] name = {"갤럭시S10", "갤럭시S20", "갤럭시S21", "아이폰XS", "아이폰11", "아이폰12", "아이패드", "MacBook", "갤럭시탭"};
String[] price = {"379,00", "764,580", "924,710", "1,562,000", "1,060,000", "1,350,000", "953,100", "1,530,000", "708,000"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ElectronicShop</title>
<script type="text/javascript">
function fnCart(name, price) {
	//alert("Name : " + name + "\nPrice : " + price);
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "CartProcess.jsp?name=" + name + "&price=" + price;
	}
}

function fnView() {
	if(confirm("장바구니를 보시겠습니까?")){
		location.href = "CartView.jsp";
	}
}
</script>
</head>
<body>
<div align="center">
	<h3>[ELECTRONIC]</h3>
	<table border="1">
		<tr align="right">
			<td colspan="3">
				<input type="button" value="장바구니 보기" onclick="fnView()" />
			</td>
		</tr>
		<%
		for(int i = 0; i < img.length; i++) {
			if(i % 3 == 0) { 
				out.println("<tr align='center'>");
			}
			out.println("<td>");
				out.println("<table>");
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<img src = 'images/" + img[i] + "' width='150' height='150' />");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>" + name[i] + "</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>￦" + price[i] + "원</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							//한 줄로 쓰기
							//out.println("<input type='button' value='장바구니 담기' onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
							//두 줄로 쓰기, 닫는 큰 따옴표와 괄호 옆의 띄어쓰기 필수
							out.println("<input type='button' value='장바구니 담기' ");
							out.println("onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
						out.println("</td>");
					out.println("</tr>");
				out.println("</table>");
			out.println("</td>");
			if(i % 3 == 2) {
				out.println("</tr>");
			}
		}
		%>	
	</table>
</div>
</body>
</html>