class VendedorController < ApplicationController
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
