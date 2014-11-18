class Api::PeopleController < ApplicationController

  require 'mandrill'

  def index
    render json: Person.all
  end

  def show
    render json: Person.find(params[:id])
  end
  

  def send_mail
    @info = {
      name: params[:name],
      email: params[:email],
      message: params[:message]
    }
    if ContactMailer.contact_email(@info).deliver
      render json: { 'result' => 'success', 'info' => @info }
    else
      render json: { 'result' => 'error', 'info' => ':(' }
    end
  end
end
