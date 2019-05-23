<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>詳細表示</title>
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
		
		<h2 style="text-align:center">詳細表示</h2>
		
		<div class="card">
		<form action="pet_PdUpdate.jsp?p_num=${pet_pd.getP_num()}" method="post">
			  <a href = "#" onclick="location.href='http://localhost:8080/PetProduct/pet_pdList.action'"><img src="${pet_pd.getP_address()}" style="width:100%"></a>
			  <h3>${pet_pd.getP_name()}</h3>
			  
			  <p class="price">￦ ${pet_pd.getP_price()}</p>
			  <p> 内容 : ${pet_pd.getP_content()}</p>
			  <p> ヒット :${pet_pd.getP_hit()}</p>
			  <p> 一連番号 : ${pet_pd.getP_num()}
			  <input type="hidden" value = "${pet_pd.getP_num()}" name = "p_num">
			  <input type="hidden" value = "${pet_pd.getP_price()}" name = "p_price">
			  <input type="hidden" value = "${pet_pd.getP_name()}" name = "p_name">
			  <input type="hidden" value = "${pet_pd.getP_img()}" name = "p_img">
			  <input type="hidden" value = "${pet_pd.getP_address()}" name = "p_address">
			  <input type="hidden" value = "${pet_pd.getP_content()}" name = "p_content">
			  <input type="hidden" value = "${pet_pd.getP_hit()}" name = "p_hit">
			  <input type="hidden" value = "${pet_pd.getM_id()}" name = "m_id">
		 <a href="#" onclick="location.href='http://localhost:8080/PetProduct/pet_pdUp.action'">修整</a>
		 <a href="pet_pdDelete.action?p_num=${pet_pd.getP_num() }">削除</a>
		 </form>	<!-- onclick= -->	 
		</div>
	</body>
	<%@ include file="/footer.jsp"%>
</html>