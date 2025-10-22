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
<title>register.jsp</title>
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
                  <a style="font-size: 18px;">U2</a>
                </div>
                <div class="Module_Layout_1_1_1_1_1">
                  <a class="Module_Layout_1_1_1_1_1_0_page">회원 가입</a>
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

                      <script>
                        function check_input() {
                          const f = document.member;
                          if (!f.id.value || !f.pass.value || !f.pass_confirm.value || !f.name.value || !f.email.value) {
                            alert("빈칸 없이 입력해 주세요!");
                            return;
                          }
                          if (f.pass.value !== f.pass_confirm.value) {
                            alert("입력하신 비밀번호가 일치하지 않습니다!");
                            return;
                          }
                          alert("회원 가입 완료!");
                        }

                        function reset_form() {
                          const f = document.member;
                          f.id.value = "";
                          f.pass.value = "";
                          f.pass_confirm.value = "";
                          f.name.value = "";
                          f.email.value = "";
                          f.id.focus();
                        }

                        function check_id() {
                          window.open("check_id.php?id=" + document.member.id.value, "IDcheck", "left=700,top=300,width=380,height=160,scrollbars=no,resizable=yes");
                        }
                      </script>

                      <div class="tool1_user">
                        <div class="user_layout">
                          <div class="user_layout_form">
                            <div class="user_layout_form_line">

                              <div class="user_layout_form_line_box1">
                                <a style="font-weight:700; color:white; text-shadow:0 0 4px black; font-size:19px; margin-bottom:50px; margin-top: -40px; margin-left: 570px;"> </a>
                                <a style="font-weight:700; color:white; text-shadow:0 0 10px black; font-size:80px; margin-bottom:50px; margin-top: -55px;">MobileDeviceInfo</a>
                                <a style="font-weight:700; color:white; text-shadow:0 0 4px black; font-size:24px; margin-bottom:50px; margin-top: -45px;">프로세서부터 디바이스까지 함께 탐색하세요.</a>
                                <a class="user_layout_form_line_box1_semi" style="margin-bottom: -15px;">회원 가입</a>
                              </div>

                              <div class="user_layout_form_line_box2">
                                <form name="member" method="post" action="${pageContext.request.contextPath}/register">
                                  <div class="user_layout_form_line_content_register" style="margin-bottom: 30px; margin-top: 30px;">
                                    <input class="id_input" type="text" name="id" placeholder="아이디" />
                                  </div>

                                  <div class="user_layout_form_line_content_register">
                                    <input class="pw_input" type="password" name="pass" placeholder="비밀번호" />
                                  </div>

                                  <div class="user_layout_form_line_content_register" style="margin-bottom: 30px;">
                                    <input class="pw_input" type="password" name="pass_confirm" placeholder="비밀번호 확인" />
                                  </div>

                                  <div class="user_layout_form_line_content_register">
                                    <input class="pw_input" type="text" name="name" placeholder="이름" />
                                  </div>

                                  <div class="user_layout_form_line_content_register" style="margin-bottom: 30px;">
                                    <input class="pw_input" type="text" name="email" placeholder="이메일" />
                                  </div>

                                  <div class="user_layout_form_line_content_register">
                                    <button type="submit" class="register_button">가입하기</button>
                                  </div>
                                </form>
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
