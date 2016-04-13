require_dependency "host_engine2/application_controller"

module HostEngine2
  class Engine2sController < ApplicationController
    before_action :set_engine2, only: [:show, :edit, :update, :destroy]

    # GET /engine2s
    def index
      @engine2s = Engine2.all
    end

    # GET /engine2s/1
    def show
    end

    # GET /engine2s/new
    def new
      @engine2 = Engine2.new
    end

    # GET /engine2s/1/edit
    def edit
    end

    # POST /engine2s
    def create
      @engine2 = Engine2.new(engine2_params)

      if @engine2.save
        redirect_to @engine2, notice: 'Engine2 was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /engine2s/1
    def update
      if @engine2.update(engine2_params)
        redirect_to @engine2, notice: 'Engine2 was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /engine2s/1
    def destroy
      @engine2.destroy
      redirect_to engine2s_url, notice: 'Engine2 was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_engine2
        @engine2 = Engine2.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def engine2_params
        params.require(:engine2).permit(:title)
      end
  end
end
