<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>商品登録</title>
		<style>
			body {
			  font-family: Arial, Helvetica, sans-serif;
			  background-color: black;
			}
			
			* {
			  box-sizing: border-box;
			}
			
			/* Add padding to containers */
			.container {
			  width : 600px;
			  margin : 0 auto;
			  padding: 16px;
			  background-color: white;
			}
			
			/* Full-width input fields */
			input[type=text], input[type=password] , input[type=file], textarea{
			  width: 100%;
			  padding: 15px;
			  margin: 5px 0 22px 0;
			  display: inline-block;
			  border: none;
			  background: #f1f1f1;
			}
			
			input[type=text]:focus, input[type=password], input[type=file], textarea:focus {
			  background-color: #ddd;
			  outline: none;
			}
			
			/* Overwrite default styles of hr */
			hr {
			  border: 1px solid #f1f1f1;
			  margin-bottom: 25px;
			}
			
			/* Set a style for the submit button */
			.registerbtn {
			  background-color: #4CAF50;
			  color: white;
			  padding: 16px 20px;
			  margin: 8px 0;
			  border: none;
			  cursor: pointer;
			  width: 100%;
			  opacity: 0.9;
			}
			
			.registerbtn:hover {
			  opacity: 1;
			}
			
			/* Add a blue text color to links */
			a {
				text-decoration: none;
			    color: dodgerblue;
			}
			
			/* Set a grey background color and center the text of the "sign in" section */
			.signin {
			  background-color: #f1f1f1;
			  text-align: center;
			}
			
		</style>
	</head>
	<body>
		<form name = "frm" action="pet_pdRegister.action" method = "post" enctype="multipart/form-data">
		  <div class="container">
		    <h1>商品登録</h1>
		    <p>空欄なしにすべての項目を記入してください。</p>
		    <p style = "color: red">${message }</p>
		    <hr>
			
			<label for="name"><b>名前</b></label>
		    <input type="text" placeholder="製品の名前を入力してください。" name="p_name" required>
				
			<label for="content"><b>内容</b></label>
		    <textarea rows="5" cols="60" name = "p_content" placeholder="製品の説明を入れてください。" required></textarea>
		    
		    <label for="image"><b>イメージ</b></label>
		    <input type="file" name="upload"/><br>
		    
		    <label for="price"><b>価格</b></label>
		    <input type="text" placeholder="製品の価格を入力してください。" name="p_price" required>
		        		    
		    <hr>
		    
		    <label for="id">作成者</label>
		    <input type="text" name="m_id" value="${m_id}" readonly="readonly">
		    
		    <input type="submit" class="registerbtn" value="製品登録"/>
		  </div>
		  
		  <div class="container signin">
		    <a href="#" onclick="location.href='http://localhost:8080/PetProduct/pet_pdList.action'">目録表示</a> <!-- 액션들려서 값가지고가기 -->
		  </div>
		</form>
		
	</body>
</html>