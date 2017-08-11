class ConversationsController < ApplicationController
  def index
    @conversations = current_agent.mailbox.conversations
  end
  def show
    @conversation = current_agent.mailbox.conversations.find(params[:id])
  end

  def new
    @users = User.all
    @investors = Investor.all
    @recipients = (@users + @investors).sort_by(&:created_at) - [current_agent]
  end

  def create
    @recipients = (User.all + Investor.all)-[current_agent]
    recipient = @recipients.find{ |i| i.email == (params[:email])}
    receipt = current_agent.send_message(recipient, params[:body], params[:subject])
    redirect_to conversation_path(receipt.conversation)
  end
end
