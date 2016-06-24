module GeoDistanceHelper
	def geo_distance(lat1, lon1, lat2, lon2, unit)
		def deg_to_rads(degree)
			degree * Math::PI/180
		end
		if unit != 'km' && unit != 'mi'
			return nil
		else
			dlon = deg_to_rads(lon2 - lon1)
			dlat = deg_to_rads(lat2 - lat1)
			@EARTH_RADIUS_MI = 3959
			@EARTH_RADIUS_KM = 6371

			a = (Math.sin(dlat/2))**2 + (Math.cos(deg_to_rads(lat1)) * Math.cos(deg_to_rads(lat2)) * (Math.sin(dlon/2))**2)
			c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
			if unit == 'km'
				(c * @EARTH_RADIUS_KM).round(1).to_s + " km"
			elsif unit == 'mi'
				(c * @EARTH_RADIUS_MI).round(1).to_s + " mi"
			end
		end
	end
end
