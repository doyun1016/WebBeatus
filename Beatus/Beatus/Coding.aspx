<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User.Master" CodeBehind="Coding.aspx.cs" Inherits="Beatus.Coding" %>

<asp:Content ID="Head" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="Contents" runat="server">

<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel = "stylesheet" href="assets/css/Coding.css" />
    <title>Beatus</title>
</head>
    <form id="form1" runat="server">


<div class="table">
  <font color=gray> HOME-코딩게시판-게시글 </font>

</div>

<div class="table2">
  
<font size="6" color="gray">코딩게시판</font> 
</div>

<div class="table3">
<hr style="border: 0.5px solid green;"> </hr>
  </div>

<dive class="table4">
 <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제목 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;     / &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;  &nbsp;  &nbsp;   작성날짜</p>
  </div>

<div class="table5">
<hr style="border: 0.5px solid ;"> </hr>
  </div>



<div class="table9">
  <input type="textarea"style="border:solid white; width:91%;height:300px;" value="(내용)"> 
</div>




       
 <br> 
<div class = "table6">
  <div class="filebox bs3-primary">
                            <input class="upload-name" value="선택한 파일">

                            <label for="ex_filename">(첨부파일(파일검색))</label> 
                          <input type="file" id="ex_filename" class="upload-hidden"> 
                        </div>
</div>

<div class="table8">
<hr style="border: 0.5px solid green;"> </hr>
  </div>
</body>
    
    


    </form>
</asp:content>