// window.onload = function(){ 
var ready;
ready = function() {

function addClass(element, classname) {
  if (!element.className.includes(classname)) {
    element.classList.add(classname);
  }
}

function removeClass(element, classname) {
  if (element.className.includes(classname)) {
    element.classList.remove(classname);
  }
}

function enableCheckbox(element) {
  element.disabled = false;
}

function disableCheckbox(element) {
  element.disabled = true;
}

function yesClick() {
  var labels = document.getElementsByClassName("form-check-label");
  var checkboxes = document.getElementsByClassName("day-checkbox");
  document.getElementById("yes").onclick = function () {
    for (var i = 0; i < labels.length; i++) {
      removeClass(labels[i], "disabled");
    }
    for (var i = 0; i < checkboxes.length; i++) {
      enableCheckbox(checkboxes[i]);
    }
  };
}

function noClick() {
  var labels = document.getElementsByClassName("form-check-label");
  var checkboxes = document.getElementsByClassName("day-checkbox");
  document.getElementById("no").onclick = function () {
    for (var i = 0; i < labels.length; i++) {
      addClass(labels[i], "disabled");
    }
    for (var i = 0; i < checkboxes.length; i++) {
      checkboxes[i].checked = false;
      disableCheckbox(checkboxes[i]);
    }
  };
}

// DOCUMENT LOAD PUT ALL FUNCTIONS IN HERE
  noClick();
  yesClick();

};

$(document).ready(ready);
$(document).on('page:load', ready);