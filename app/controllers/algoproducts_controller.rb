class AlgoproductsController < ProductsController
  def new
  	@algoproduct = Algoproduct.new
  end

  def create
    @algoproduct = Algoproduct.new(params[:algoproduct])
    if @algoproduct.save
      flash[:notice] = "Product dengan algoritma berhasil dibuat."
      redirect_to @algoproduct
    else
      flash[:alert] = "Product dengan algoritma gagal dibuat"
      render :action => "new"
    end
  end

  def show
    @algoproduct = Algoproduct.find(params[:id])
    @addclick = Counter.new
    @addclick.algo = @algoproduct.algo
    @addclick.save
  end
end
