$(document).ready(function(){
	$(".post-id").click(function(){
		var postID = $(this).attr('id').substring(5);
		var quotePost = $('#post-content-form').val() + "@" + postID + " **" + $("#post-text-" + postID).text().trim() + "**\n";
		$("#post-content-form").val($("#post-content-form").val() + quotePost);
	});
});
