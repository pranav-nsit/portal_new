class StudentsController < ApplicationController
	def new
		@student = Student.new
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
  		@student = Student.find(params[:id])
  		if @student.update(student_params)
  			redirect_to @student
  		else
  			render 'edit'
  		end
	end

	def create
		@student = Student.new(student_params)

		if @student.save
    		redirect_to @student
  		else
    		render 'new'
  		end
	end

	def index
		@students = Student.all
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy

		redirect_to students_path
	end
	
	def show
  		@student = Student.find(params[:id])
	end
	private
  		def student_params
    		params.require(:student).permit(:name, :rollNo,:gender,:category,:branch,:dob,:email,:contactNo,:altContactNo,:bePercent,:bePercentDrop,:sem1Percent,:sem2Percent,:sem3Percent,:sem4Percent,:sem5Percent,:sem6Percent,:xPercent,:xYear,:xiiPercent,:xiiYear,:xBoard,:xiiBoard,:fathersName,:fathersOccupation,:fatherContact,:mothersName,:mothersOccupation,:motherContact,:backs,:currentAddress,:permanentAddress) if params[:student]
    	end
end
