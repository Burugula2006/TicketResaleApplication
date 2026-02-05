<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Choose Role · Ticket Resale</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<nav class="navbar navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">TicketResale</a>
    </div>
</nav>

<div class="container py-5">
    <div class="row g-4 justify-content-center">
        <div class="col-12 text-center mb-3">
            <h2>Select Role</h2>
        </div>

        <div class="col-md-4">
            <div class="card h-100 text-center p-4">
                <h5>Admin</h5>
                <p class="text-muted">Add or manage tickets</p>
                <a href="${pageContext.request.contextPath}/admin" class="btn btn-outline-primary">Go to Admin</a>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card h-100 text-center p-4">
                <h5>User</h5>
                <p class="text-muted">Browse and buy tickets</p>
                <a href="${pageContext.request.contextPath}/user" class="btn btn-outline-success">Go to User</a>
            </div>
        </div>

        <!-- ✅ ONLY NEW BLOCK ADDED BELOW -->
        <div class="col-md-4">
            <div class="card h-100 text-center p-4 border-dark">
                <h5>My Profile</h5>
                <p class="text-muted">View earnings & history</p>
                <a href="${pageContext.request.contextPath}/profile" class="btn btn-outline-dark">View Profile</a>
            </div>
        </div>
        <!-- ✅ END OF ADDITION -->

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
