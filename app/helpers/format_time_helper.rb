require 'date'

module FormatTimeHelper
	def format_time(unixtime, lat, long)
		if unixtime != nil && lat != nil && long != nil		
			tz = Timezone.lookup(lat, long)
			Time.at(unixtime).in_time_zone(tz.name).strftime("%B %e, %Y at %I:%M %p")
		else
			"Unable to find time or timezone."
		end
	end

	def time_since(unixtime)
		time_ago_in_words(Time.now + unixtime - Time.now.to_i, include_seconds: true)
	end
end
