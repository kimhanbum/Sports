<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- 마이 페이지 좌측 side 메뉴들 -->
<div class="container">
  <div class="blog_right_sidebar">
      <aside class="single_sidebar_widget post_category_widget">
          <h4 class="widget_title">마이페이지</h4>
          <ul>
          	  <li>
                  <a href="${pageContext.request.contextPath}/member/update" class="d-flex">
                      <p>개인정보수정</p>
                  </a>
              </li>
              <li>
                  <a href="${pageContext.request.contextPath}/pm/view" class="d-flex">
                      <p>당일운동량</p>
                  </a>
              </li>
              <li>
                  <a href="${pageContext.request.contextPath}/water/view" class="d-flex">
                      <p>물 섭취량</p>
                  </a>
              </li>
              <li>
                  <a href="${pageContext.request.contextPath}/member/info" class="d-flex">
                      <p>내 정보</p>
                  </a>
              </li>
              <li>
                 <a href="${pageContext.request.contextPath}/water/calendar" class="d-flex">
                      <p>물 섭취량</p>
                  </a>
              </li>
              <li>
                  <a  href="${pageContext.request.contextPath}/Mydeal/main" class="d-flex">
                      <p>내 거래 내역</p>
                  </a>
              </li>
              <li>
                  <a href="${pageContext.request.contextPath}/mypage/mymatching" class="d-flex">
                      <p>내 매칭 정보</p>
                  </a>
              </li>
              <li>
                  <a href="${pageContext.request.contextPath}/mypage/mentorwriteList" class="d-flex">
                      <p>내 작성 멘토/멘티</p>
                  </a>
              </li>
              <li>
                  <p>멘토/멘티 매칭 </p>
                  <a href="${pageContext.request.contextPath}/mypage/mentorApplyList" class="d-flex">
                      <p> - 나의 신청 확인</p>
                  </a>
                  <a href="${pageContext.request.contextPath}/mypage/requestedList" class="d-flex">
                      <p> - 수락 요청 확인</p>
                  </a>
              </li>
          </ul>
      </aside>
  </div>
</div>