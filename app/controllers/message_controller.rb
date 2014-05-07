class MessageController < ApplicationController
    def index
        # load all column
        @messages = Messages.includes(:user).all
    end

    def new

    end

    def create
        @message = Messages.new(message_params)
        @message.save
        redirect_to root_path
        #render text: params[:message].inspect
    end

    def show
        @message = Messages.find(params[:id])
    end

    def destroy
        # @message = Messages.find(params[:id])
        # @message.destroy

        Messages.destroy(params[:id])
        redirect_to message_index_path
    end

    private
        def message_params
            params.require(:message).permit(:title, :content, :author).merge(:user_id => current_user.id)
        end
end
