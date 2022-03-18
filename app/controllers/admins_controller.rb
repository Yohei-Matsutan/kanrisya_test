class AdminsController < ApplicationController
  def show
    @workers = Worker.all
  end
end
