class CompaniesController < ApplicationController
	def new
		@company = Company.new
	end

	def edit

		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])
		
  		if @company.update(company_params)
  			redirect_to @company
  		else
  			render 'edit'
  		end
	end

	def create
		
		@company = Company.new(company_params)
		
		if @company.save
    		redirect_to @company
  		else
    		render 'new'
  		end
	end

	def index
		@companies = Company.all
	end
	def destroy
		@company = Company.find(params[:id])
		@company.destroy

		redirect_to companies_path
	end
	
	def show
  		@company = Company.find(params[:id])
  		    #@branches = @company.find(params[:id][:allowedbranches[1]])
	end
	

	private
  		def company_params
  			
    		params.require(:company).permit(:name, :beCutoff,:grade,:xiiCutoff,:xCutoff,:backsAllowed,:details,:package,:deadline,:branchesAllowed,:coe,:ece,:ice,:it,:mpae,:bt,:is,:sp,:pc) if params[:company]
    	end
end
