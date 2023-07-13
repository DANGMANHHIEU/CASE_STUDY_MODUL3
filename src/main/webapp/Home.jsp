<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Trưa nay ăn gì ???</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>


</head>
<body>


<jsp:include page="Menu.jsp"></jsp:include>

<%--<div class="container ">--%>
<%--    <div class="row">--%>
<%--        <div class="col">--%>
<%--            <nav aria-label="breadcrumb">--%>
<%--                <ol class="breadcrumb">--%>
<%--                    <li class="breadcrumb-item"><a href="home">Home</a></li>--%>
<%--                    <li class="breadcrumb-item"><a href="#">Category</a></li>--%>
<%--                    <li class="breadcrumb-item active" aria-current="#">Sub-category</li>--%>
<%--                </ol>--%>
<%--            </nav>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<div class="container">

    <div class="row">
        <%--        phần bên trái web--%>
        <jsp:include page="Left.jsp"></jsp:include>
        <div class="col-sm-9">
            <div class="row">
                <c:forEach items="${ListProduct}" var="o">
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="card" style="height: 450px;overflow: hidden">
                            <img class="card-img-top" style="height: 100%;object-fit: cover" src="${o.image}"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title show_txt"><a href="detail?ProducID=${o.getId()}"
                                                                   title="View Product">${o.name}</a></h4>
                                <p class="card-text show_txt">${o.title}</p>
                                <div class="row">
                                    <div class="col">
                                        <p class="btn btn-danger btn-block">${o.price} VND</p>
                                    </div>
                                    <div class="col">
                                        <a href="add-to-cart?id=${o.id}" class="btn btn-success btn-block">Thêm vào giỏ
                                            hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>