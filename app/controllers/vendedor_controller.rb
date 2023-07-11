class VendedorController < ApplicationController
  before_action only: [:index, :show] do
    authorize_request(["normal", "ejecutivo", "admin"])
  end
  before_action only: [:index, :show, :edit, :new, :create] do
    authorize_request(["ejecutivo", "admin"])
  end
  before_action only: [:index, :show, :edit, :new, :create, :destroy] do
    authorize_request(["admin"])
  end
  def index
    if !user_signed_in?
      redirect_to "/welcome"
    else
    @pagy, @vendedores = pagy(Vendedor.all)

    if params[:vendedor].present?
      @vendedores = @vendedores.search_full_text(params[:vendedor])
      end
    end
  end
end
