<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Admin · Ticket Resale</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional: your custom CSS -->
    <!-- <link href="${pageContext.request.contextPath}/css/app.css" rel="stylesheet"> -->
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">TicketResale (Admin)</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/role">Role</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container py-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2 class="h4">Manage Tickets</h2>
        <div>
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">Add Ticket</button>
        </div>
    </div>

    <div class="card shadow-sm">
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-striped table-hover mb-0">
                    <thead class="table-dark">
                    <tr>
                        <th>Movie</th>
                        <th class="text-end">Price</th>
                        <th class="text-end">Quantity</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${tickets}" var="t">
                        <tr>
                            <td>${t.movieName}</td>
                            <td class="text-end">₹ ${t.price}</td>
                            <td class="text-end">${t.quantity}</td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty tickets}">
                        <tr><td colspan="3" class="text-center py-4">No tickets found. Add one!</td></tr>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="mt-3">
        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/role">Back</a>
    </div>
</div>

<!-- Add Ticket Modal -->
<div class="modal fade" id="addModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <form class="modal-content" method="post" action="${pageContext.request.contextPath}/admin/add" id="addTicketForm">
            <div class="modal-header">
                <h5 class="modal-title">Add Ticket</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- If using Spring Security, include CSRF token:
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        -->
                <div class="mb-3">
                    <label class="form-label">Movie name</label>
                    <input name="movieName" required class="form-control" placeholder="e.g. Avengers">
                </div>
                <div class="mb-3">
                    <label class="form-label">Price (INR)</label>
                    <input name="price" type="number" step="0.01" min="0" required class="form-control" placeholder="250.00">
                </div>
                <div class="mb-3">
                    <label class="form-label">Quantity</label>
                    <input name="quantity" type="number" min="0" required class="form-control" placeholder="10">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-primary">Add Ticket</button>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // reset form when modal hidden
    const addModal = document.getElementById('addModal');
    addModal.addEventListener('hidden.bs.modal', () => document.getElementById('addTicketForm').reset());
</script>
</body>
</html>
