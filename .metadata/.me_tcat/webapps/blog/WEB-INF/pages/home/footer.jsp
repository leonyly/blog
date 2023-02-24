<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ page  import="com.app.utils.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<a href="#" data-target="html" class="scroll-to-target scroll-to-top"><i class="fa fa-angle-up"></i></a>


<div class="side-menu__block">


   <div class="side-menu__block-overlay custom-cursor__overlay">
      <div class="cursor"></div>
      <div class="cursor-follower"></div>
   </div><!-- /.side-menu__block-overlay -->
   <div class="side-menu__block-inner ">
      <div class="side-menu__top justify-content-end">

         <a href="#" class="side-menu__toggler side-menu__close-btn"><img src="<%=basePath %>static/ss/assets/images/shapes/close-1-1.png" alt=""></a>
      </div><!-- /.side-menu__top -->


      <nav class="mobile-nav__container">
         <!-- content is loading via js -->
      </nav>
      <div class="side-menu__sep"></div><!-- /.side-menu__sep -->
      <div class="side-menu__content">
         <p>Tripo is a premium wordpress theme for travel, tours, trips, adventures and a wide range of other tour agencies.</p>
         <p><a href="mailto:needhelp@tripo.com">needhelp@tripo.com</a> <br> <a href="tel:888-999-0000">888 999 0000</a></p>
         <div class="side-menu__social">
            <a href="#"><i class="fab fa-facebook-square"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-pinterest-p"></i></a>
         </div>
      </div><!-- /.side-menu__content -->
   </div><!-- /.side-menu__block-inner -->
</div><!-- /.side-menu__block -->




<div class="search-popup">
   <div class="search-popup__overlay custom-cursor__overlay">
      <div class="cursor"></div>
      <div class="cursor-follower"></div>
   </div><!-- /.search-popup__overlay -->
   <div class="search-popup__inner">
      <form action="#" class="search-popup__form">
         <input type="text" name="search" placeholder="Type here to Search....">
         <button type="submit"><i class="fa fa-search"></i></button>
      </form>
   </div><!-- /.search-popup__inner -->
</div><!-- /.search-popup -->


<script src="<%=basePath %>static/ss/assets/js/jquery.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/bootstrap.bundle.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/owl.carousel.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/waypoints.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/jquery.counterup.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/TweenMax.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/wow.js"></script>
<script src="<%=basePath %>static/ss/assets/js/jquery.magnific-popup.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/jquery.ajaxchimp.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/swiper.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/typed-2.0.11.js"></script>
<script src="<%=basePath %>static/ss/assets/js/vegas.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/jquery.validate.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/bootstrap-select.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/countdown.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/bootstrap-datepicker.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/nouislider.min.js"></script>
<script src="<%=basePath %>static/ss/assets/js/isotope.js"></script>

<!-- template scripts -->
<script src="<%=basePath %>static/ss/assets/js/theme.js"></script>
</body>

</html>