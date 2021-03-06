class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]
  has_scope :featured, :type => :boolean

  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.paginate(page: params[:page])
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
      @feed_items = current_user.feed.paginate(page: params[:page])
    @hash = Gmaps4rails.build_markers(@club) do |club, marker|
      marker.lat club.latitude
      marker.lng club.longitude
    end
  end

  # GET /clubs/new
  def new
    @club = Club.new
  end

  # GET /clubs/1/edit
  def edit
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club = Club.new(club_params)
    respond_to do |format|
      if @club.save
        format.html { redirect_to @club, notice: 'Club was successfully created.' }
        format.json { render action: 'show', status: :created, location: @club }
      else
        format.html { render action: 'new' }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to @club, notice: 'Club was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to clubs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:name, :phone, :address, :image)
    end
      def sort_popular
   @clubs =  Club.all.order('clubs.created_at DESC')
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
  end
