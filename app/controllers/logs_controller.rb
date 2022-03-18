class LogsController < ApplicationController
	def create
		@log = Log.new
		@log.worker_id = current_worker.id
		@log.save
		redirect_to worker_path(current_worker.id)
	end
end
