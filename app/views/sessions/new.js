$("#modals").append("<%= escape_javascript(render 'session_modal') %>");
$(document).foundation('reveal');
$("#session-button").trigger('click');
$('#session').foundation('reveal', 'open');