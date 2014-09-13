<div class="headerBar">
  <% if logged_in? %>
  
  <div class="login">
  
  Welcome, <%= current_user.instructor.proper_name %>!&nbsp;&nbsp;&nbsp;<%= link_to 'Logout', logout_path %>&nbsp;&nbsp;&nbsp;
  </div>
  <% else %>
  <div class="login">
  <%= link_to 'Login', login_path %>&nbsp;&nbsp;&nbsp;
  </div>  
  <% end %>
</div>