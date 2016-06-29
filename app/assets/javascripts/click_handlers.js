$(document).ready(function(){
	$(".post-id").click(function(){
		var postID = $(this).attr('id').substring(5);
		var postQuoted = $("#post-text-" + postID).text();
		postQuoted = postQuoted.replace(/\*{2,}(.|\s)+\*{2,}/, "").trim();
		var quotePost = $('#post-content-form').val() + "@" + postID + " **" + postQuoted + "**\n";
		$("#post-content-form").val($("#post-content-form").val() + quotePost);
	});
});
