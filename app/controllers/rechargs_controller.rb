class RechargsController < ApplicationController
  before_action :set_recharg, only: [:show, :update, :destroy]

  # GET /rechargs
  def index
    @rechargs = Recharg.all

    render json: @rechargs, include: :phone
  end

  # GET /rechargs/1
  def show
    render json: @recharg, include: :phone
  end

  # POST /rechargs
  def create
    @recharg = Recharg.new(recharg_params)

    if @recharg.save
      render json: @recharg, status: :created, location: @recharg
    else
      render json: @recharg.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rechargs/1
  def update
    if @recharg.update(recharg_params)
      render json: @recharg
    else
      render json: @recharg.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rechargs/1
  def destroy
    @recharg.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recharg
      @recharg = Recharg.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recharg_params
      params.require(:recharg).permit(:amount, :phone_id)
    end
end
