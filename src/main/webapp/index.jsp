<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_body_index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main_header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index-slick-cpu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index-slick-device.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>


<title>index.jsp</title>
</head>
<body>

<jsp:include page="/views/main-header.jsp" />


  <div class="ground">
    <div class="index_content_line">
      <div class="index_content" style="margin-top: -30px;">

        <div class="part1">
          <div class="Main_Title">
            <div class="tool1_title">
              <a>프로세서 중심으로 살펴보세요.</a>
            </div>
            <div class="tool1_semi">
              <a>프로세서 목록을 통해, 프로세서의 상세 정보를 확인하세요.</a>
            </div>
          </div>

          <div class="index_button_line1">
            <div class="button_content1">
              <div class="Module_Layout_1">
                <div class="Module_Layout_1_1" style="width: 1314px;">
                  <div class="Module_Layout_1_1_1" style="width: 1309px;">
                    <div class="Module_Layout_1_1_1_title">
                      <div class="Module_Layout_1_1_1_title_0">
                        <a style="font-size: 18px;">P</a>
                      </div>
                      <div class="Module_Layout_1_1_1_title_1">
                        <a class="Module_Layout_1_1_1_title_00" href="${pageContext.request.contextPath}/views/cpu-list.jsp">프로세서 탐색</a>
                      </div>
                      <div class="Module_Layout_1_1_1_title_2">
                        <a class="Module_Layout_1_1_1_title_00_ToBase" onclick="location.href='/page3/page3_list_base.php'">자세히</a>
                      </div>
                    </div>
                  </div>

                  <div class="Module_Layout_1_1_2" style="width: 1309px; padding-left: 40px;">
                    <div class="Module1_start" style="width: 600px;">
                      <div class="Total_Count" onclick="location.href='/mdi/page1/page1_list.php'">
                        <div class="Total_Count_Amount">
                          <a><c:out value="${totalCpuCount}" /></a>
                        </div>
                        <div class="Total_Count_Processor">
                          <a>프로세서</a>
                        </div>
                      </div>
                      <div class="Hot_Items1">
                        <div class="Hot_Items2_1">
                          <div class="Hot_Items2_1_1">
                            <a>실시간 인기 프로세서</a>
                          </div>
                        </div>
                        <div class="Hot_Items2_2">
                          <div class="Hot_Items2_2_1"></div>
                        </div>
                      </div>
                    </div>
                    <div class="Module1_start_slider">
						<jsp:include page="/views/cpu-slider.jsp" />
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="part2">
          <div class="Main_Title" style="margin-top: -30px;">
            <div class="tool1_title">
              <a>디바이스를 탐색할 수 있습니다.</a>
            </div>
            <div class="tool1_semi">
              <a>디바이스 목록을 통해, 디바이스의 상세 정보를 확인하세요.</a>
            </div>
          </div>

          <div class="index_button_line1">
            <div class="button_content1">
              <div class="Module_Layout_1">
                <div class="Module_Layout_1_1" style="width: 1314px;">
                  <div class="Module_Layout_1_1_1" style="width: 1309px;">
                    <div class="Module_Layout_1_1_1_title">
                      <div class="Module_Layout_1_1_1_title_0">
                        <a style="font-size: 18px;">D</a>
                      </div>
                      <div class="Module_Layout_1_1_1_title_1">
                        <a class="Module_Layout_1_1_1_title_00" href="${pageContext.request.contextPath}/views/device-list.jsp">디바이스 탐색</a>
                      </div>
                      <div class="Module_Layout_1_1_1_title_2">
                        <a class="Module_Layout_1_1_1_title_00_ToBase" onclick="location.href='/mdi/page3/page3_list_base.php#Module_Layout_1_device'">자세히</a>
                      </div>
                    </div>
                  </div>

                  <div class="Module_Layout_1_1_2" style="width: 1309px; padding-left: 40px;">
                    <div class="Module1_start" style="width: 600px;">
                      <div class="Total_Count" onclick="location.href='/mdi/page2/page2_list.php'" style="margin-right: 40px; margin-left: -20px;">
                        <div class="Total_Count_Amount">
                          <a><c:out value="${totalDeviceCount}" /></a>
                        </div>
                        <div class="Total_Count_Device">
                          <a>디바이스</a>
                        </div>
                      </div>
                      <div class="Hot_Items2">
                        <div class="Hot_Items2_1">
                          <div class="Hot_Items2_1_1">
                            <a>실시간 인기 디바이스</a>
                          </div>
                        </div>
                        <div class="Hot_Items2_2">
                          <div class="Hot_Items2_2_1"></div>
                        </div>
                      </div>
                    </div>
                    <div class="Module1_start_slider">
                <jsp:include page="/views/device-slider.jsp" />
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/js/slider-init.js"></script>
</body>
</html>
