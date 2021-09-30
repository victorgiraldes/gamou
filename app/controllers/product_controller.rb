class ProductController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all.where(user_id: current_user.id)
  end

  def new
    @form_url = product_create_url
    @method = :post
    @product = Product.new
  end

  def create
    @form_url = product_create_url
    @method = :post
    @product = Product.new(product_params)
    @product.user_id = current_user.id

    if @product.save
      flash.notice = I18n.t('web.product.actions.create.success')
      redirect_to product_path
    else
      flash.alert = I18n.t('web.product.actions.create.fail')
      render 'new'
    end
  end

  def edit
    @form_url = product_update_url
    @method = :put
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:product][:id])
    @product.name = params[:product][:name]
    @product.price_in_diamonds = params[:product][:price_in_diamonds]
    @product.image = params[:product][:image]
    @product.short_description = params[:product][:short_description]
    @product.description = params[:product][:description]

    if @product.save
      flash.notice = I18n.t('web.product.actions.update.success')
      redirect_to product_path
    else
      flash.alert = I18n.t('web.product.actions.update.fail')
      render 'new'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash.notice = I18n.t('web.product.actions.destroy.success')
    else
      flash.alert = I18n.t('web.product.actions.destroy.fail')
    end
    redirect_to product_path
  end

  def product_params
    params
      .require(:product)
      .permit(
        :id,
        :name,
        :price_in_diamonds,
        :image,
        :short_description,
        :description
      )
  end
end
