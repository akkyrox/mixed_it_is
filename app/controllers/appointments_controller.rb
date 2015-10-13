class AppointmentsController < ApplicationController
  respond_to :xml, :json, :html
  def index
    debugger
    @appointments = Appointment.all
    respond_to do |format|
      format.xml {  render :layout => false, :template => "appointments/index.xml" }

    end
  end

  def export_ajax
    email = "akshay@kreatio.com"
    filename = "check101"
    render :json => {"email_status" => email, "file_name" => filename }.to_json
  end

  def to_check
    email = "akshay@kreatio.com"
    filename = "check101"
    render :json => {"email_status" => email, "file_name" => filename }.to_json

  end

  def new_doc
    doc =  Docx::Document.new('you.docx')
    doc.bookmarks().merge!({"aksh" => "check"})
  end
  # @appointments=Appointment.all.paginate(:page => params[:page], :per_page => 4)
  #@appointments=Appointment.last(10).paginate(:page => params[:page], :per_page => 2)
end

# def export_to_xml
#   @appointments = Appointment.all
#   # byebug
#   # send_file @appointments, filename: 'abc.xml'
# end
# end
