$.fn.tagItSelectbox = function() {
  this.hide();
  var selectBox = this;
  var availableTags = $('option', this).map(function(i, option){ return $(option).text(); });
  var valueByTag = {};
  $('option', this).each(function(i, option){ valueByTag[$(option).text()] = option.value; });

  var tagit_el = $('<ul/>');
  tagit_el.tagit({
    availableTags: availableTags,
    allowSpaces: true,
    onTagAdded: function(event, tag) {
      var tag_label = tagit_el.tagit('tagLabel', tag);
      $('option[value="'+valueByTag[tag_label]+'"]', selectBox).prop('selected', true);
    },
    onTagRemoved: function(event, tag) {
      var tag_label = tagit_el.tagit('tagLabel', tag);
      $('option[value="'+valueByTag[tag_label]+'"]', selectBox).prop('selected', false);
    }
  }).insertAfter(this);

  $('option:selected', this).each(function(i, option){ tagit_el.tagit("createTag", $(option).text()); });

  return this;
};

$(function () {
  $('.tagged-select-box').tagItSelectbox();
});