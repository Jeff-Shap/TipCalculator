#class.rb

class Bill

	attr_reader :bill_before_tip, :tip_percent
	attr_accessor :final_bill

	def initialize (bill, tip, num_ppl)
		@initial_bill = bill
		@bill_before_tip = bill * 100
		@tip_percent = tip.to_f
		@num_of_people = num_ppl
		@final_bill = []
	end

	def tip_in_cents
		(@tip_percent/100.0 * @bill_before_tip.to_f).round(0)
	end

	def total_bill
		tip_in_cents + @bill_before_tip
	end

	def bill_to_dollars
		@final_bill = (total_bill / 100.0)
	end

	# def bill_per_person
	# 	if bill_split % @num_of_people == 0
	# 		"Your bill of #{@initial_bill} with a #{tip_percent}% tip divided by #{@num_of_people} people comes to a total of #{@final_bill} (per person)."
	# 	else
	# 		"Your bill of #{@initial_bill} with a #{tip_percent}% tip divided by #{@num_of_people} cannont be evenly split. Each person will pay #{@final_bill} and one person will have to pay an extra penny."
	# 	end
	# end

	def to_s
		bill_to_dollars
		# "@initial_bill = #{@initial_bill}, @bill_before_tip = #{@bill_before_tip}, @tip_percent = #{tip_percent}, @num_of_people = #{@num_of_people}, @final = #{@final_bill}"
		"Your bill of #{@initial_bill} with a #{tip_percent}% tip totals $#{@final_bill}"
	end

end

#Bill.new(100,15,1).to_s