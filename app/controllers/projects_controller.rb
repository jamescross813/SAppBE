class ProjectsController < ApplicationController

    def create
        project = Project.new(project_params)
        if project.save
            render json: project,
            except: [:create_at, :updated_at]
        else
            render json:{message: "Could not create project, try again please!"}
        end
    end

    def show
        project = Project.find_by(id: params[:id])
        if project
            render json: project,
            except: [:create_at, :updated_at]
        else 
            render json: {message: "Could not find that project, try again!"}
        end
    end

    def index
        projects = Project.all
        render json: projects,
        except: [:create_at, :updated_at]
    end

    def updated
        project = Project.find_by(id: params[:id])
        project.update(project_params)
            if project.save
                render json: project,
                except: [:create_at, :updated_at]
            else 
                render json: {message: "Could not update at this time, please try again!"}     
        end
    end

    def destroy
        project = Project.find_by(id: params[:id])
        project.destroy
    end

    private
    
    def project_params
        params.require(:project).permit(:title, :user_id)
    end
end
