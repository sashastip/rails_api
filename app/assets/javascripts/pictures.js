$(document).ready(function() {
  Dropzone.autoDiscover = false;

  $("#new_picture").dropzone({
  	maxFilesize: 1,
  	paramName: "upload[images]",
  	addRemoveLinks: true
  	});
});