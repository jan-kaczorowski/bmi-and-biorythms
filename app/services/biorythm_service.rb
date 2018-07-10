

class BiorythmService

	def initialize(look_ahead_days = 30)
		@look_ahead_days = look_ahead_days
	end

	class Biorythm
		attr_reader :physical, :emotional, :intellectual, :days_since_birthday

		def initialize(options = {})
			@physical, @emotional, @intellectual = options[:physical], options[:emotional], options[:intellectual]
			@days_since_birthday = options[:days_since_birthday]
		end
	end

	def calculate(birth_date)
		days_since = Date.today.mjd - birth_date.mjd
		puts "Today #{Date.today.to_s}"
		puts "date diff in days #{days_since}"

		Biorythm.new(
			physical: calc_biorythm_components(days_since, PHYSICAL_PERIOD),
			emotional: calc_biorythm_components(days_since, EMOTIONAL_PERIOD),
			intellectual: calc_biorythm_components(days_since, INTELLECTUAL_PERIOD),
			days_since_birthday: days_since
		)
	end

	private 

	PHYSICAL_PERIOD = 23
	EMOTIONAL_PERIOD = 28
	INTELLECTUAL_PERIOD = 33

	def calc_biorythm_components(days_since, period)
		current_rating = calc_rating(days_since, period)
		future_rating =  calc_rating(days_since+1, period)

		OpenStruct.new(
			rating:  current_rating,
			is_raising: future_rating > current_rating,
			tendency: (future_rating > current_rating) ? "increasing" : "decreasing",
			condition: condition(current_rating),
			forecast: forecast(days_since, period),
			absolute_percent: ((current_rating+1)*100/2).round(4)
		)
	end

	def calc_rating(days, period)
		Math.sin((2 * Math::PI * days)/period).round(4)
	end

	def condition(rating)
		if rating >= 0.5; "good"
		elsif rating <= -0.5; "bad"
		else "average" 
		end
	end

	def forecast(days_since, period)
		results = []
		@look_ahead_days.times do |day_no|
			results.push( calc_rating(days_since+day_no+1, period) )
		end
		results
	end
end