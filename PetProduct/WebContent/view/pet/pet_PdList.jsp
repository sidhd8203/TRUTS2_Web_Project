<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%-- <%@ taglib prefix="s" uri="/struts-tag" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>商品目録</title>
		<!-- 기본화면에 대한 스타일 -->
		<style type="text/css">
			#listForm{
				width:960px;
				margin:0 auto;						
			}
			
			h2{
				text-align:center;
			}
			
			table{
				margin:auto;
				width:550px;
			}
			
			td{
				margin:5px;
			}
			
			.div_empty{
				width:100%;
				text-align:center;
			}
			
			#productImage{
				width:200px;
				height:200px;
				border:none;
			}
			
			#todayImage{
				width:100px;
				height:100px;
				border:none;
			}			
		</style>
		<!-- Top Menu -->
		<style type="text/css">
			#top_menu{font-family: "Lato", sans-serif;}

			.tablink {
			  background-color: #555;
			  color: white;
			  float: left;
			  border: none;
			  outline: none;
			  cursor: pointer;
			  padding: 14px 16px;
			  font-size: 17px;
			  width: 25%;
			}
			
			.tablink:hover {
			  background-color: #777;
			}
			
			/* Style the tab content */
			.tabcontent {
			  color: white;
			  display: none;
			  padding: 50px;
			  text-align: center;
			}
			
			#London {background-color:red;}
			#Paris {background-color:green;}
			#Tokyo {background-color:blue;}
			#Oslo {background-color:orange;}					
		</style>
		<%@ include file="/header.jsp"%>
	</head>
	<body>
	

		<script>
			function openCity(cityName,elmnt,color) {
			  var i, tabcontent, tablinks;
			  tabcontent = document.getElementsByClassName("tabcontent");
			  for (i = 0; i < tabcontent.length; i++) {
			    tabcontent[i].style.display = "none";
			  }
			  tablinks = document.getElementsByClassName("tablink");
			  for (i = 0; i < tablinks.length; i++) {
			    tablinks[i].style.backgroundColor = "";
			  }
			  document.getElementById(cityName).style.display = "block";
			  elmnt.style.backgroundColor = color;
						  
			}
			// Get the element with id="defaultOpen" and click on it
			document.getElementById("defaultOpen").click();
			</script>
			
		</div>
		<br><br><br>
		
		
		<div id = "listForm">
			<c:if test = "${pet_PdList != null}">
				<h2>商品登録</a></h2>
		
			<table>
					<tr>
						<c:forEach var="pet" items="${pet_PdList}" varStatus="status">
							<td>
								<a href = "pet_pdView.action?p_num=${pet.p_num}"><img src = "${pet.p_img}" id = "productImage"/></a><br>
									タイトル : ${pet.p_name}<br>
									価格 : ${pet.p_price}원<br>	
							</td>
							<c:if test = "${((status.index+1) mod 4) ==0}">
							</tr>
							<tr>
							</c:if>
						</c:forEach>
					</tr>
				</table>
			</c:if>
			
			<c:if test = "${pet_PdList == null}">
				<div class = "div_empty">
					登録された商品が存在しません。
				</div>
			</c:if>
		
			<c:if test = "${todayImageList != null}">
				<h2>今日見た商品リスト</h2>
				<table>
					<tr>
						<c:forEach var="todayImage" items="${todayImageList}" varStatus="stat">
							<td>
								<img src = "img/${todayImage}" id = "todayImage"/>
							</td>
							<c:if test = "${((stat.index+1) mod 4)==0}">
							</tr>
							<tr>
							<!-- index는 0, 1, 2로 읽어온다.  -->
							</c:if>
						</c:forEach>
					</tr>
				</table>			
			</c:if>
		</div>
	</body>
	<%@ include file="/footer.jsp"%>
</html>