class MicropostsController < ApplicationController
  # before_action :logged_in_user, only: [:create, :destroy]

  # GET /rota/new
  def new
    @micropost = Micropost.new
  end

  def show
    @microposts = Micropost.where("rotum_id = ?",params[:id])
    .paginate(page: params[:page])
  end


    def create
      @micropost = Micropost.new(micropost_params)
    
      if @micropost.save
        flash[:success] = "Micropost created!"
        redirect_to controller: 'rota', action: 'show', id: micropost_params[:rotum_id]
      else
        flash[:success] = "Micropost creation failed!"
        redirect_to controller: 'rota', action: 'show', id: micropost_params[:rotum_id]
      end
    end

    def destroy
    end

    private
      def micropost_params
        params.require(:micropost).permit(:content,:rotum_id)
      end
end
