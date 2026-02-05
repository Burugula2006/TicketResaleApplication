<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.burugula.ticketresale.model.Order" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container py-4">

    <h2 class="mb-4">👤 My Profile</h2>

    <!-- Earnings -->
    <div class="card mb-4 shadow-sm">
        <div class="card-body">
            <h5>Total Earnings</h5>
            <h3 class="text-success">₹ ${earnings}</h3>
        </div>
    </div>

    <!-- Sold Tickets -->
    <div class="card mb-4 shadow-sm">
        <div class="card-header bg-dark text-white">
            Tickets I Sold
        </div>
        <div class="card-body p-0">
            <table class="table table-striped mb-0">
                <tr>
                    <th>Movie</th>
                    <th>Price</th>
                    <th>Buyer</th>
                </tr>

                <%
                    List<Order> sold = (List<Order>) request.getAttribute("soldOrders");
                    if (sold != null && !sold.isEmpty()) {
                        for (Order o : sold) {
                %>
                <tr>
                    <td><%= o.getTicket().getMovieName() %></td>
                    <td>₹ <%= o.getPrice() %></td>
                    <td><%= o.getBuyer() != null ? o.getBuyer().getUsername() : "N/A" %></td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="3" class="text-center text-muted">No tickets sold yet</td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>

    <!-- Bought Tickets -->
    <div class="card mb-4 shadow-sm">
        <div class="card-header bg-primary text-white">
            Tickets I Bought
        </div>
        <div class="card-body p-0">
            <table class="table table-striped mb-0">
                <tr>
                    <th>Movie</th>
                    <th>Price</th>
                    <th>Date</th>
                </tr>

                <%
                    List<Order> bought = (List<Order>) request.getAttribute("boughtOrders");
                    if (bought != null && !bought.isEmpty()) {
                        for (Order o : bought) {
                %>
                <tr>
                    <td><%= o.getTicket().getMovieName() %></td>
                    <td>₹ <%= o.getPrice() %></td>
                    <td><%= o.getPurchaseDate() %></td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="3" class="text-center text-muted">No tickets bought yet</td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>

    <a href="/role" class="btn btn-secondary">⬅ Back</a>

</div>

</body>
</html>
