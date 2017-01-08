class MdNotesController < ApplicationController
  before_action :set_md_note, only: [:show, :edit, :update, :destroy]

  # GET /md_notes
  # GET /md_notes.json
  def index
    @md_notes = MdNote.all
  end

  # GET /md_notes/1
  # GET /md_notes/1.json
  def show
  end

  # GET /md_notes/new
  def new
    @md_note = MdNote.new
  end

  # GET /md_notes/1/edit
  def edit
  end

  # POST /md_notes
  # POST /md_notes.json
  def create
    @md_note = MdNote.new(md_note_params)

    respond_to do |format|
      if @md_note.save
        format.html { redirect_to @md_note, notice: 'Md note was successfully created.' }
        format.json { render :show, status: :created, location: @md_note }
      else
        format.html { render :new }
        format.json { render json: @md_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /md_notes/1
  # PATCH/PUT /md_notes/1.json
  def update
    respond_to do |format|
      if @md_note.update(md_note_params)
        format.html { redirect_to @md_note, notice: 'Md note was successfully updated.' }
        format.json { render :show, status: :ok, location: @md_note }
      else
        format.html { render :edit }
        format.json { render json: @md_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /md_notes/1
  # DELETE /md_notes/1.json
  def destroy
    @md_note.destroy
    respond_to do |format|
      format.html { redirect_to md_notes_url, notice: 'Md note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_md_note
      @md_note = MdNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def md_note_params
      params.require(:md_note).permit(:title, :content)
    end
end
