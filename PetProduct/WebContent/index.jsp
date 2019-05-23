<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.container {
  position: relative;
  width: 100%;
  max-width: 400px;
}

.container img {
  width: 100%;
  height: auto;
}

.container .btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #555;
  color: white;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}

.container .btn:hover {
  background-color: green;
}
</style>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type ="text/css" href="/PetProduct/css/css.css">
<title>ゼヒ ペットショップ</title>
</head>
<body>

<!-- Navbar (sit on top) -->
<%@ include file="header.jsp"%> 
<%-- <jsp:include page="header.jsp"/> --%>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
    <a href="#about" class="w3-bar-item w3-button" onclick="toggleFunction()">アバウト</a>
    <a href="#portfolio" class="w3-bar-item w3-button" onclick="toggleFunction()">ポートフォリオ</a>
    <a href="#contact" class="w3-bar-item w3-button" onclick="toggleFunction()">コンテンツ</a>
    <a href="#" class="w3-bar-item w3-button">サーチ</a>
  </div>

<!-- First Parallax Image with Logo Text -->

<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64" id="about">
  <h3 class="w3-center">紹介</h3>
  <p class="w3-center"><em>ジェヒ病院ペット用品店です。</em></p>
  <p>
${message }
内容によっては回答をさしあげるのにお時間をいただくこともございます。また、土日、祝祭日、年末年始、夏季期間は翌営業日以降の対応となりますのでご了承ください。
ご入力されるお客様の個人情報については、このお問い合わせに対する回答のための利用以外には使用いたしませんので、ご安心ください。
弊社の個人情報保護に対する考え方については、プライバシーポリシーをご参照ください。

弊社から返信いたしますメールは、お問い合わせいただきましたお客さまに対してお答えさせていただくことを目的としています。
弊社の許可なくメールの一部または全体を転載、二次使用すること、ならびに当該お客さま以外に開示することは固くお断りいたします。

※ご注文に関するお問い合わせには、必ず「ご注文番号」と「お名前」をご記入の上、メールくださいますようお願いいたします。</p>
  <div class="w3-row">
    <div class="w3-col m6 w3-center w3-padding-large">
      <p><b><i class="fa fa-user w3-margin-right"></i>[代表] 李ジェヒ </b></p><br>
      <img src="/PetProduct/img/iee.jpg" class="w3-round w3-image w3-opacity w3-hover-opacity-off" alt="대표" width="400" height="300">
    </div>

    <!-- Hide this text on small devices -->
    <div class="w3-col m6 w3-hide-small w3-padding-large">
      <p>関連統計によると,愛犬産業は市場規模が数兆ウォンに達する驚異的な成長率を記録しました。 ペット数字だけでも400万匹に達したとします。 
           核家族化に独身·高齢人口の増加などにより,都市民の孤独感解消の需要が増大し,目覚ましい成長を見せる人気産業となりました。 今後とも市場は追加拡張される可能性がかなり大きいと言えます。 
	ペットを飼うということは,人間の情緒にとてもいい影響を及ぼし,幼い頃から愛犬を飼う子供たちは情緒循環はもちろん,円満な性格形成によって立派な大人に成長していくことができます。 特に,
	育つ青少年期にペットを飼って愛を与えるのは善良で安定的な情緒を作り出すのに決定的な要因として作用します。 
	何より機械文明が発達したこのごろ青少年たちの情緒が不安で機械のように冷たくて猟奇的な性格に変わっていくのを見ると切ない心です. 
	私たちの情緒に人間らしい暖かさが持てるようにする中でペットの動物が最高だと思います。</p>
    </div>
  </div>
  <input type = "hidden" name = "m_id" value = "${m_id}">
  <p class="w3-large w3-center w3-padding-16">Im really good at:</p>
  <p class="w3-wide"><i class="fa fa-camera"></i>フォトグラフィ</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:90%">90%</div>
  </div>
  <p class="w3-wide"><i class="fa fa-laptop"></i>ウェブデザイン</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:85%">85%</div>
  </div>
  <p class="w3-wide"><i class="fa fa-photo"></i>フォトショップ</p>
  <div class="w3-light-grey">
    <div class="w3-container w3-padding-small w3-dark-grey w3-center" style="width:75%">75%</div>
  </div>
</div>

<div class="w3-row w3-center w3-dark-grey w3-padding-16">
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">14+</span><br>
    Partners
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">55+</span><br>
    Projects Done
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">89+</span><br>
    Happy Clients
  </div>
  <div class="w3-quarter w3-section">
    <span class="w3-xlarge">150+</span><br>
    Meetings
  </div>
