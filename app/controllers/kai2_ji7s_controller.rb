class Kai2Ji7sController < ApplicationController
  before_action :set_kai2_ji7, only: [:show, :edit, :update, :destroy]

  # GET /kai2_ji7s
  # GET /kai2_ji7s.json
  def index
    @kai2_ji7s = Kai2Ji7.where('"無齊記號" LIKE ?','%*%*%*%*%*%').order('LENGTH(REPLACE("無齊記號",\'\n\',\'\')) ASC').limit(100)
  end

  # GET /kai2_ji7s/1
  # GET /kai2_ji7s/1.json
  def show
  end

  # GET /kai2_ji7s/new
  def new
    @kai2_ji7 = Kai2Ji7.new
  end

  # GET /kai2_ji7s/1/edit
  def edit
  end

  # POST /kai2_ji7s
  # POST /kai2_ji7s.json
  def create
    @kai2_ji7 = Kai2Ji7.new(kai2_ji7_params)

    respond_to do |format|
      if @kai2_ji7.save
        format.html { redirect_to @kai2_ji7, notice: 'Kai2 ji7 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kai2_ji7 }
      else
        format.html { render action: 'new' }
        format.json { render json: @kai2_ji7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kai2_ji7s/1
  # PATCH/PUT /kai2_ji7s/1.json
  def update
    respond_to do |format|
      kai2_ji7_params[:無齊記號].slice! '!'
      if @kai2_ji7.update(kai2_ji7_params)
        format.html { redirect_to edit_kai2_ji7_path(@kai2_ji7), notice: 'Kai2 ji7 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kai2_ji7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kai2_ji7s/1
  # DELETE /kai2_ji7s/1.json
  def destroy
    @kai2_ji7.destroy
    respond_to do |format|
      format.html { redirect_to kai2_ji7s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kai2_ji7
      @kai2_ji7 = Kai2Ji7.find(params[:id])
      @kai2_ji7.無齊記號 = '!'+@kai2_ji7.無齊記號
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kai2_ji7_params
      params.require(:kai2_ji7).permit(:流水號, :漢羅文, :全羅文, :無齊記號)
    end
end
