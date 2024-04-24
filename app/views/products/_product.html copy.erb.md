<div id="<%= dom_id product %>">
  <p>
    <strong>Name:</strong>
    <%= product.name %>
  </p>

  <p>
    <strong>Handle:</strong>
    <%= product.handle %>
  </p>

  <p>
    <strong>Price:</strong>
    <%= product.price %>
  </p>

  <p>
    <strong>Brand:</strong>
    <%= product.brand %>
  </p>

  <p>
    <strong>Category:</strong>
    <%= product.category %>
  </p>

  <p>
    <strong>Desc:</strong>
    <%= product.desc %>
  </p>

  <p>
    <strong>Image:</strong>
    <%= product.image %>
  </p>

  <p>
    <strong>Options:</strong>
    <%= product.options %>
  </p>

  <p>
    <strong>Variants:</strong>
    <%= product.variants %> <br><br>
    <% if product.variants%>
      <%= product.variants.map{|x| x['name']} %>

      <% product.variants.each do |variant| %>
        <div>
          <h2><%= variant['color'] %></h2>
          <ul>
            <li>Name: <%= variant['title'] %></li>
            <li>Price: <%= variant['price'] %></li>
            <li>Image: <img src="<%= variant['image'] %>" alt="<%= variant['title'] %>"></li>
          </ul>
        </div>
      <% end %>
      
    <% end %>
  </p>

</div>
