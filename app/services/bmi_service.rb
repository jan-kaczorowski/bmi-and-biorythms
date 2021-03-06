
class BmiService

	def calculate(args)
		bmi = (args[:weight] / args[:height]**2).round(4)

		{ bmi: bmi, diagnose: diagnose(bmi) }
	end

	private

	def diagnose(bmi)
		if bmi <= 16; "underweight"
		elsif bmi >= 25; "overweight"
		elsif bmi >= 30; "obesity" 
		else; "normal weight"
		end
	end

end


