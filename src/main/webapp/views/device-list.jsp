<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main_header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/page2/index_body.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/page2/page2_body.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/page2/page0_body_total.css">
<title>device_list.jsp</title>
</head>
<body>

<jsp:include page="/views/main-header.jsp" />

<div class="ground">
  <div class="index_content">
    <div class="index_button_line1" style="margin-top:30px;">
      <div class="button_content1">
        <div class="Module_Layout_1">
          <div class="Module_Layout_1_1">

            <div class="Module_Layout_1_1_1">
              <div class="Module_Layout_1_1_1_1">
                <div class="Module_Layout_1_1_1_1_0"><a style="font-size:18px;">D1</a></div>
                <div class="Module_Layout_1_1_1_1_1"><a class="Module_Layout_1_1_1_1_1_0_page">디바이스 목록</a></div>
                <div class="Module_Layout_1_1_1_1_2_back" onclick="history.back()"><a class="Module_Layout_1_1_1_1_1_0">뒤로가기</a></div>
              </div>
            </div>

            <div class="Module_Layout_1_1_2">
              <div class="Module_Layout_1_1_2_1">

                <div class="Module_Layout_1_1_2_1_1" style="margin-left:10px; margin-bottom:1px; margin-top:25px;">
                  <a class="mdi_a" style="font-size:30px !important;">MobileDeviceInfo</a>
                  <a style="font-size:24px !important;">에서 제공하는</a>
                  <a class="mdi_a">디바이스 탐색</a>
                  <a style="font-size:24px !important;">을 시작하세요.</a>
                </div>

                <div class="Module_Layout_1_1_2_1_1" style="margin-left:40px; margin-top:10px;">
                  <a>디바이스의 제조사 분포를 확인하거나, 목록에서 직접 탐색할 수 있습니다.</a>
                </div>

                <div class="Module_Layout_1_1_2_1_2">
                  <div class="Module_Layout_1_1_2_1_2_1">
                    <div class="Module1">
                      <div style="margin-left:40px;"></div>

                      <table class="cpulist_table_page2">
                        <c:forEach var="device" items="${devices}">
                          <tr class="SearchResult_Table_Row_page2">
                            <td>
                              <div class="total1_image">
                                <div class="Module_Layout_1_1_1_1_0" style="margin-left:20px;">
                                  <a style="font-size:14px; color:white; width:40px;">Dvic</a>
                                </div>
                              </div>
                            </td>

                            <td>
                              <div class="total1_type">
                                <div class="total2_type">
                                  <a><c:out value="${device.typeDevice}" /></a>
                                </div>
                              </div>
                            </td>

                            <td>
                              <div class="total1_manf_image">
                                <div class="total2_manf_image">
                                  <img src="${pageContext.request.contextPath}/image/${device.manfDevice}.png" style="width:100%; height:100%">
                                </div>
                              </div>
                            </td>

                            <td>
                              <div class="total1_name_device">
                                <div class="total2_name_device">
                                  <a href="${pageContext.request.contextPath}/devices/${device.idDevice}">
                                    <c:out value="${device.nameDevice}" />
                                  </a>
                                </div>
                              </div>
                            </td>

                            <td style="margin-left:-30px">
                              <div class="total2_cpuindevice">
                                <c:choose>
                                  <c:when test="${device.cpuDevice != null}">
                                    <a><c:out value="${device.cpuDevice}" /></a>
                                  </c:when>
                                  <c:otherwise>
                                    <a>NULL</a>
                                  </c:otherwise>
                                </c:choose>
                              </div>
                            </td>
                          </tr>
                        </c:forEach>
                      </table>

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
