<div id="<%= dom_id product %>">
  <!-- Other product information here -->
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


<% if !@products%> <!-- if on index.html -->
    <p>
      <strong>Variants:</strong>
      <br>
      <% if product.variants %>
        <ul class="variant-links">
          <% product.variants.each do |variant| %>
            <li>
              <a href="#" class="variant-link" data-id="<%= variant['name'] %>" data-title="<%= variant['title'] %>" data-price="<%= variant['price'] %>" data-image="<%= variant['image'] %>">
                <%= variant['title'] %>
              </a>
            </li>
          <% end %>
        </ul>
      <% else %>
        <%= products.variants.map{|variant| variant['name']} %> <!-- if not on index.html-->
      <% end %>
    </p>

    <!-- Variant details container -->
    <div id="variant-details-container">
      <!-- Variant details will be displayed here -->
    </div>
  </div>

  <script>
    document.addEventListener('DOMContentLoaded', function () {
      const variantLinks = document.querySelectorAll('.variant-link');
      const variantDetailsContainer = document.getElementById('variant-details-container');

      variantLinks.forEach(link => {
        link.addEventListener('click', function (event) {
          event.preventDefault();
          const variantId = this.dataset.id;
          const variantTitle = this.dataset.title;
          const variantPrice = this.dataset.price;
          const variantImage = this.dataset.image;

          // Display variant details
          variantDetailsContainer.innerHTML = `
            <h2>${variantTitle}</h2>
            <ul>
              <li>Name: ${variantTitle}</li>
              <li>Price: ${variantPrice}</li>
              <li>Image: <img src="${variantImage}" alt="${variantTitle}"></li>
            </ul>
          `;
        });
      });
    });
  </script>
<% end %>

