class WTablesController < ApplicationController
  before_action :set_w_table, only: [:show, :edit, :update, :destroy]

  # GET /w_tables
  # GET /w_tables.json
  def index
    @w_tables = WTable.all
  end

  # GET /w_tables/1
  # GET /w_tables/1.json
  def show
  end

  # GET /w_tables/new
  def new
    @w_table = WTable.new
  end

  # GET /w_tables/1/edit
  def edit
  end

  # POST /w_tables
  # POST /w_tables.json
  def create
    @w_table = WTable.new(w_table_params)

    respond_to do |format|
      if @w_table.save
        format.html { redirect_to @w_table, notice: 'W table was successfully created.' }
        format.json { render :show, status: :created, location: @w_table }
      else
        format.html { render :new }
        format.json { render json: @w_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /w_tables/1
  # PATCH/PUT /w_tables/1.json
  def update
    respond_to do |format|
      if @w_table.update(w_table_params)
        format.html { redirect_to @w_table, notice: 'W table was successfully updated.' }
        format.json { render :show, status: :ok, location: @w_table }
      else
        format.html { render :edit }
        format.json { render json: @w_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /w_tables/1
  # DELETE /w_tables/1.json
  def destroy
    @w_table.destroy
    respond_to do |format|
      format.html { redirect_to w_tables_url, notice: 'W table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_w_table
      @w_table = WTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def w_table_params
      params.require(:w_table).permit(:geometry_classes_id, :front_side, :x, :y)
    end
end
