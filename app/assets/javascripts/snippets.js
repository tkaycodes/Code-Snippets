

// jQuery.turbo.onLoad( function() {
//   hljs.initHighlightingOnLoad();

//   });


function load() {
  $('pre > code').each(function(i, block) {
    hljs.highlightBlock(block);
  });

  $('#snippet_language_id').change(function(){
    var selected = $("#snippet_language_id :selected").html();
    // how to use this
    console.log(selected);
    if (selected == "Ruby"){
      // console.log("you selected Ruby");
      $('#snippet_category').html("<option val=\"Rails\">Rails</option><option val=\"General\">General</option>");
    }
    else{
      if (selected == "Javascript"){
        $('#snippet_category').html("<option val=\"jQuery\">jQuery</option><option val=\"General\">General</option>");
      }
      // console.log("you selected somehhing else");
    }
    // alert('changed');
    // $(this);
    // console.log($("snippet_language_id :selected").html());
  });

  // $('#snippet_category').change(function(){
    // alert('changed');
  // });

}

$(document).on('page:change', load);
