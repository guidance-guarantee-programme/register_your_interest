//= require govuk/selection-buttons.js

$(function() {
  var $buttons = $("label input[type='radio'], label input[type='checkbox']");
  GOVUK.selectionButtons($buttons);
});
