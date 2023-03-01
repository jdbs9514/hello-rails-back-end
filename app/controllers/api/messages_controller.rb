class Api::MessagesController < ApplicationController
  def index
    render json: { message: Message.order('RANDOM()').first.text }
  end
end
