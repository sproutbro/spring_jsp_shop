<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<ul class="nav justify-content-center">
    <li class="nav-item">
        <a class="nav-link" href="/">Home</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/outer">Outer</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/top">Top</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/bottom">Bottom</a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">User</a>
        <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/login">Login</a></li>
            <li><a class="dropdown-item" href="/join">Join</a></li>
            <li><hr class="dropdown-divider"></li>
            <li>
                <form action="/cart" id="cart">
                    <button class="dropdown-item">Cart</button>
                </form>
            </li>
            <li><a class="dropdown-item" href="/notice">공지사항</a></li>
        </ul>
    </li>
</ul>

<script>
    $("#cart").on("submit", function (e) {
        let item = localStorage.getItem("cart");
        let input = $('<input type="hidden" name="cart" value="' + item + '"/>');
        $("#cart").append(input);
    });
</script>