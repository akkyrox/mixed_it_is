class PhysiciansController < ApplicationController

  def index
    @physicians=Physician.all
  end
  
  def new
    @physician=Physician.new
  end

  def create
    @physician=Physician.new()
    @physician.name = params[:physician][:name]
    @physician.speciality = params[:physician][:speciality]
    if @physician.save
    redirect_to @physician
    else
    render 'new'
    end
  end
 
  def see_patients
    @physician = Physician.find(params[:id]) 
    render 'see patients'
  end

  def show
    @physician = Physician.find(params[:id])
  end

end
