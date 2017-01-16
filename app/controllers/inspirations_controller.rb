class InspirationsController < ApplicationController

  def index
    @inspiration = Inspiration.where(:approved => true).sample
  end

  def new
    @inspiration = Inspiration.new
  end

  def create
    @inspiration = Inspiration.new(inspiration_params)
    @inspiration.save!
    redirect_to inspirations_path

  rescue ActiveRecord::RecordInvalid
    render :new
  end

  def show
    @inspiration = Inspiration.find(params[:id])
  end

  private

  def inspiration_params
    params.require(:inspiration).permit(:name, :image, :text, :url, :approved)
  end

end