</div>

<!-- Second Parallax Image with Portfolio Text -->
<div class="bgimg-2 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
    <img src="/PetProduct/img/sss.jpg" width="500" height="300" alt="펫 카페"/>
    <p class = "w3-center">6月初めオープン予定のペットカフェです。</p>
    <p> 午前 10時 ~ 午後 8時</p>
	<p> 土曜日、日曜日 午前 10時 ~ 午後 6時</p>
	<p> 公休日 午前 10時 ~ 午後 4時</p>
  </div>
</div>

<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-64" id="portfolio">
  <h3 class="w3-center">ペット用品</h3>
  <p class="w3-center"><em>期間割引イベントを進めています。ご関心下さい。
  有機栽培で人が食べても美味しい飼料の赤ちゃんが持って遊んでも面白い愛玩用品が具備されております。</em></p><br>

  <!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
      <img src="/PetProduct/img/main1.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="The mist over the mountains">
    </div>

    <div class="w3-col m3">
      <img src="/PetProduct/img/main2.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Coffee beans">
    </div>

    <div class="w3-col m3">
      <img src="/PetProduct/img/main3.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Bear closeup">
    </div>

    <div class="w3-col m3">
      <img src="/PetProduct/img/main4.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Quiet ocean">
    </div>
  </div>

  <div class="w3-row-padding w3-center w3-section">
    <div class="w3-col m3">
      <img src="/PetProduct/img/main5.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="The mist">
    </div>

    <div class="w3-col m3">
      <img src="/PetProduct/img/main6.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="My beloved typewriter">
    </div>

    <div class="w3-col m3">
      <img src="/PetProduct/img/main7.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Empty ghost train">
    </div>

    <div class="w3-col m3">
      <img src="/PetProduct/img/main8.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Sailing">
    </div>
    <button class="w3-button w3-padding-large w3-light-grey" style="margin-top:64px" button type="button"><a href = "/PetProduct/view/pet/pet_PdList.jsp" style="text-decoration:none">LOAD MORE</a></button>
  </div>
</div>

<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-large w3-black w3-display-topright" title="Close Modal Image"><i class="fa fa-remove"></i></span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>

<!-- Third Parallax Image with Portfolio Text -->
<div class="bgimg-3 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
  	<img src="/PetProduct/img/ss.jpg" width="500" height="300" alt="내부모습"/>
  </div>
</div>

<!-- Container (Contact Section) -->
<div class="w3-content w3-container w3-padding-64" id="contact">
  <h3 class="w3-center">問い合わせ</h3>
  <p class="w3-center"><em>お問い合わせの内容を記入してください。</p>

  <div class="w3-row w3-padding-32 w3-section">
    <div class="w3-col m4 w3-container">
      <img src="/PetProduct/img/s.jpg" class="w3-image w3-round" style="width:100%">
    </div>
    <div class="w3-col m8 w3-panel">
      <div class="w3-large w3-margin-bottom">
        <i class="fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> 大田, 韓国<br>
        <i class="fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> 携帯: 82)1041633958<br>
        <i class="fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Email: mail@mail.com<br>
      </div>
      <p>多くの関心はいつも感謝しております。<i class="fa fa-coffee"></i>, お待ちしております。</p>
      <form action="/action_page.php" target="_blank">
        <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
          <div class="w3-half">
            <input class="w3-input w3-border" type="text" placeholder="名前" required name="Name">
          </div>
          <div class="w3-half">
            <input class="w3-input w3-border" type="text" placeholder="メール" required name="Email">
          </div>
        </div>
        <input class="w3-input w3-border" type="text" placeholder="メッセージ" required name="Message">
        <button class="w3-button w3-black w3-right w3-section" type="submit">
        <div><i class="fa fa-paper-plane" ><a href = "/PetProduct/view/etc/mail.jsp" style="text-decoration:none">送信</a></i></div>
        </button>
      </form>
    </div>
  </div>
</div>

<!-- Footer -->
<%@ include file="footer.jsp"%>
 
<script>
// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

// Change style of navbar on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    var navbar = document.getElementById("myNavbar");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
    } else {
        navbar.className = navbar.className.replace(" w3-card w3-animate-top w3-white", "");
    }
}

// Used to toggle the menu on small screens when clicking on the menu button
function toggleFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
</body>
</html>
