class ToDosController < ApplicationController
    def create
        todo = ToDo.new(todo_params)
        if todo.save
            render json: todo,
            except: [:created_at, :updated_at]
        else
            render json:{message: "Could not add a to do, try again please!"}
        end
    end

    def show
        todo = ToDo.find_by(id: params[:id])
        if todo
            render json: todo,
            except: [:created_at, :updated_at]
        else 
            render json: {message: "Could not find that to do, try again!"}
        end
    end

    def index
        todos = ToDo.all
        render json: todos
    end

    def update
        todo = ToDo.find_by(id: params[:id])
        todo.update(todo_params)
        if todo.save
            render json: todo,
            except: [created_at, :updated_at]
        else
            render json:{message: "Couldn't update at this time, try again later"}
        end
    end

    def destroy
        todo = Todo.find_by(id: params[:id])
        todo.destroy
    end
   
    private
    
    def todo_params
        params.require(:todo).permit(:title, :project_id)
    end
end
