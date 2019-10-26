<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Beatus.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/assets/css/Gallery.css"/>
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
  
   <div class="background">
     
    </div>
    
    <div class="text1">
      HOME - 갤러리 - 게시
    </div>
    
    <div class="text2">
  갤러리
    </div>

  
    
  <center><hr class="line1" /></center>
    <center>
        <div class="box1">(제목)</div>
    </center>
    
    <center>
        <div class="box2">(내용)</div>
    </center>
     
    <center><div class="line2"></div></center>
    <center>
        <div class="box3">
        </div>
    </center>
     <div class="plus1">
    </div>
    
    <div class="plus2">
    </div>
    
    <div class="text5">
  (사진파일 이름)
    </div>
  
    <center><hr class="line3" /></center>
    </form>
</body>
</html>
