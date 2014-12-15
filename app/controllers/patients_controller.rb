class PatientsController < ApplicationController

  def index
    @patients=Patient.all
  end
  
  def new
    @patient=Patient.new
  end

  def create
     @patient=Patient.new(patient_params)
#    @patient.name = params[:patient][:name]
#    @patient.problem =params[:patient][:problem]
     @patient.select_physician =params[:physician][:physician_id]
#    if @patient.save

#    redirect_to @patient


respond_to do |format|
    if @patient.save
      @appointment=Appointment.new()
      @appointment.patient_id= @patient.id
      @appointment.physician_id= params[:physician][:physician_id]
      @appointment.appointment_date
      @appointment.save
      UserMailer.delay.registration_confirmation(@patient)
      format.html { redirect_to(@patient, :notice => 'User was successfully created.') }
      format.xml  { render :xml => @patient, :status => :created, :location => @patient }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @patient.errors, :status => :unprocessable_entity }
    end
  end


#    else
#    render 'new'
#    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def patient_details
    @patient = Patient.find(params[:id])
    render 'patient_details'
  end

private

  def patient_params
    params.require(:patient).permit(:name, :email_id, :problem)
  end
  
end




