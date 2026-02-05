<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.burugula.ticketresale.model.Ticket" %>
<!doctype html>
<html>
<head>
    <title>User · Ticket Resale</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container py-4">
    <h2 class="mb-3">Available Tickets</h2>

    <table class="table table-bordered table-hover">
        <thead class="table-dark">
        <tr>
            <th>Movie</th>
            <th>Price</th>
            <th>Available</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>

        <%
            List<Ticket> tickets = (List<Ticket>) request.getAttribute("tickets");
            if (tickets != null && !tickets.isEmpty()) {
                for (Ticket t : tickets) {
        %>
        <tr>
            <td><%= t.getMovieName() %></td>
            <td>₹ <%= t.getPrice() %></td>
            <td><%= t.getQuantity() %></td>
            <td>
                <% if (t.getQuantity() > 0) { %>
                <form method="post" action="/user/buy">
                    <input type="hidden" name="ticketId" value="<%= t.getId() %>">
                    <button class="btn btn-sm btn-primary">Buy</button>
                </form>
                <% } else { %>
                <span class="text-danger">Sold Out</span>
                <% } %>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="4" class="text-center">No tickets available</td>
        </tr>
        <% } %>

        </tbody>
    </table>

    <a href="/role" class="btn btn-secondary">Back</a>
</div>

</body>
</html>
