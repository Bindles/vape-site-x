<!-- index.html.erb -->
<div class="container mx-auto px-4">
  <div class="flowbite">
    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
      <div>
        <% @products.each do |product| %>
          <%= render partial: 'product_card', locals: { product: product } %>
        <% end %>
      </div>
      <div>
        <% @products.each do |product| %>
          <%= render partial: 'product_cards', locals: { product: product } %>
        <% end %>
      </div>
    </div>
  </div>
</div>
