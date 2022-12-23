<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row">
<c:forEach var="product" items="${productList}">
    <div class="col-4">
        <div class="card">
            <img src="${product.pimg}" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">${product.pname}</h5>
                <p class="card-text">Price : ${product.pprice}</p>
                <p>
                    <fmt:formatDate value="${product.prdate}" pattern="MM-dd" />
                </p>
                <a href="/detail/${product.pno}" class="btn btn-primary">Detail</a>
            </div>
        </div>
    </div>
</c:forEach>
</div>