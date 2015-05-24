class StatusesController < ApplicationController
  before_filter :set_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @statuses = Status.all
    respond_with(@statuses)
  end

  def show
    respond_with(@status)
  end

  def new
    @status = Status.new
    respond_with(@status)
  end

  def edit
  end

  def create
    @status = Status.new(params[:status])
    @status.save
    respond_with(@status)
  end

  def update
    @status.update_attributes(params[:status])
    respond_with(@status)
  end

  def destroy
    @status.destroy
    respond_with(@status)
  end

  private
    def set_status
      @status = Status.find(params[:id])
    end
end
