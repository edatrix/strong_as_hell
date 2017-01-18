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

    redirect_to inspirations_path, :notice => "You is kind. You is smart. You is important. Your quote will be added shortly!"

  rescue ActiveRecord::RecordInvalid
    render :new
  end

  def show
    @inspiration = Inspiration.find(params[:id])
  end

  def edit
    @inspiration = Inspiration.find(params[:id])
  end

  def update
    @inspiration = Inspiration.find(params[:id])

    @inspiration.attributes = inspiration_params
    @inspiration.save

    redirect_to secret_path, :notice => "Updated inspiration #{params[:id]}"
  end

  def destroy
    @inspiration = Inspiration.find(params[:id])
    @inspiration.destroy

    redirect_to secret_path, :notice => "Deleted inspiration"
  end

  def admin
    @inspirations = Inspiration.all.sort_by { |i| i.name.downcase }
  end

  def approve
    params[:inspiration_approved].each do |id, approved|
      inspiration = Inspiration.find(id)
      inspiration.approved = approved
      inspiration.save
    end

    redirect_to secret_path, :notice => "Updated"
  end

  private

  def inspiration_params
    params.require(:inspiration).permit(:name, :image, :text, :url, :approved)
  end

end