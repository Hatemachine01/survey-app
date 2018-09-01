 class ErrorsController < ApplicationController
   def error_404
       render plain: '404 Not Found', status: :not_found
  end
end

