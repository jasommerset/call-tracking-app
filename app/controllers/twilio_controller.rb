class TwilioController < ApplicationController
  include Webhookable
 
  after_filter :set_header
 
  skip_before_action :verify_authenticity_token
 
  def call_tracking


    @number = Number.where(:tracking_number => params[:To])

    @call.number_id = @number

    @call = Call.where(:CallSid => params[:CallSid]).first_or_create

    @call.CallSid = params[:CallSid]
    @call.To = params[:To]
    @call.From = params[:From]
    @call.CallDuration = params[:CallDuration]


    if @call.save    

      if params[:CallStatus] == 'ringing'

          response = Twilio::TwiML::Response.new do |r|
            r.Dial @number.business_number
          end

          render_twiml response        

      else

        render nothing: true

      end
   
    else

      render status: 500

    end


  end
end
