<div class="row">
  <img src="/public/logo.png" style="width: 200px;"/>
  <h5 style="margin-top: 10px;" class="text-muted">
    Daily Fantacy Sports For Cash
  </h5>
</div>
<ul class="nav nav-tabs">
  <li class="nav-item ml-auto">
    <a class="nav-link
        <% if (request.getRequestURI().equals("/lobby.jsp")) { %><%= "active" %><% } %>
    " href="/lobby.jsp">Lobby</a>
  </li>
  <li class="nav-item">
    <a class="nav-link
        <% if (request.getRequestURI().equals("/my-lineups.jsp")) { %><%= "active" %><% } %>
    " href="/my-lineups.jsp">My Lineups</a>
  </li>
  <li class="nav-item">
    <a class="nav-link
        <% if (request.getRequestURI().equals("/my-contests.jsp")) { %><%= "active" %><% } %>
    " href="/my-contests.jsp">My Contests</a>
  </li>
  <li class="nav-item">
    <a class="nav-link
        <% if (request.getRequestURI().equals("/my-account.jsp")) { %><%= "active" %><% } %>
    " href="/my-account.jsp">My Account</a>
  </li>
  <li class="nav-item">
    <a class="nav-link
        <% if (request.getRequestURI().equals("/promotions.jsp")) { %><%= "active" %><% } %>
    " href="/promotions.jsp">Promotions</a>
  </li>
</ul>
