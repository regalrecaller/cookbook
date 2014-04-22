class MyTestController < ApplicationController
	def index
		render_text "Hello World"
	end
	
	def dilbert
		render_test "Well that was easy"
	end
end
