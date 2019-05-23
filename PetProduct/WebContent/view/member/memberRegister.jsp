<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>会員加入</title>
		<style>
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic);

*{
  -webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;    
}

body{
  background:#272c32;  
  font-family: 'Source Sans Pro', sans-serif;
  font-size:15px;
  padding-top: 20px;
  background-image: url("/PetProduct/img/ssssss.jpg");
  background-position: right;
}

h1{
  color: #272c32;
  display: block;
  font-size: 22px;
  margin: 0;
  margin-bottom: 25px;
  border-left: 4px solid #02a0da;
  text-align: center;
  padding-left: 10px;
  
}

form{
  
  width:360px;
  padding:20px;
  margin:auto;
  background:#fff;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  border-radius: 3px;
}

input,
		button {
		    outline: none;
		    border: 0;
		    padding: 0;
		}

input[type="text"], input[type="password"]{
  border: 1px solid #dadada;
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  width:100%;
  padding: 10px;
  color:#272c32;
  margin-bottom:5px;
}

input[type="text"]:focus, input[type="password"]:focus{
  border:1px solid rgba(255, 53, 45, 0.7);
  outline:0;
}

input[type="submit"]{
  -moz-border-radius: 3px;
  -webkit-border-radius: 3px;
  border-radius: 3px;
  background:  rgba(50, 117, 208, 0.6);
  border:0;
  padding: 16px 0;
  color:#fff;
  font-weight:800;
  width:100%;
  font-size:1.1em
}

input[type="submit"]:hover{
  background: rgba(255, 53, 45, 0.7);
}

input[type="text"]:after{
  content:'ddd';
  background:rgba(255, 53, 45, 0.7);
  height:40px;
  width:40px;
}

.ph{
   -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  position:absolute;
  right: 6px;
  top: 9px;
  padding: 2px 5px;
  background:#4cb182;
  color:#fff;
  display:none;
}				
		</style>	
	</head>
	<body>
		<form name = "frm" action="member_register.action" method = "post" enctype="multipart/form-data">
		  <div class="container">
		    <h1>会員登録</h1>
		     <p style = "color: red">${message }</p>
		    <p>空欄なしにすべての項目を記入してください。</p>
		    <hr>
			
		    <label for="id"><b>Id</b></label>
		    <input type="text" placeholder="アイディーを入力してください。" name="m_id" required>
			
		    <label for="pass"><b>Password</b></label>
		    <input type="password" placeholder="パスワードを入力してください。" name="m_pw" required>
		    
		    <label for="name"><b>Name</b></label>
		    <input type="text" placeholder="名前を入力してください。" name="m_name" required>
		    
		    <label for="email"><b>Email</b></label>
		    <input type="text" placeholder="イーメールを入力してください。" name="m_email" required>
		    
		    <label for="address"><b>address</b></label>
		    <input type="text" placeholder="アドレスを入力してください。" name="m_address" required>
		    		    
		    <label for="phone"><b>Phone</b></label>
		    <input type="text" placeholder="電話番号を入力してください。" name="m_phone" required>
		    	        		    
		    <hr>		    
		    <button type="submit" class="registerbtn">会員登録</button>
		  </div>
		  	
		  <div class="container signin">
		  	<p>  <a href="/PetProduct/index.jsp">作成中止</a>&nbsp;&nbsp;&nbsp;
		 	<p>  <a href="/PetProduct/view/member/memberLogin.jsp">戻る</a>&nbsp;&nbsp;&nbsp;
		  </div>
		</form>
		
	</body>
</html>