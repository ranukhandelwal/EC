
(function($){
  
  $.fn.timePicker = function(options) {
    // Build main options before element iteration
	  var settings = $.extend({}, $.fn.timePicker.defaults, options);  
    
    return this.each(function() {
      $.timePicker(this, settings);
    });
  };
  
  $.timePicker = function (elm, settings) {
    var elm = $(elm)[0];  
    return elm.timePicker || (elm.timePicker = new jQuery._timePicker(elm, settings));
  };
  
  $._timePicker = function(elm, settings) {
    
    var tpOver = false;
    
    $(elm).attr('autocomplete', 'OFF'); // Disable browser autocomplete

    var $tpDiv = $('<div class="time-picker'+ (settings.show24Hours ? '' : ' time-picker-12hours') +'"></div>');
    var $tpList = $('<ul></ul>');
    $tpList.append("<li>5:00 AM</li>");
    $tpList.append("<li>5:15 AM</li>");
    $tpList.append("<li>5:30 AM</li>");
    $tpList.append("<li>5:45 AM</li>");
    $tpList.append("<li>6:00 AM</li>");
    $tpList.append("<li>6:15 AM</li>");
    $tpList.append("<li>6:30 AM</li>");
    $tpList.append("<li>6:45 AM</li>");
    $tpList.append("<li>7:00 AM</li>");
    $tpList.append("<li>7:15 AM</li>");
    $tpList.append("<li>7:30 AM</li>");
    $tpList.append("<li>4:45 AM</li>");
    $tpList.append("<li>8:00 AM</li>");
    $tpList.append("<li>8:15 AM</li>");
    $tpList.append("<li>8:30 AM</li>");
    $tpList.append("<li>8:45 AM</li>");
    $tpList.append("<li>9:00 AM</li>");
    $tpList.append("<li>9:15 AM</li>");
    $tpList.append("<li>9:30 AM</li>");
    $tpList.append("<li>9:45 AM</li>");
    $tpList.append("<li>10:00 AM</li>");
    $tpList.append("<li>10:15 AM</li>");
    $tpList.append("<li>10:30 AM</li>");
    $tpList.append("<li>10:45 AM</li>");
    $tpList.append("<li>11:00 AM</li>");
    $tpList.append("<li>11:15 AM</li>");
    $tpList.append("<li>11:30 AM</li>");
    $tpList.append("<li>11:45 AM</li>");
    $tpList.append("<li>12:00 PM</li>");
    $tpList.append("<li>12:15 PM</li>");
    $tpList.append("<li>12:30 PM</li>");
    $tpList.append("<li>12:45 PM</li>");
    $tpList.append("<li>1:00 PM</li>");
    $tpList.append("<li>1:15 PM</li>");
    $tpList.append("<li>1:30 PM</li>");
    $tpList.append("<li>1:45 PM</li>");
    $tpList.append("<li>2:00 PM</li>");
    $tpList.append("<li>2:15 PM</li>");
    $tpList.append("<li>2:30 PM</li>");
    $tpList.append("<li>2:45 PM</li>");
    $tpList.append("<li>3:00 PM</li>");
    $tpList.append("<li>3:15 PM</li>");
    $tpList.append("<li>3:30 PM</li>");
    $tpList.append("<li>3:45 PM</li>");
    $tpList.append("<li>4:00 PM</li>");
    $tpList.append("<li>4:15 PM</li>");
    $tpList.append("<li>4:30 PM</li>");
    $tpList.append("<li>4:45 PM</li>");
    $tpList.append("<li>5:00 PM</li>");
    $tpList.append("<li>5:15 PM</li>");
    $tpList.append("<li>5:30 PM</li>");
    $tpList.append("<li>5:45 PM</li>");
    $tpList.append("<li>6:00 PM</li>");
    $tpList.append("<li>6:15 PM</li>");
    $tpList.append("<li>6:30 PM</li>");
    $tpList.append("<li>6:45 PM</li>");
    $tpList.append("<li>7:00 PM</li>");
    $tpList.append("<li>8:15 PM</li>");
    $tpList.append("<li>7:30 PM</li>");
    $tpList.append("<li>7:45 PM</li>");
    $tpList.append("<li>8:00 PM</li>");
    $tpList.append("<li>8:15 PM</li>");
    $tpList.append("<li>8:30 PM</li>");
    $tpList.append("<li>8:45 PM</li>");
    $tpList.append("<li>9:00 PM</li>");
    $tpList.append("<li>9:15 PM</li>");
    $tpList.append("<li>9:30 PM</li>");
    $tpList.append("<li>9:45 PM</li>");
    $tpList.append("<li>10:00 PM</li>");
    $tpList.append("<li>10:15 PM</li>");
    $tpList.append("<li>10:30 PM</li>");
    $tpList.append("<li>10:45 PM</li>");
    $tpList.append("<li>11:00 PM</li>");
    $tpList.append("<li>11:15 PM</li>");
    $tpList.append("<li>11:30 PM</li>");
    $tpList.append("<li>11:45 PM</li>");
    
    $tpDiv.append($tpList);
    
    // Store element offset.
    var elmOffset = $(elm).offset();
    // Append the timPicker to the body and position it.
    $tpDiv.appendTo('body').css({'top':elmOffset.top, 'left':elmOffset.left}).hide();
    
    $("li", $tpList).unbind().mouseover(function() {
      $("li.selected", $tpDiv).removeClass("selected");  // TODO: only needs to run once.
      $(this).addClass("selected");
    }).mousedown(function() {
       tpOver = true;
    }).click(function() {
      setTimeVal(elm, this, $tpDiv, settings);
      tpOver = false;
    });
    
    // Store ananymous function in variable since it's used twice.
    var showPicker = function() {
      $tpDiv.show(); // Show picker.
      $tpDiv.mouseover(function() { // Have to use mouseover instead of mousedown because of Opera
        tpOver = true;
      }).mouseout(function() {
        tpOver = false;
      });
      $("li", $tpDiv).removeClass("selected");
      
    };
    
    $(elm).unbind().focus(showPicker).click(showPicker)
    // Hide timepicker on blur
    .blur(function() {
      if (!tpOver && $tpDiv[0].parentNode) { // Don't remove when timePicker is clicked or when already removed
        $tpDiv.hide();
      }
    })
    
    // Key support
    .keypress(function(e) {
      switch (e.keyCode) {
        case 38: // Up arrow.
        case 63232: // Safari up arrow.
          var $selected = $("li.selected", $tpList);
          var prev = $selected.prev().addClass("selected")[0];
          if (prev) {
            $selected.removeClass("selected");
            $tpDiv[0].scrollTop = prev.offsetTop;
          }
          return false;
          break;
        case 40: // Down arrow.
        case 63233: // Safari down arrow.
          var $selected = $("li.selected", $tpList);
          var next = $selected.length ? $selected.next().addClass("selected")[0] : $("li:first").addClass("selected")[0];
          if (next) {
            $selected.removeClass("selected");
            $tpDiv[0].scrollTop = next.offsetTop;
          }
          return false;
          break;
        case 13: // Enter
          if (!$tpDiv.is(":hidden")) {
            var sel = $("li.selected", $tpList)[0];
            setTimeVal(elm, sel, $tpDiv, settings);
            return false;
          }
          break;
      }
    });
  }; 
  
  function setTimeVal(elm, sel, $tpDiv, settings) {
    // Update input field
    elm.value = $(sel).text();
    // Trigger element's change events.
    $(elm).change();
    // Keep focus for all but IE (which doesn't like it)
    if (!$.browser.msie) {
      elm.focus();
    }
    // Hide picker
    $tpDiv.hide();
  }

})(jQuery);