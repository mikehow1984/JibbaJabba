module QuotePostHelper
	def post_linkifier(text)
		text.gsub!(/(@(\d+|TopicStarter))/, "<a href='#\\1'>\\1</a>")
		text.gsub!(/<a href='#@(\d+|TopicStarter)'>@(\d+|TopicStarter)<\/a>/, "<a href='#\\1'>@\\1</a>")
		text.gsub!(/\*\*(.+)\*\*/, "<div class='quote'>\\1</div>")
		comment_arr = text.split(/(<a href='#\d+'>@\d+<\/a>|<a href='#TopicStarter'>@TopicStarter<\/a>|<div class='quote'>|<\/div>)\s*/)
		comment_arr
	end

	def text_quotifier(text)

	end
end
