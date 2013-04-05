<% if @picture.new_record? %>
  alert("Upload fehlgeschlagen... :<%= j @picture.errors.full_messages %>");
<% else %>
  $("#pictures").append("<%= j render(@picture) %>");
<% end %>