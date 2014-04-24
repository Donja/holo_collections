<ul>
    <% @products.each do |prod| %>
  <li><%= link_to prod.title, 
    :action => 'show', :id => prod.id  %></li>
  <% end %>
</ul>