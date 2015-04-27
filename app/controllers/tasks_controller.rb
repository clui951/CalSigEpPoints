class TasksController < ApplicationController
	def index
		@tasks = Task.where( user: current_user)
	end

	def new
		@task = Task.new
		tasks = {"Gym for an hour" => 15, "Do the dishes" => 16}
		@all_tasks = tasks.keys
	end

	def create
		@task = Task.create(task_params)
		@task.user = current_user
		if @task.save
			redirect_to @task
		else
			render "new"
		end
	end

	def show
		@task = Task.find(params[:id])
	end

	private

	def task_params
		params.require(:task).permit(:title, :comment, :value)
	end
end