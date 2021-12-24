class NotesController < ApplicationController
    def create
        note = Note.new(notes_params)
        if note.save
            render json: note,
            except: [created_at, :updated_at]
        else
            render json: {message: "Could not create a note, try again"}
        end
    end

    private

    def notes_params
        params.require(:note).permit(:note_content, :project_id)
    end
end
