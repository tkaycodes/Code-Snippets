

// jQuery.turbo.onLoad( function() {
//   hljs.initHighlightingOnLoad();

//   });


function load() {
  $('pre > code').each(function(i, block) {
    hljs.highlightBlock(block);
  });
}

$(document).on('page:change', load);