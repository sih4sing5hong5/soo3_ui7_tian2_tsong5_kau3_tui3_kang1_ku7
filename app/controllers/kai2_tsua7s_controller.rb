class Kai2Tsua7sController < ApplicationController
  before_action :set_kai2_tsua7, only: [:show, :edit, :update, :destroy]

  # GET /kai2_tsua7s
  # GET /kai2_tsua7s.json
  def index
    @kai2_tsua7s = Kai2Tsua7.where('漢羅逝!=全羅逝').order(漢羅逝: :desc)
  end

  # GET /kai2_tsua7s/1
  # GET /kai2_tsua7s/1.json
  def show
  end

  # GET /kai2_tsua7s/new
  def new
    @kai2_tsua7 = Kai2Tsua7.new
  end

  # GET /kai2_tsua7s/1/edit
  def edit
  end

  # POST /kai2_tsua7s
  # POST /kai2_tsua7s.json
  def create
    @kai2_tsua7 = Kai2Tsua7.new(kai2_tsua7_params)

    respond_to do |format|
      if @kai2_tsua7.save
        format.html { redirect_to @kai2_tsua7, notice: 'Kai2 tsua7 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kai2_tsua7 }
      else
        format.html { render action: 'new' }
        format.json { render json: @kai2_tsua7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kai2_tsua7s/1
  # PATCH/PUT /kai2_tsua7s/1.json
  def update
    respond_to do |format|
      if @kai2_tsua7.update(kai2_tsua7_params)
        format.html { redirect_to edit_kai2_tsua7_path(@kai2_tsua7), notice: 'Kai2 tsua7 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kai2_tsua7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kai2_tsua7s/1
  # DELETE /kai2_tsua7s/1.json
  def destroy
    @kai2_tsua7.destroy
    respond_to do |format|
      format.html { redirect_to kai2_tsua7s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kai2_tsua7
      @kai2_tsua7 = Kai2Tsua7.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kai2_tsua7_params
      params.require(:kai2_tsua7).permit(:流水號, :漢羅文, :全羅文, :漢羅逝, :全羅逝)
    end
end
