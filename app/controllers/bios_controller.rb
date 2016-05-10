class BiosController < ApplicationController
	before_action :find_bio, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@bio= Bio.friendly.find(1)
		
	end

	def new
		@bio = Bio.new
	end

	def create
		@bio= Bio.new bio_params

		if @bio.save
			redirect_to @bio, notice: "Hello Jan! Your article was successfully saved"
		else
			render 'new', notice: 'Oh no! I was unable to save yoru bio'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @bio.update bio_params
			redirect_to @bio, notice: "Huzzah! Your article was saved!"
		else
			render 'edit'
		end
	end

	def destroy
		@bio.destroy
		redirect_to bios_path
	end

	private

	def bio_params
		params.require(:bio).permit(:title, :content, :slug, :image)
	end

	def find_bio
		@bio= Bio.friendly.find(params[:id])
	end

end
