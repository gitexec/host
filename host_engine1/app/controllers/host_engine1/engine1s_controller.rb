require_dependency "host_engine1/application_controller"

module HostEngine1
  class Engine1sController < ApplicationController
    before_action :set_engine1, only: [:show, :edit, :update, :destroy]

    # GET /engine1s
    def index
      @engine1s = Engine1.all
    end

    # GET /engine1s/1
    def show
    end

    # GET /engine1s/new
    def new
      @engine1 = Engine1.new
    end

    # GET /engine1s/1/edit
    def edit
    end

    # POST /engine1s
    def create
      @engine1 = Engine1.new(engine1_params)

      if @engine1.save
        redirect_to @engine1, notice: 'Engine1 was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /engine1s/1
    def update
      if @engine1.update(engine1_params)
        redirect_to @engine1, notice: 'Engine1 was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /engine1s/1
    def destroy
      @engine1.destroy
      redirect_to engine1s_url, notice: 'Engine1 was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_engine1
        @engine1 = Engine1.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def engine1_params
        params.require(:engine1).permit(:title)
      end
  end
end
