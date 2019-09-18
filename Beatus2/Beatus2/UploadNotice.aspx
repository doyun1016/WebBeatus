<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadNotice.aspx.cs" Inherits="Beatus2.UploadNotice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="/assets/css/UploadNotice.css" rel="stylesheet"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <div class="orng" style="height: 41px"></div>

  <!---BeatusLogo&Sign--->
  <div>
    <a href="http://www.google.com"><img src="https://i.ibb.co/9wjBCFQ/image.jpg" alt="beatusLogo" border="0" width="90" class="logo"/></a>
  </div>

  <div>
      <a href="http://www.google.com"><img src="https://i.ibb.co/59gpXdy/dfgregsrewgrsfgdfgfddfgdfgdd.jpg" alt="beatusSign" height="85" style="margin-left: auto;"/></a>
  </div>

  <div class="logOut">
    <p class="lcenter">LOGOUT</p>
  </div>

  <!---orangeLineSlim1---->
  <div class="orng" style="height: 2px"></div>

  <!---Selections---->
  <div style="margin: 10px auto; ">
      <table class="asd">
        <tr class="asd">
          <td class="asd"><a href="http://www.google.com" target="_self" class="tops">공지사항</a></td>
          <td class="asd"><a href="http://www.google.com" target="_self" class="tops">코딩게시판</a></td>
          <td class="asd"><a href="http://www.google.com" target="_self" class="tops">동아리소개</a></td>
          <td class="asd"><a href="http://www.google.com" target="_self" class="tops">일정</a></td>
          <td class="asd"><a href="http://www.google.com" target="_self" class="tops">갤러리</a></td>
        </tr>
      </table>
  </div>

  <!---orangeLineSlim2--->
  <div class="orng" style="height: 2px"></div>

  <!---coding--->
  <div class="coding" style='font-size:27px;'>HOME - 공지사항 - 게시</div>
  <div class="coding" style='font-size:54px;'>공지사항</div>

  <!---green--->
    <hr class='line1' style="color:#115926; margin:auto"/>


    <p><textarea id="TitleInput" runat="server" name="title" rows="1" class="content" style="margin:48px 2.5%"></textarea></p>
    <p><textarea id="ContentInput" runat="server" name="content" rows="16" class='content' style="margin:48px 2.5%"></textarea></p>


  <a href="https://imgbb.com/">
  <div class='file'>
     +<img src="https://i.ibb.co/Mc68cS6/68.png" alt="68" width='30' border="0" style='margin-top:5px;' /> 파일추가
  </div>
  </a>
        <br/><br/>
    <hr class='line2' style="color:#115926; margin: 30px 2.5%"/>
        <br/>
        <br/>
  <div>
      <asp:ImageButton runat="server" Style="background-image: url(https://i.ibb.co/ZSFWHvC/11.png)" Width="90" CssClass='tangerine' OnClick="CompleteInput_Click" />
  </div>

  <div class='upload'>게시</div>
  <div class='under'></div>
    </form>
</body>
</html>
