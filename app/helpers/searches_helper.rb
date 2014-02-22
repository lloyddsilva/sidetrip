module SearchesHelper
	def self.get_duration(from, to)
		@url = 'http://maps.googleapis.com/maps/api/distancematrix/json?origins='+from+'&destinations='+to+'&language=en-EN&sensor=false'
    # links cannot contain spaces. it has to be converted to a plus sign for the distance matrix api to understand
    @uri = URI(@url.gsub!(/\s/,'+'))
    @response = JSON.parse Net::HTTP.get(@uri)
    @duration = @response['rows'][0]['elements'][0]['duration']['value']
    return @duration
	end

	def get_duration(from, to)
		return SearchesHelper.get_duration(from, to)
	end
end
