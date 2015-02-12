//= require jquery/dist/jquery.min.js
//= require govuk/selection-buttons.js

$(function() {
  var $buttons = $("label input[type='radio'], label input[type='checkbox']");
  var selectionButtons = new GOVUK.SelectionButtons($buttons);
});
