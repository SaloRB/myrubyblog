class MessagesController < InheritedResources::Base
	def create
		@message = Message.new(message_params)

		if @message.save
			;flash[:notice] = "Message was successfully sent."
			redirect_to contact_path
		else
			flash[:notice] = "Error creating message: #{@message.errors}"
			redirect_to contact_path
		end
	end

  private

    def message_params
      params.require(:message).permit(:name, :email, :body)
    end
end

