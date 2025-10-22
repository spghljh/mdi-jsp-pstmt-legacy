<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="main_header_part">
  <div class="main_header">

    <!-- 메인 로고 -->
    <div class="main_header_line2_1_000">
      <div class="main_header_line2_2_update">
        <div class="main_header_line2_3_Logo" style="margin-right: -18px;">
          <div class="main_header_menu_content1_Logo">
            <div class="Module_Layout_1_1_1_title_0">MDI</div>
          </div>
        </div>
        <div class="main_header_line2_3_update_outer">
          <div class="main_header_line2_3_update">
            <div class="main_header_menu_content1_update_title">
              <a href="${pageContext.request.contextPath}/">MobileDeviceInfo</a>
            </div>
          </div>
          <div class="main_header_line2_3_update"></div>
        </div>
      </div>
    </div>

    <!-- 메인 메뉴 -->
    <div class="main_header_line2_1_001">
      <div class="drop2">

        <div class="drop1_menu0">
          <div class="drop1_menu_title_false">
            <a href="http://mdi.dothome.co.kr/page3/page1_mdi.php"></a>
          </div>

          <div class="drop1_menu_title_true">
            <div class="drop1_menu_title_true_1">
              <div class="drop1_menu_title_true_1_title1">
                <div class="drop1_menu_title_true_1_title1_text">
                  <a>프로세서 검색</a>
                </div>
              </div>
              <div class="drop1_menu_title_true_1_title_semi">
                <div class="drop1_menu_title_true_1_title_semi1">
                  <a>프로세서 명칭으로 검색하세요.</a>
                </div>
              </div>
              <div class="drop1_menu_title_true_1_title2">
                <div class="drop1_menu_title_true_1_title1_text">
                  <a>디바이스 검색</a>
                </div>
              </div>
              <div class="drop1_menu_title_true_1_title_semi">
                <div class="drop1_menu_title_true_1_title_semi1">
                  <a>디바이스 명칭으로 검색하세요.</a>
                </div>
              </div>
            </div>

            <div class="drop1_menu_title_true_1" style="margin-left: 30px; margin-right: 40px;">
              <div class="drop1_menu_title_true_1_title1_search"></div>
              <div class="drop1_menu_title_true_1_title_semi">
                <div class="drop1_menu_title_true_1_title_semi1"><a></a></div>
              </div>
              <div class="drop1_menu_title_true_1_title2_search"></div>
              <div class="drop1_menu_title_true_1_title_semi">
                <div class="drop1_menu_title_true_1_title_semi1"><a></a></div>
              </div>
            </div>

            <div class="drop1_menu_title_true_1" style="margin-left: 210px; margin-top: 40px;">
              <div class="drop1_menu_title_true_1_title1_base">
                <div class="drop1_menu_title_true_1_title1_icon">
                  <div class="Module_Layout_1_1_1_1_0"><a>B1</a></div>
                </div>
                <div class="drop1_menu_title_true_1_title1_text_base">
                  <a href="http://mdi.dothome.co.kr/page3/page3_list_base.php">프로세서 베이스 확인하기</a>
                </div>
              </div>
              <div class="drop1_menu_title_true_1_title_semi_base">
                <div class="drop1_menu_title_true_1_title_semi1_base"><a></a></div>
              </div>
              <div class="drop1_menu_title_true_1_title1_base" style="margin-top: 52px;">
                <div class="drop1_menu_title_true_1_title1_icon">
                  <div class="Module_Layout_1_1_1_1_0"><a>B2</a></div>
                </div>
                <div class="drop1_menu_title_true_1_title1_text_base">
                  <a href="http://mdi.dothome.co.kr/page3/page3_list_base.php#Module_Layout_1_device">디바이스 베이스 확인하기</a>
                </div>
              </div>
              <div class="drop1_menu_title_true_1_title_semi_base">
                <div class="drop1_menu_title_true_1_title_semi1_base"><a></a></div>
              </div>
            </div>

            <div class="drop1_menu_title_false">
              <a href="http://mdi.dothome.co.kr/page3/page1_mdi.php"></a>
            </div>
          </div>
        </div>

        <!-- 메뉴 항목들 -->
        <div class="main_header_line2_3_000">
          <div class="main_header_menu_content1">
            <div class="drop2_title">
              <div class="drop_yet0"><a>P1</a></div>
              <div class="drop_yet1"><a href="${pageContext.request.contextPath}/cpus">프로세서 목록</a></div>
            </div>
          </div>
        </div>

        <div class="main_header_line2_3_000">
          <div class="main_header_menu_content1">
            <div class="drop2_title">
              <div class="drop_yet0"><a>D1</a></div>
              <div class="drop_yet1"><a href="${pageContext.request.contextPath}/devices">디바이스 목록</a></div>
            </div>
          </div>
        </div>

        <div class="main_header_line2_3_000">
          <div class="main_header_menu_content1">
            <div class="drop2_title">
              <div class="drop_yet0"><a>B</a></div>
              <div class="drop_yet1"><a href="${pageContext.request.contextPath}/base">베이스</a></div>
            </div>
          </div>
        </div>

        <!-- 로그인 -->
        <div class="main_header_line2_1_003">
          <div class="main_header_line2_3_003">
            <div class="main_header_menu_content4">
              <div class="drop2_title" style="margin-top: 2px; width: 200px;">
                <div class="drop2_user" id="user-info">
                  <c:choose>
                    <c:when test="${not empty sessionScope.loginUser}">
                      <span>${sessionScope.loginUser}님</span>
                      <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
                    </c:when>
                    <c:otherwise>
                      <a href="${pageContext.request.contextPath}/views/login.jsp">로그인</a>
                    </c:otherwise>
                  </c:choose>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

  </div>
</div>
