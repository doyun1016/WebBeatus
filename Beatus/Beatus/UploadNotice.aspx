<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadNotice.aspx.cs" Inherits="Beatus.UploadNotice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
  </title>
   <link rel="stylesheet" href="/assets/css/UploadNotice.css"/>
  <style type="text/css">
    textarea {
      resize: none;
    }
  </style>
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
      <a href="http://www.google.com"><img src="https://i.ibb.co/59gpXdy/dfgregsrewgrsfgdfgfddfgdfgdd.jpg" alt="beatusSign" height="85" style="margin: 8px;"/></a>
    </center>
  </div>

  <div class="logOut">
    <p class="lcenter">LOGOUT</p>
  </div>

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

  <!---coding--->
  <div class="coding" style='font-size:27px;'>HOME - 공지사항 - 게시</div>
  <div class="coding" style='font-size:54px;'>공지사항</div>

  <!---green--->
  <center>
    <hr class='line1' style="color:#115926" />
  </center>

        <center>
    <p><textarea name="title" rows="1" class='content' ;>
(제목)</textarea></p>
    <p><textarea name="content" rows="16" class='content'>
(내용)
</textarea></p>
            </center>

  <div class='file'>
     +<a href="https://imgbb.com/"><img src="https://i.ibb.co/Mc68cS6/68.png" alt="68" width='30' border="0" style='margin-top:5px;'/></a>파일추가
  </div>

  <center>
    <hr class='line2' style="color:#115926;"/>
  </center>

  <div>
    <a href="http://www.google.com"><img src="https://i.ibb.co/ZSFWHvC/11.png" border="0" width="90" class='tangerine'/></a>
  </div>

  <div class='upload'>게시</div>
  <div class='under'></div>
    </form>
</body>
</html>