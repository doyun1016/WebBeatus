<%@ Page Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Coding_Upload.aspx.cs" Inherits="Beatus.Coding_Upload" %>

<asp:Content ID="Head" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="Contents" runat="server">

<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel = "stylesheet" href="assets/css/Coding_Upload.css" />
    <title>Beatus</title>
</head>
    <form id="form1" runat="server">


  <!---coding--->
  <div class="coding" style='font-size:27px;'>HOME - 코딩게시판 - 게시</div>
  <div class="coding" style='font-size:54px;'>코딩게시판</div>

  <!---green--->
  <center>
    <hr class='line1' color='#115926' size='1'>
  </center>

  <form>
    <p><textarea name="title" rows="1" class='content' ;>
(제목)</textarea></p>
    <p><textarea name="content" rows="16" class='content'>
(내용)
</textarea></p>
  </form>

  <div class='file'>
     +<a href="https://imgbb.com/"><img src="https://i.ibb.co/Mc68cS6/68.png" alt="68" width='30' border="0" style='margin-top:5px;' ></a>파일추가
  </div>

  <center>
    <hr class='line2' color='#115926' size='1'>
  </center>

  <div>
    <a href="http://www.google.com"><img src="https://i.ibb.co/ZSFWHvC/11.png" border="0" width="90" class='tangerine'></a>
  </div>

  <div class='upload'>게시</div>
  <div class='under'></div>

</body>
    </form>
</body>
</html>
