class NotesController < ApplicationController
    def create
    end

    private

    def notes_params
        params.require(:note).permit(:note_content, :project_id)
    end
end
