class PeopleController < ApplicationController
  before_action :set_person, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action { authorize(@person || @people || Person) }

  # GET /people or /people.json
  def index
    @people = Person.all
    @q = Person.all.order(first_name: :asc).ransack(params[:q])
    @people = @q.result
  end

  # GET /people/1 or /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people or /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to person_url(@person), notice: "Person was successfully created." }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1 or /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to person_url(@person), notice: "Info was successfully updated." }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1 or /people/1.json
  def destroy
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url, notice: "Person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def tree
    @people = authorize Person.includes(:parents).all
    @main_node = authorize Person.find_by(id: 4) # 4 is the id of the root node i.e. my grandfather
    @children = @main_node.children.sort_by { |child| child.dob.present? ? Date.strptime(child.dob, "%m/%d/%Y").year : Float::INFINITY }
    render "people/family_tree"
  end

  def family  
    @main_node = authorize Person.find_by(id: params[:id])
    render "people/family"
  end

  def birthdays
    current_month = Date.today.strftime("%m")
    @bdays = authorize Person.where("SUBSTR(dob, 1, 2) = ?", current_month).order(Arel.sql("CAST(SUBSTR(dob, 4, 2) AS INTEGER)"))
    render "layouts/birthdays"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:first_name, :last_name, :middle_name, :maiden_name, :dob, :dod, :place_of_birth, :phone_number, :address, :gender)
    end

end
