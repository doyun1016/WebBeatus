<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Beatus.Login" %>


<head runat="server">
    <title>Beatus MainPage</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/assets/css/Login.css" rel="stylesheet">
</head>

    <form id="form1" runat="server">
     <!--- 상단 바 --->
<div class = "topbar"></div>


<!---로고--->
<img src="https://i.ibb.co/59gpXdy/dfgregsrewgrsfgdfgfddfgdfgdd.jpg" alt="image" border="0" class = "logo">


<!---로그인 박스--->
<div class = "loginbox">
  
  <!--- 아이디 패스워드 --->
<div class = "left">
 <asp:TextBox class="text-login" ID="UserIDtxt"  Placeholder="ID" runat="server"></asp:TextBox>
  <asp:TextBox class="text-password" ID="UserPWtxt"  Placeholder="PW" Textmode="Password" runat="server"></asp:TextBox>
</div>
  
  <!---버튼--->
  <div class = "right">
   
      <asp:imagebutton  Text="Login" runat="server" onclick="Login_Click" style="background-image:url(/assets/img/orange.PNG); background-size:contain" class = "loginbtn"></asp:imagebutton>
    </div>

</div>

<div class = "bottombar"></div>
    </form>

