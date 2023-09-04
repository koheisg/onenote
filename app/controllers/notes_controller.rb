class NotesController < ApplicationController
  def show
    @note = current_user.note || current_user.build_note
  end

  def create
    @note = current_user.build_note(note_params)
    if @note.save
      redirect_to note_path
    else
      render :show
    end
  end

  def update
    @note = current_user.note
    @note.update(note_params)
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end
