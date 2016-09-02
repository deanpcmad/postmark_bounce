module PostmarkBounce
  class WebhookController < ActionController::Base

    protect_from_forgery except: :event
    
    def event
      eb = PostmarkBounce::Email.create(
        bounce_id: params["ID"],
        kind: params["Type"],
        name: params["Name"],
        message_id: params["MessageID"],
        description: params["Description"],
        details: params["Details"],
        email: params["Email"],
        bounced_at: params["BouncedAt"],
        subject: params["Subject"]
      )
      if eb
        render body: "success", status: 200
      else
        render body: "error no email", status: 404
      end
    end

  end
end