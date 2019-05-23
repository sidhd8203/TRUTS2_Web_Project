<%@page import="com.opensymphony.xwork2.ActionContext"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>商品修正</title>
		<style>
		.card {
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
		  max-width: 400px;
		  margin: auto;
		  text-align: center;
		  font-family: arial;
		}
		
		.price {
		  color: grey;
		  font-size: 22px;
		}
		
		.card button {
		  border: none;
		  outline: 0;
		  padding: 12px;
		  color: white;
		  background-color: #000;
		  text-align: center;
		  cursor: pointer;
		  width: 100%;
		  font-size: 18px;
		}
		
		.card button:hover {
		  opacity: 0.7;
		}
		</style>
		<script type="text/javascript">
			function go(id){
				location.href = "dogCartAdd.dog?id="+id;
			}

		</script>
		<%@ include file="/header.jsp"%>
	</head>
	<body>
	
		<h2 style="text-align:center">상품 수정</h2>
<%
	String m_id = (String)ActionContext.getContext().getSession().get("m_id");
	
%>
		<div class="card">
		${message }
		${p_num }
		<form action="pet_pdUpdate.action" method = "post">
			 <br><br>
			 <label for ="name"><b>タイトル :</b></label>
			 <input type = "text" value = "${p_name}" name = "p_name" required><br>			  
			 <label for ="price"><b>￦</b></label>
			 <input type = "text" value = "${p_price}" name = "p_price" required><br>
			 <label for ="content"><b>内容 :</b></label>
			 
			 <textarea type = "text" value = "${p_content}" name = "p_content" required></textarea><br>
			 <input type="file" id="upload" name="upload" label="File" size="50" accept=".jpg, .gif" onchange='getCmaFileView()'/>
			 <input type = "hidden" value = "${p_address}" name = "p_address"><br>
			 <input type = "hidden" value = "${m_id}" name = "m_id"><br>
			 <input type = "hidden" value = "${p_num}" name = "p_num"><br>
			 <input type = "hidden" value = "${p_hit}" name = "p_hit"><br>
			 <input type = "hidden" value = "${p_img}" name = "p_img"><br>
			<!--  <input type = "hidden" value = "" -->
		 <button>変更</button>
		 <a href="pet_pdDelete.action?p_num=${pet_pd.getP_num() }"><!-- key num으로보내주기--> 削除</a>
		</form>
		 
		</div>
	</body>
	<%@ include file="/footer.jsp"%>
</html>