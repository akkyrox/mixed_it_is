class AssociatesController < ApplicationController

def index

end


def new
@asso = Association.new
end

def create
@asso = Association.new
@asso.physician_id = params[:association][:physician_id]

@asso.save
end

def show

end

end
