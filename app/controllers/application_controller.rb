class ApplicationController < ActionController::Base

  private
    def after_sign_in_path_for(resource)
      if current_user.employer_role?
        employers_path
      elsif current_user.user_role?
        employees_path
      else
        root_path
      end
    end
end


