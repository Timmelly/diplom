class GeometryClassesController < ApplicationController
  before_action :set_geometry_class, only: [:show, :edit, :update, :destroy]

  # GET /geometry_classes
  # GET /geometry_classes.json
  def index
    @geometry_classes = GeometryClass.all
  end

  # GET /geometry_classes/1
  # GET /geometry_classes/1.json
  def show
  end

  # GET /geometry_classes/new
  def new
    @geometry_class = GeometryClass.new
  end

  # GET /geometry_classes/1/edit
  def edit
  end

  # POST /geometry_classes
  # POST /geometry_classes.json
  def create
    @geometry_class = GeometryClass.new(geometry_class_params)

    respond_to do |format|
      if @geometry_class.save
        format.html { redirect_to @geometry_class, notice: 'Geometry class was successfully created.' }
        format.json { render :show, status: :created, location: @geometry_class }
      else
        format.html { render :new }
        format.json { render json: @geometry_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geometry_classes/1
  # PATCH/PUT /geometry_classes/1.json
  def update
    respond_to do |format|
      if @geometry_class.update(geometry_class_params)
        format.html { redirect_to @geometry_class, notice: 'Geometry class was successfully updated.' }
        format.json { render :show, status: :ok, location: @geometry_class }
      else
        format.html { render :edit }
        format.json { render json: @geometry_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geometry_classes/1
  # DELETE /geometry_classes/1.json
  def destroy
    @geometry_class.destroy
    respond_to do |format|
      format.html { redirect_to geometry_classes_url, notice: 'Geometry class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geometry_class
      @geometry_class = GeometryClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geometry_class_params
      params.require(:geometry_class).permit(:room, :bilding, :floor, :x, :y, :ip)
    end
end
