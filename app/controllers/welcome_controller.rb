class WelcomeController < ApplicationController

def index

  logger.info p params
  Patient.delete_file
end

end
