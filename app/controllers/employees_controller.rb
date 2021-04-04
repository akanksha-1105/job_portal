class EmployeesController < ApplicationController
  def index
    @jobposts = Jobpost.all
  end
end
