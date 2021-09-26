<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <script type="text/javascript" src="event.js"></script>
        <script type="text/javascript">
            window.onload = function(){
                function idcheck(){
                    var insertId=document.inputForm.id.value;
                    alert("아이디는 "+insertId+" 입니다.");
                    return;
                }
                function emailcheck(){
                    var email1 = document.inputForm.email.value;
                    var email2 = document.inputForm.email2.value;
                    alert("이메일은 "+email1+email2+" 입니다.");                 return;
                }
                
                function joincheck(){
                    var sname = document.inputForm.sname.value;
                    var gender = document.inputForm.gender.value;
                    var birth1 = document.inputForm.birth1.value;
                    var birth2 = document.inputForm.birth2.value;
                    var birth3 = document.inputForm.birth3.value;
                    var Hobbys = [];
                    for(var i=0; i<document.inputForm.hobby.length; i++){
                        if(document.inputForm.hobby[i].checked) {
                            Hobbys.push(document.inputForm.hobby[i].value);
                        }
                    }
                    alert("이름 : "+sname+"\n"+"성별:"+gender+"\n"
                    +"생년월일:"+birth1+"년"+birth2+"월"+birth3+"일"+"\n"
                    +"취미:"+Hobbys.join("-"));
                    return;
                }
                
                var checkBtn = document.getElementById("check");
                var checkEmail = document.getElementById("check2");
                var joinBtn = document.getElementById("join");
                addEvent(checkBtn, 'click', idcheck);
                addEvent(checkEmail, 'click', emailcheck);
                addEvent(joinBtn, 'click', joincheck);

            }
        </script>
        <title> html </title>
    </head>
<body>
    <form method="GET" name="inputForm">
        <table width="1000px">
            <tr>
                <td>
                    <label for="sname">이름
                </td>
                <td>
                    <input type="text" name="sname" id="sname" size="20px"> 
                </td>
            </tr>
            <tr>
                <td>
                    <label for="id">아이디
                </td>
                <td>
                    <input type="text" name="id" id="id" size="20px">
                    <input type="button" id="check" value="중복확인">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="pwd">비밀번호
                </td>
                <td>
                    <input type="text" name="pwd" id="pwd" size="20px"> 
                    *영문 대소문자/숫자/특수문자를 혼용하여 2종류10~16자 또는 3종 8~16자
                </td>
            </tr>
            <tr>
                <td>
                    <label for="pwdCheck">비밀번호 확인
                </td>
                <td>
                    <input type="text" name="pwdCheck" id="pwdCheck" size="20px">
                </td>
            </tr>
            <tr>
                   <td>
                         생일/성별
                    </td>
                    <td>
                    <script type="text/javascript">
                         var today = new Date();
                         var toyear = parseInt(today.getFullYear ());
                         var start = toyear;
                         var end = toyear - 15;

                         document.write("<select name=birth1> ");
                         document.write("<option value='2015' selected>");
                         for (i=start;i>=end;i--) document.write("<option>"+i);
                         document.write("</select>년  ");

                         document.write("<select name=birth2>");
                         document.write("<option value='' selected>");
                         for (i=1;i<=12;i++) document.write("<option>"+i);
                         document.write("</select>월  ");

                         document.write("<select name=birth3>");
                         document.write("<option value='' selected>");
                         for (i=1;i<=31;i++) document.write("<option>"+i);
                         document.write("</select>일  </font>");
                         </script>
                         <input type="radio" name="gender" value="남">남
                         <input type="radio" name="gender" value="여" checked>여
                    </td>
               </tr>
            <tr>
                <td>
                    <label for="dong">우편번호
                </td>
                <td>
                    <input type="text" name="dong" id="dong" size="5">-
                    <input type="text" name="dong" id="dong" size="5">
                    <input type="button" id="address" value="우편번호검색">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="home">집주소
                </td>
                <td>
                    <input type="text" name="home" id="home" size="60"> 
                </td>
            </tr>
            <tr>
                <td>
                    <label for="homeAddress">상세주소
                </td>
                <td>
                    <input type="text" name="homeAddress" id="homeAddress" size="60">   
                </td>
            </tr>
            <tr>
                <td>
                    <label for="phone">연락처
                </td>
                <td>
                    <select id="phone">
                        <option value=""></option>
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="019">019</option>
                    </select>
                    -
                    <input type="text" name="phone" id="phone" size="10">-
                    <input type="text" name="phone" id="phone" size="10">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="email">이메일
                </td>
                <td>
                    <input type="text" name="email" id="email" size="10">@
                    <select id="email2">
                        <option value=""></option>
                        <option value="1">http://www.google.com</option>
                        <option value="2">http://www.naver.com</option>
                        <option value="3">http://www.daum.com</option>
                    </select>
                    <input type="button" id="check2" value="중복확인">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="homeAddress">회사전화
                </td>
                <td>
                    <select id="homeAddress">
                        <option value=""></option>
                        <option value="031">031</option>
                        <option value="032">032</option>
                        <option value="042">042</option>
                    </select>
                    -
                    <input type="text" name="homeAddress" id="homeAddress" size="10">-
                    <input type="text" name="homeAddress" id="homeAddress" size="10">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="workhome">회사주소
                </td>
                <td>
                    <input type="text" name="address1" id="address1" size="5">-
                    <input type="text" name="address1" id="address1" size="5">
                    <input type="button" id="check2" value="우편번호검색"><br/>
                    <input type="text" name="workhome" id="workhome" size="40">

                </td>
            </tr>
            <tr>
                <td>
                    휴대폰
                </td>
                <td>
                    <select id="smartPhone" name="smartPhone">
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="019">019</option>
                    </select>
                    -<input type="text" name="smartPhone1" size="5">
                    -<input type="text" name="smartPhone2" size="5">
                </td>
            </tr>
            <tr>
            <tr>
                <td>
                    <label for="news">뉴스메일
                </td>
                <td>
                    <input type="radio" name="news" checked>받습니다.
                    <input type="radio" name="news">받지 않습니다.
                </td>
            </tr>
            <tr>
                <td>
                    <label for="sms">SMS안내(이벤트)
                </td>
                <td>
                    <input type="radio" name="sms" checked>받습니다.
                    <input type="radio" name="sms">받지 않습니다.
                </td>
            </tr>
            <tr>
                <td>
                    <label for="hobby">취미
                </td>
                <td>
                    <input type="checkbox" name="hobby" value="등산" checked>등산
                    <input type="checkbox" name="hobby" value="게임">게임
                    <input type="checkbox" name="hobby" value="영화">영화
                </td>
            </tr>
        </table>
        <input type="button" id="join" value="회원가입">
    </form>
</body>
</html>
[출처] HTML - 시험(회원가입 폼 이벤트 처리)|작성자 전갈