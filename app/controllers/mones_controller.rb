class MonesController < ApplicationController
  before_action :set_mone, only: %i[ show edit update destroy ]

  # GET /mones or /mones.json
  def index
    @mones = Mone.all
    agent = Mechanize.new
    page = agent.get("https://collections.louvre.fr/en/recherche?page=1&sort=relevance&typology%5B0%5D=1&lt=mosaic")
    @elements = page.search('//*[@id="search__grid"]//div/article/a/div[2]/h3/span') # スクレイピング要素を検索
  end

  # GET /mones/1 or /mones/1.json
  def show
  end

  # GET /mones/new
  def new
    @mone = Mone.new
  end

  # GET /mones/1/edit
  def edit
  end

  # POST /mones or /mones.json
  def create
    @mone = Mone.new(mone_params)

    respond_to do |format|
      if @mone.save
        format.html { redirect_to mone_url(@mone), notice: "Mone was successfully created." }
        format.json { render :show, status: :created, location: @mone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mones/1 or /mones/1.json
  def update
    respond_to do |format|
      if @mone.update(mone_params)
        format.html { redirect_to mone_url(@mone), notice: "Mone was successfully updated." }
        format.json { render :show, status: :ok, location: @mone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mones/1 or /mones/1.json
  def destroy
    @mone.destroy

    respond_to do |format|
      format.html { redirect_to mones_url, notice: "Mone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mone
      @mone = Mone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mone_params
      params.require(:mone).permit(:title)
    end
end
