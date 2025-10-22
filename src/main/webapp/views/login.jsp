<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_body_index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main_header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login/index_body.css">
<title>login.jsp</title>
</head>
<body>

<jsp:include page="/views/main-header.jsp" />

<div class="ground">
  <div class="index_content">
    <div class="index_button_line1" style="margin-top: 30px;">
      <div class="button_content1">
        <div class="Module_Layout_1">
          <div class="Module_Layout_1_1">

            <div class="Module_Layout_1_1_1">
              <div class="Module_Layout_1_1_1_1">
                <div class="Module_Layout_1_1_1_1_0">
                  <a style="font-size: 18px;">U1</a>
                </div>
                <div class="Module_Layout_1_1_1_1_1">
                  <a class="Module_Layout_1_1_1_1_1_0_page">로그인</a>
                </div>
                <div class="Module_Layout_1_1_1_1_2_back" onclick="history.back()">
                  <a class="Module_Layout_1_1_1_1_1_0">뒤로가기</a>
                </div>
              </div>
            </div>

            <div class="Module_Layout_1_1_2">
              <div class="Module_Layout_1_1_2_1_user">
                <div class="Module_Layout_1_1_2_1_1"><a></a></div>

                <div class="Module_Layout_1_1_2_1_2">
                  <div class="Module_Layout_1_1_2_1_2_1">
                    <div class="Module1">

                      <div class="tool1_user">
                        <div class="user_layout">
                          <div class="user_layout_form">
                            <div class="user_layout_form_line">

                              <div class="user_layout_form_line_box1" style="margin-top: -10px;">
                                <a style="font-weight:700; color:white; text-shadow:0 0 4px black; font-size:19px; margin-bottom:50px; margin-top: -40px; margin-left: 570px;"> </a>
                                <a style="font-weight:700; color:white; text-shadow:0 0 10px black; font-size:80px; margin-bottom:50px; margin-top: -55px;">MobileDeviceInfo</a>
                                <a style="font-weight:700; color:white; text-shadow:0 0 4px black; font-size:24px; margin-bottom:50px; margin-top: -45px;">프로세서부터 디바이스까지 함께 탐색하세요.</a>
                                <a class="user_layout_form_line_box1_semi">로그인</a>
                              </div>

                              <div class="user_layout_form_line_box2">
                                <form name="login" method="post" action="${pageContext.request.contextPath}/loginProc">
                                  <div class="user_layout_form_line_content">
                                    <input class="id_input" type="text" name="id" placeholder="아이디">
                                  </div>

                                  <div class="user_layout_form_line_content">
                                    <input class="pw_input" type="password" name="pass" placeholder="비밀번호">
                                  </div>

                                  <div class="user_layout_form_line_content">
                                    <button class="login_button" type="submit">로그인</button>
                                  </div>
                                </form>

                                <div class="user_layout_form_line_content">
                                  <button class="register_button" type="button" onclick="location.href='${pageContext.request.contextPath}/register'">회원가입</button>
                                </div>
                              </div>

                            </div>
                          </div>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
