$("#modals").append("<%= escape_javascript(render 'picture_modal') %>");
$(document).foundation();
$('<%= "#button" + @picture.id.to_s %>').trigger('click');
$('<%= "#picture" + @picture.id.to_s %>').foundation('reveal', 'open');