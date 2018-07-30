
class BmiStaticService

	def self.calculate(args)
		bmi = (args[:weight] / args[:height]**2).round(4)
		{
			bmi: bmi,
			diagnose: diagnose(bmi)
		}
	end

	private

	def self.diagnose(bmi_arg)
		if bmi_arg <= 16; "underweight"
		elsif bmi_arg >= 25; "overweight"
		elsif bmi_arg >= 30; "obesity" 
		else; "normal weight"
		end
	end

end