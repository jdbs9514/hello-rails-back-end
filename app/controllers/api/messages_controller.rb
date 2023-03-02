class Api::MessagesController < ApplicationController
  before_action :set_access_control_headers
  def index
    render json: { message: Message.order('RANDOM()').first.text }
  end

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://localhost:3001'
    headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version, Token'
    headers['Access-Control-Max-Age'] = '1728000'
  end
end
