class PhotosController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
	def index
		@photos = Place.page params[:page]
	end

	def new
		@photos = Photo.new
	end


	def create
		@place = Place.find(params[:place_id])
		redirect_to place_path(@place)
	end

	def show
		@place = Place.find(params[:id])
		@photo = Photo.new
	end
end