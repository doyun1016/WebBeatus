<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="Beatus2.WebForm1" UserMasterPage="Site.Master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="heaeddd" runat="server">
    <link rel="stylesheet"href="Schedule.css" />
   </asp:Content>
    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
         <script Language="javascript" type="text/javascript">
    var today = new Date(); // 오늘 날짜//지신의 컴퓨터를 기준으로
    //today 에 Date객체를 넣어줌 //ex)5일
    function prevCalendar() {


      today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
      buildCalendar(); // 현재 달
    }

    function nextCalendar() {


      today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
      buildCalendar();
    }

    function buildCalendar() { // 현재 달fur
      var nMonth = new Date(today.getFullYear(), today.getMonth(), 1); // 이번 달의 첫째 날
      var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); // 이번 달의 마지막 날
      var tblCalendar = document.getElementById("calendar"); // 테이블 달력을 만들 테이블
      var tblCalendarYM = document.getElementById("calendarYM"); // yyyy년 m월 출력할 곳
      tblCalendarYM.innerHTML = today.getFullYear() + "년\n " + (today.getMonth() + 1) + "월"; // yyyy년 m월 출력
      // 기존 테이블에 뿌려진 줄, 칸 삭제


      while (tblCalendar.rows.length > 2) {
        tblCalendar.deleteRow(tblCalendar.rows.length - 1);
      }
      var row = null;
      row = tblCalendar.insertRow();

      var cnt = 0;
      var j = 0; //주 세기
      // 1일이 시작되는 칸을 맞추어 줌
      for (i = 0; i < nMonth.getDay(); i++) {
        cell = row.insertCell();
        cell.bgColor = "#F0F0F0"; //없는날 색 바꾸기
        cnt = cnt + 1;
      }

      for (i = 1; i <= lastDate.getDate(); i++) {
        cell = row.insertCell();
        cell.onclick = cellClick;
        cell.innerHTML = i;
        cnt = cnt + 1;
        if (cnt % 7 == 0) { // 1주일이 7일 이므로
          cell.bgColor = "#D5E1FF"; //토요일 색바꾸기
          row = calendar.insertRow();
          j++;
        } // 줄 추가

        if (cnt % 7 == 1) {
          cell.bgColor = "#FFE4E4"; //일요일 색바꾸기
        }
      }

    }

  
  </script>
  </head>
  <body>
    <div class="orng" style="height: 41px"></div>

        <!---BeatusLogo&Sign--->
        <div>
            <a href="http://www.google.com"><img src="https://i.ibb.co/9wjBCFQ/image.jpg" alt="beatusLogo" border="0" width="90" class="logo"></a>
        </div>

        <div>
            <center>
                <a href="http://www.google.com"><img src="https://i.ibb.co/59gpXdy/dfgregsrewgrsfgdfgfddfgdfgdd.jpg" alt="beatusSign" height="85" style="margin: 8px;"></a>
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
                        <td class="asd"><a class="tops" href="http://www.google.com" target="_self" class="tops">공지사항</a></td>
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

 </div>
    <div class="home">
      <p style="width:400px;">HOME - 일정 - 일정표</p>
      
      
      
    </div>

 <div class="introduction">
      <p style="width:400px;">일정</p>
      
      
      
    </div>

<div class="square1">
  
  
  
</div>

  
  
  
  <div class="wrapper">

      <table id="calendar" boarder="3" align="center" style="width:1541px; positon:absolute; top:200px; left:30px;">
        <tr>
          <td class="year"><label onclick="prevCalendar()">
              <</label> </td> <td colspan="5" align="center" id="calendarYM" class="year">m월 yyyy년</td>
          <td class="year"><label onclick="nextCalendar()">>

            </label></td>
        </tr>
        <tr>
          <td align="center" class="day">SUN</td>
          <td align="center" class="day">MON</td>
          <td align="center" class="day">TUE</td>
          <td align="center" class="day">WED</td>
          <td align="center" class="day">THU</td>
          <td align="center" class="day">FRI</td>
          <td align="center" class="day">SAT</td>
        </tr>


      </table>

  </body>
</asp:Content>
