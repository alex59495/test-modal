class TestmodalsController < ApplicationController
  def index
    @modals = Testmodal.all
    @modal = Testmodal.new
  end

  def create
    @modal = Testmodal.new(params_modal)
    respond_to do |format|
      if @modal.save
        format.js { render 'create.js.erb' }
      else
        format.js { render 'error.js.erb' }
      end
    end
  end

  private

  def params_modal
    params.require(:testmodal).permit(:value, :name)
  end
end
