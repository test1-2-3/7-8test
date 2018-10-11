class NewbooksController < ApplicationController
  before_action :set_newbook, only: [:show, :edit, :update, :destroy]


  def top
    
  end
  # GET /newbooks
  # GET /newbooks.json
  def index
    @newbooks = Newbook.all
    @user = Newbook.new
  end

  # GET /newbooks/1
  # GET /newbooks/1.json
  def show
    @newbook = Newbook.find(params[:id])
  end

  # GET /newbooks/new
  def new
    @newbook = Newbook.new
  end

  # GET /newbooks/1/edit
  def edit
    @newbook = Newbook.find(params[:id])
  end

  # POST /newbooks
  # POST /newbooks.json
  def create
    @newbook = Newbook.new(newbook_params)

    respond_to do |format|
      if @newbook.save
        format.html { redirect_to @newbook, notice: 'Newbook was successfully created.' }
        format.json { render :show, status: :created, location: @newbook }
      else
        format.html { render :new }
        format.json { render json: @newbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newbooks/1
  # PATCH/PUT /newbooks/1.json
  def update
    respond_to do |format|
      if @newbook.update(newbook_params)
        format.html { redirect_to @newbook, notice: 'Newbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @newbook }
      else
        format.html { render :edit }
        format.json { render json: @newbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newbooks/1
  # DELETE /newbooks/1.json
  def destroy
    @newbook.destroy
    respond_to do |format|
      format.html { redirect_to newbooks_url, notice: 'Newbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newbook
      @newbook = Newbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newbook_params
      params.require(:newbook).permit(:Title, :Body)
    end
end
