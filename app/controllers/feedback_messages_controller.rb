class FeedbackMessagesController < ApplicationController
  before_action :set_feedback_message, only: [:show, :edit, :update, :destroy]

 
  # GET /feedback_messages/new
  def new
    @feedback_message = FeedbackMessage.new
  end


  # GET /feedback_messages/1/edit
  def edit
  end

  # POST /feedback_messages
  # POST /feedback_messages.json
  def create
    @feedback_message = FeedbackMessage.new(feedback_message_params)

    respond_to do |format|
      if @feedback_message.save
        NotificationsMailer.new_message(@feedback_message).deliver
        format.html { redirect_to root_path, notice: 'Το μηνυμα στάλθηκε με επιτυχεια!' }
        format.json { render json: @feedback_message.errors, status: :created, location: @feedback_message }
      else
        format.html { render action: 'new' }
        format.json { render json: @feedback_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feedback_messages/1
  # PATCH/PUT /feedback_messages/1.json
  def update
    respond_to do |format|
      if @feedback_message.update(feedback_message_params)
        format.html { redirect_to @feedback_message, notice: 'Feedback message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @feedback_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedback_messages/1
  # DELETE /feedback_messages/1.json
  def destroy
    @feedback_message.destroy
    respond_to do |format|
      format.html { redirect_to feedback_messages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback_message
      @feedback_message = FeedbackMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_message_params
      params.require(:feedback_message).permit(:name, :email, :subject, :body)
    end
end
