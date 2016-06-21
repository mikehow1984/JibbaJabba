require 'date'

module FormatTimeHelper
	def format_time(unixtime, lat, long)
		tz = Timezone.lookup(lat, long)
		Time.at(unixtime).in_time_zone(tz.name).strftime("%B %e, %Y at %I:%M %p")
	end

	def time_since(unixtime)
		time_posted = Time.at(unixtime).to_datetime
		time_ago_in_words(Time.now + unixtime - Time.now.to_i, include_seconds: true)
	end
end
