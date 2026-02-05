<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login · Ticket Resale</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { min-height:100vh; display:flex; align-items:center; justify-content:center; background:#f8f9fa; }
        .card { max-width:420px; width:100%; }
    </style>
</head>
<body>
<div class="card shadow-sm">
    <div class="card-body">
        <h3 class="card-title mb-3">Welcome</h3>

        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>

        <form method="post" action="${pageContext.request.contextPath}/login" novalidate>
            <!-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> -->
            <div class="mb-3">
                <label class="form-label">Username</label>
                <input name="username" required class="form-control" placeholder="Enter username">
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input name="password" type="password" required class="form-control" placeholder="Password">
            </div>

            <div class="d-grid">
                <button class="btn btn-primary" type="submit">Login</button>
            </div>
        </form>

        <hr class="my-3">
        <div class="text-center text-muted small">Select role after login</div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
