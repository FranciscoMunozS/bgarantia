class GuaranteesController < ApplicationController
  before_action :find_guarantee, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @guarantees = Guarantee.all
  end

  def show
  end

  def new
    @guarantee = current_user.guarantees.build
  end

  def create
    @guarantee = current_user.guarantees.build(guarantee_params)

    if @guarantee.save
      redirect_to @guarantee, notice: "Boleta de garantia creada correctamente"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @guarantee.update(guarantee_params)
      redirect_to @guarantee, notice: "Boleta actualizada correctamente"
    else
      render 'edit'
    end
  end

  def destroy
    @guarantee.destroy
    redirect_to root_path
  end

  private

  def guarantee_params
    params.require(:guarantee).permit(:income_number, :income_date, :income_applicant, :borrower_name, :borrower_id, :bank_name, :value_guarantee, :currency_guarantee, :due_date, :bail, :detail, :bip, :email, :observation, :state, :devolution_number, :devolution_return, :sectorialist_devolution, :technical_unit)
  end

  def find_guarantee
    @guarantee = Guarantee.find(params[:id])
  end
end
