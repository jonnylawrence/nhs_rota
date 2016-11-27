class AuditsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  def show
    @audits = Audit.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_doctor
        @current_doctor = current_doctor.name
        @this_doctor_id=Doctor.where("name = ?",@current_doctor)
    end
end
