<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/config/validate/css/validationEngine.jquery.css">
<script src="${pageContext.request.contextPath}/config/validate/js/jquery.validationEngine.min.js"></script>
<script src="${pageContext.request.contextPath}/config/validate/js/jquery.validationEngine-zh_CN.js"></script>
<script>
    $(function () {
        $('#form1').validationEngine();
        $('#form2').validationEngine();
        $('#form3').validationEngine();
    })
</script>
