module FormatTimeHelper
	def format_time(unixtime, lat, long)
		tz = Timezone.lookup(lat, long)
		Time.at(unixtime).in_time_zone(tz.name).strftime("%B %e, %Y at %I:%M %p")
	end
end
