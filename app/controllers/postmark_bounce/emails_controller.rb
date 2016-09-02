module PostmarkBounce
  class EmailsController < ActionController::Base

    def hide
      @email = PostmarkBounce::Email.find_by(message_id: params[:message_id])    
      @email.update_attributes(hidden: true)
      redirect_to :back
    end

  end
end