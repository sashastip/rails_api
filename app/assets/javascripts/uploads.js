$(document).ready(function(){
  Dropzone.autoDiscover = false;
  $("#new_upload").dropzone({
    maxFilesize: 1,
    paramName: "upload[image]",
    addRemoveLinks: true
  }); 
});