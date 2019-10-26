<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadNotice.aspx.cs" MasterPageFile="~/User.Master" Inherits="Beatus.UploadNotice" %>
<asp:Content ID="head" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content" ContentPlaceHolderID="Contents" runat="server">
<head runat="server">
    <title>공지사항 업로드</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="/assets/css/UploadNotice.css" rel="stylesheet"/>
<style type="text/css">
    textarea {
      resize: none;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">


  <!---coding--->
  <div class="coding" style='font-size:27px;'>HOME - 공지사항 - 게시</div>
  <div class="coding" style='font-size:54px;'>공지사항</div>

  <!---green--->
  <center>
    <hr class='line1' style="color:#115926; background-size:1px"/>
  </center>

    <p><textarea name="title" rows="1" class='content' runat="server" onserverclick="TitleInput" id="TitleInput">
(제목)</textarea></p>
        <p><textarea name="content" rows="16" class='content' runat="server" onserverclick="ContentInput" id="ContentInput">
(내용)</textarea></p>

  <div class='file'>
     +<a href="https://imgbb.com/"><img src="https://i.ibb.co/Mc68cS6/68.png" alt="68" width='30' border="0" style='margin-top:5px;' /></a>파일추가
  </div>

  <center>
    <hr class='line2' style="color:#115926; background-size:1px"/>
  </center>

  <div>
    <a href="http://www.google.com"><img src="https://i.ibb.co/ZSFWHvC/11.png" border="0" width="90" class='tangerine'/></a>
  </div>

  <div class='upload'>게시</div>
  <div class='under'></div>
    </form>
</body>
</asp:Content>