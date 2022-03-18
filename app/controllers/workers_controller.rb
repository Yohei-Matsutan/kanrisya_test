class WorkersController < ApplicationController
	def show
		@worker = current_worker
		@logs = @worker.logs
	end
end
