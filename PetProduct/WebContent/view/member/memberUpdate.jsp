<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>会員情報</title>
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
		<form name = "frm" action="member_update.action" method = "post">
		  <div class="container">
		    <h1>会員修正</h1>
		    ${m_id}
		    <p style = "color: red">${message}</p>		     
		    <hr>
			
		    <label for="id"><b>アイディー</b></label>
		    <input type="text" value="${m_id}" name="m_id" readonly="readonly">
		
		    <label for="pass"><b>パスワード</b></label>
		    <input type="password" placeholder="パスワードを入力してください." name="m_pw">
		
			<label for="pass"><b>パスワード確認</b></label>
		    <input type="password" placeholder="パスワード確認" name="m_pw1">
		
		    <label for="name"><b>ネーム</b></label>
		    <input type="text" value="${m_name}" name="m_name">
		    
		    <label for="email"><b>メール</b></label>
		    <input type="text" value="${m_email}" name="m_email">
		    
		    <label for="address"><b>アドレス</b></label>
		    <input type="text" value="${m_address}" name="m_address">
		    		    
		    <label for="phone"><b>電話番号</b></label>
		    <input type="text" value="${m_phone}" name="m_phone">
		    	    	        		    
		    <hr>
		    <button type="submit" class="registerbtn">修正</button>
		  </div>  
		  
		  <div class="container signin">
		 	<p>  <a href="/PetProduct/index.jsp">取り消し</a>&nbsp;&nbsp;&nbsp;
		  </div>
		</form>	
		
		  <div class="container signin">
		<form name = "frm" action="member_delete.action" method = "post">
		  <input type="hidden" value="${m_id}" name="m_id">
		  <button type="submit" class= "registerbtn"><p>会員脱退</p></button>
		</form>
		  </div>
	</body>
</html>