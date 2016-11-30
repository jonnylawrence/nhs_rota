class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  # GET /doctors
  # GET /doctors.json
  def index
    @doctors = Doctor.all
    @current_doctor ||= Doctor.find_by(id: session[:doctor_id])
  end

  # GET /doctors/1
  # GET /doctors/1.json
  def show
    @doctor = Doctor.find(params[:id])
  end

  def showpref
    @monday_days = Doctor.where('monday_days = ?',true).count
    @monday_nights = Doctor.where('monday_nights = ?',true).count
    @tuesday_days = Doctor.where('tuesday_days = ?',true).count
    @tuesday_nights = Doctor.where('tuesday_nights = ?',true).count
    @wednesday_days = Doctor.where('wednesday_days = ?',true).count
    @wednesday_nights = Doctor.where('wednesday_nights = ?',true).count
    @thursday_days = Doctor.where('thursday_days = ?',true).count
    @thursday_nights = Doctor.where('thursday_nights = ?',true).count
    @friday_days = Doctor.where('friday_days = ?',true).count
    @friday_nights = Doctor.where('friday_nights = ?',true).count
    @saturday_days = Doctor.where('saturday_days = ?',true).count
    @saturday_nights = Doctor.where('saturday_nights = ?',true).count
    @sunday_days = Doctor.where('sunday_days = ?',true).count
    @sunday_nights = Doctor.where('sunday_nights = ?',true).count
  end

  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctors/1/edit
  def edit
  end

  # POST /doctors
  # POST /doctors.json
  def create
    @doctor = Doctor.new(doctor_params)
    #@doctor = Doctor.new(params[:doctor])

    respond_to do |format|
      if @doctor.save
        log_in @doctor
        flash[:success] = "Welcome to the NHS rota manager"
        format.html { redirect_to @doctor, notice: 'Doctor was successfully created.' }
        format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctors/1
  # PATCH/PUT /doctors/1.json
  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to @doctor, notice: 'Doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctors/1
  # DELETE /doctors/1.json
  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to doctors_url, notice: 'Doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_params
      params.require(:doctor).permit(:name, :email, :password,
                             :password_confirmation, :consultant,
                             :mobile, :contact_preference, :notification_group,
                             :admin, :monday_days, :monday_nights, :tuesday_days,
                             :tuesday_nights, :wednesday_days, :wednesday_nights,
                             :thursday_days, :thursday_nights, :friday_days,
                             :friday_nights, :saturday_days, :saturday_nights,
                             :sunday_days, :sunday_nights)
    end
end
