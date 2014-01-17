class Kai2Tuan7sController < ApplicationController
  before_action :set_kai2_Kai2Tuan7, only: [:show, :edit, :update, :destroy]

  # GET /kai2_Kai2Tuan7s
  # GET /kai2_Kai2Tuan7s.json
  def index
    @kai2_tuan7s = Kai2Tuan7.where('漢羅逝!=全羅逝').order(漢羅逝: :desc)
  end

  # GET /kai2_Kai2Tuan7s/1
  # GET /kai2_Kai2Tuan7s/1.json
  def show
  end

  # GET /kai2_Kai2Tuan7s/new
  def new
    @kai2_Kai2Tuan7 = Kai2Tuan7.new
  end

  # GET /kai2_Kai2Tuan7s/1/edit
  def edit
  end

  # POST /kai2_Kai2Tuan7s
  # POST /kai2_Kai2Tuan7s.json
  def create
    @kai2_Kai2Tuan7 = Kai2Tuan7.new(kai2_Kai2Tuan7_params)

    respond_to do |format|
      if @kai2_Kai2Tuan7.save
        format.html { redirect_to @kai2_Kai2Tuan7, notice: 'Kai2 Kai2Tuan7 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kai2_Kai2Tuan7 }
      else
        format.html { render action: 'new' }
        format.json { render json: @kai2_Kai2Tuan7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kai2_Kai2Tuan7s/1
  # PATCH/PUT /kai2_Kai2Tuan7s/1.json
  def update
    respond_to do |format|
      if @kai2_tuan7.update(kai2_Kai2Tuan7_params)
        format.html { redirect_to edit_kai2_tuan7_path(@kai2_tuan7), notice: 'Kai2 Kai2Tuan7 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kai2_tuan7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kai2_Kai2Tuan7s/1
  # DELETE /kai2_Kai2Tuan7s/1.json
  def destroy
    @kai2_tuan7.destroy
    respond_to do |format|
      format.html { redirect_to kai2_Kai2Tuan7s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kai2_Kai2Tuan7
      @kai2_tuan7 = Kai2Tuan7.find(params[:id])
#      @kai2_tuan7.id=@kai2_Kai2Tuan7.流水號
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kai2_Kai2Tuan7_params
      params.require(:kai2_tuan7).permit(:流水號,:檔案名,:漢羅,:全羅,:漢羅逝,:全羅逝,:id)
    end
end
