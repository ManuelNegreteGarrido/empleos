class CommentariosController < ApplicationController
    before_action :set_jobapplication
  
    def create
      @commentario = @jobapplication.commentarios.build(commentario_params)
      @commentario.user_id = current_user.id
  
      if @commentario.save
        flash[:success] = "¡Has comentado este post!"
        redirect_back fallback_location: root_path
      else
        flash[:alert] = "Revisa el formulario de comentarios, algo salió mal :/"
        render root_path
      end
    end
  
    def destroy
      @commentario = @jobapplication.comments.find(params[:id])
  
      @commentario.destroy
      flash[:success] = "Comentario eliminado :("
      redirect_back fallback_location: root_path
    end
  
    private
  
    def commentario_params
      params.require(:commentario).permit(:content)
    end
  
    def set_jobapplication
      @jobapplication = Jobapplication.find(params[:jobapplication_id])
    end
  end