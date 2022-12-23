<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="card">
    <img src="https://cdn.pixabay.com/photo/2014/07/31/23/28/woman-407168_960_720.jpg" class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title">${product.pname}</h5>
        <p class="card-text">Price : ${product.pprice}</p>
        <p class="card-text">Category : ${product.ptype}</p>
        <p class="card-text">${product.pdetail}</p>
        <p class="card-text">
            <fmt:formatDate value="${product.prdate}" pattern="MM-dd" />
        </p>
        <button type="button" class="btn btn-primary" id="buy-btn">Buy</button>
        <button type="button" class="btn btn-secondary" id="cart-btn">Cart</button>
    </div>
</div>