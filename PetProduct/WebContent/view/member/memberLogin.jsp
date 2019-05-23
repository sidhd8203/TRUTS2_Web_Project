<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>ログイン</title>
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
		<form name = "frm" action="login.action" method = "post">
		  <div class="container">
		    <h1>ログイン</h1>
		    <hr>
			
			 <p style = "color: red">${message}</p>
		    <label for="id"><b>Id</b></label>
		    <input type="text" placeholder="アイディーを入力してください。" name="m_id" required>
		
		    <label for="pass"><b>Password</b></label>
		    <input type="password" placeholder="パスワードを入力してください。" name="m_pw" required>
		
		        		    
		    <hr>
		    
		
		    <button type="submit" class="login">ログイン</button>
		  </div>
		  
		  <div class="container signin">
		  	<p>  <a  class = "signin" href="/PetProduct/view/member/memberRegister.jsp">会員加入</a>&nbsp;&nbsp;&nbsp;
		  	<p>  <a href="/PetProduct/index.jsp">戻る</a>&nbsp;&nbsp;&nbsp;
		  </div>
		</form>
		
	</body>
</html>