<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainPage.aspx.cs" Inherits="Beatus2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--styleLoader-->
		<link rel="stylesheet" href="/assets/css/MainPageStyle.css"/>

		<!------Title&Logo------>
		<title>
			Beatus
		</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="orng" style="height: 41px"></div>

		<!---BeatusLogo&Sign--->
		<div>
			<a href="http://www.google.com"><img src="https://i.ibb.co/9wjBCFQ/image.jpg" alt="beatusLogo" border="0" width="90" class="logo"/></a>
		</div>

		<div>
			<center>
				<a href="http://www.google.com"><img src="https://i.ibb.co/59gpXdy/dfgregsrewgrsfgdfgfddfgdfgdd.jpg" alt="beatusSign" height="85" style="margin: 8px; margin-left:auto"/></a>
			</center>
		</div>
		
		<div class="logOut"><p class="lcenter">LOGOUT</p></div>

		<!---orangeLineSlim1---->
		<div class="orng" style="height: 2px"></div>

		<!---Selections---->
		<div>
			<center>
				<table class="asd">
					<tr class="asd">
						<td class="asd"><a href="http://www.google.com" target="_self" class="tops">공지사항</a></td>
						<td class="asd"><a href="http://www.google.com" target="_self" class="tops">코딩게시판</a></td>
						<td class="asd"><a href="http://www.google.com" target="_self" class="tops">동아리소개</a></td>
						<td class="asd"><a href="http://www.google.com" target="_self" class="tops">일정</a></td>
						<td class="asd"><a href="http://www.google.com" target="_self" class="tops">갤러리</a></td>
					</tr>
				</table>
			</center>
		</div>

		<!---orangeLineSlim2--->
		<div class="orng" style="height: 2px"></div>

		<!---godIHateYouSlider-->
		<div class="ism-slider" data-play_type="loop" id="my-slider">
			<ol>
				<li>
					<img src="https://i.ibb.co/z2cdMrT/20190830-164320.jpg" alt="illustView"/>
				</li>
				<li>
					<img src="https://i.ibb.co/ws0rBMx/20190814-185652.jpg" alt="dinnerTime"/>
				</li>
				<li>
					<img src="https://i.ibb.co/PrSzt7J/20190830-163632.jpg" alt="artHall"/>
				</li>
				<li>
					<img src="https://i.ibb.co/nfMxH2t/20190521-142412.jpg" alt="wishUponTheSky"/>
				</li>
			</ol>
		</div>

		<!---greenLine1--->
		<div class="grn" style="height: 2px"></div>

		<!---groupIntroduction--->
		<div>groupIntroduction
		</div>

		<!---greenLine2--->
		<div class="grn" style="height: 2px"></div>

		<!----introductionText---->
		<div style="margin: 100px 0 30px 0;">
			<center>
				<span class="bar"></span>
				<span class="intro">부서소개</span>
				<span class="bar"></span>
			</center>
		</div>

		<!----introductionCircles---->
		<div>
			<center>
				<span class="circle"><p class="ccenter">Front</p></span>
				<span class="circle"><p class="ccenter">Back</p></span>
				<span class="circle"><p class="ccenter">Design</p></span>
			</center>
		</div>

		<!----Notice---->
		<div>
			<center>
				<div class="block">
					제목
					<br/>
					<div class="don"></div>
				</div>

				<div class="block">
					제목
					<br/>
					<div class="don"></div>
				</div>

				<div class="block">
					제목
					<br/>
					<div class="don"></div>
				</div>

				<div class="block">
					제목
					<br/>
					<div class="don"></div>
				</div>
			</center>
		</div>

		<!--members-->
		<div class="member">
			
				<p style="font-size:30px ; color:#707070">MEMBERS</p>
		</div>

		<!----orangeLineBottom---->
		<div class="orng" style="height: 41px;"></div>

		<!--scriptLoader-->
		<script src="/assets/JS/MainPageScript.js"></script>

		<!--sliderStyleLoader-->
		<link rel="stylesheet" href="assets/css/MainPageSlider.css"/>
    </form>
</body>
</html>
