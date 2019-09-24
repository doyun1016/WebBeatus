<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadCodding.aspx.cs" Inherits="Beatus2.UploadCodding" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
      <a href="http://www.google.com"><img src="https://i.ibb.co/59gpXdy/dfgregsrewgrsfgdfgfddfgdfgdd.jpg" alt="beatusSign" height="85" style="margin-top:8px;
margin-bottom:8px; margin-left:auto; margin-right:auto"/></a>
  </div>

  <div class="logOut">
    <p class="lcenter">LOGOUT</p>
  </div>

  <!---orangeLineSlim1---->
  <div class="orng" style="height: 2px"></div>

  <!---Selections---->
  <div>
      <table class="asd" style="margin:0 auto">
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
  <div class="coding" style='font-size:27px;'>HOME - 코딩게시판 - 게시</div>
  <div class="coding" style='font-size:54px;'>코딩게시판</div>

  <!---green--->
  <center>
    <hr class='line1' color='#115926' size='1'/>
  </center>

  <form>
    <p><textarea name="title" rows="1" class='content' ;>
(제목)</textarea></p>
    <p><textarea name="content" rows="16" class='content'>
(내용)
</textarea></p>
  </form>

  <div class='file'>
     +<a href="https://imgbb.com/"><img src="https://i.ibb.co/Mc68cS6/68.png" alt="68" width='30' border="0" style='margin-top:5px;'/ ></a>파일추가
  </div>

  <center>
    <hr class='line2' color='#115926' size='1'/>
  </center>

  <div>
    <a href="http://www.google.com"><img src="https://i.ibb.co/ZSFWHvC/11.png" border="0" width="90" class='tangerine'/></a>
  </div>

  <div class='upload'>게시</div>
  <div class='under'></div>

    </form>
</body>
</html>
