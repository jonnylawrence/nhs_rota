class MicropostsController < ApplicationController
  before_action :set_rotum, :logged_in_user

  # # GET /rota/new
  # def new
  #   @micropost = @rotum.Micropost.new
  # end

    def create
      @micropost = @rotum.Microposts.new(micropost_params)
      if @micropost.save
        redirect_to @rotum
      else
        flash[:success] = "Micropost creation failed!"
        redirect_to @rotum
      end
    end

    def destroy
      @micropost = @rotum.Microposts.find(params[:id])
      @micropost.destroy
      redirect_to @rotum
    end

    private
    def set_rotum
      @rotum = Rotum.find(params[:rotum_id])
    end

      def micropost_params
        params.require(:micropost).permit(:content, :doctor_id)
      end
end
