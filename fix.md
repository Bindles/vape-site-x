<!-- I THINK THIS IS ALL YOU NEED
  <% @posts.first.attributes.keys.each do |attr_name| %>
    <% unless @posts.all? { |c| c[attr_name].blank? } %>
      <%= link_to attr_name.capitalize, posts_path(sort_by: 'content', order: (params[:order] == 'asc' && params[:sort_by] == 'content') ? 'desc' : 'asc'), class: 'text-blue-500 hover:text-blue-700' %>
    <% end %>
  <% end %>
<% end %> 
-->


<!--

<% Product.all.pluck(:category).uniq.each do |category| %>
  <%= link_to category, products_path(sort_by: 'category', order: 'asc', category: category), class: 'text-blue-500 hover:text-blue-700' %>
<% end %>

-->