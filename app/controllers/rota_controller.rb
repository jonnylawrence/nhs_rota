class RotaController < ApplicationController
  before_action :set_rotum, only: [:show, :edit, :update, :destroy]

@locations = Location.all

  # GET /rota
  # GET /rota.json
  def index
    if params[:doctor]
      @this_doctor_id=Doctor.where("name = ?",params[:doctor])
      @rota = Rotum.where("First_on_call_nights_id = ?", @this_doctor_id[0].id)
      .or(Rotum.where("Second_on_call_id = ?", @this_doctor_id[0].id))
      .or(Rotum.where("First_on_call_day_id = ?", @this_doctor_id[0].id))
      .or(Rotum.where("Consultant_id = ?", @this_doctor_id[0].id))
      .paginate(page: params[:page], per_page: 8)
    elsif params[:market]
       @rota = Rotum.where("First_on_call_nights_trade = ?", true)
       .or(Rotum.where("Second_on_call_trade = ?",true))
       .or(Rotum.where("First_on_call_day_trade = ?",true))
       .or(Rotum.where("Consultant_trade = ?",true))
       .paginate(page: params[:page], per_page: 8)
    else
      @current_doctor = current_doctor.name
      @rota = Rotum.all.paginate(page: params[:page], per_page: 8)
    end
  end

  # GET /rota/1
  # GET /rota/1.json
  def show
    @microposts = Micropost.where("rotum_id = ?",params[:id])
    .paginate(page: params[:page])
  end

  # GET /rota/new
  def new
  #  @doctor = Doctor.new(:name => "Locum", :consultant => false, :password => "jon123", :password_confirmation => "jon123")
  #  @doctor.save
    @rotum = Rotum.new
  end


  # GET /rota/1/edit
  def edit
  end

  # POST /rota
  # POST /rota.json
  def create
    @rotum = Rotum.new(rotum_params)

    respond_to do |format|
      if @rotum.save
        # MQ line
        #Publisher.publish("rota", @rotum.attributes)
       flash[:success] = "Rota successfully updated"
        format.html { redirect_to rota_url }
        format.json { render :index, status: :created, location: @rotum }
      else
        format.html { render :new }
        format.json { render json: @rotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rota/1
  # PATCH/PUT /rota/1.json
  def update
    respond_to do |format|
      if @rotum.update(rotum_params)
        format.html { redirect_to @rotum, notice: 'Rota was successfully updated.' }
        format.json { render :index, status: :ok, location: @rotum }
      else
        format.html { render :edit }
        format.json { render json: @rotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rota/1
  # DELETE /rota/1.json
  def destroy
    @rotum.destroy
    respond_to do |format|
      format.html { redirect_to rota_url, notice: 'Rota was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotum
      @rotum = Rotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rotum_params
      params.require(:rotum).permit(:Date, :First_on_call_day_id,:First_on_call_day_trade, :First_on_call_nights_id, :First_on_call_nights_trade,:Second_on_call_id,:Second_on_call_trade, :Consultant_id,:Consultant_trade,:location_id)
    end
end
