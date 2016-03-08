class NotesController < ApplicationController
  def new
  end

  def create
    @note = Note.new
    @note.title = params[:title]
    @note.content = params[:content]
    @note.save
    redirect_to noe_path(@note.id)
  end

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end
end
