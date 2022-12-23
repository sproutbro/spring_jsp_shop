<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${msg}">
    <div class="alert alert-danger" role="alert">
        ${msg}
    </div>
</c:if>
<div>
    <form action="/join" method="post">
        <div class="mb-3">
            <label for="mid" class="form-label">Username</label>
            <input type="text" class="form-control" id="mid" name="mid" required>
            <div class="mb-3">
                <label for="mpw" class="form-label">Password</label>
                <input type="password" class="form-control" id="mpw" name="mpw" required>
            </div>
            <button type="submit" class="btn btn-primary">Join</button>
        </div>
    </form>
</div>