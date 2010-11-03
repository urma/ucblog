class UsersController < ApplicationController
  def auth
    # Valida usuario no banco de dados
    user = User.find_by_sql("SELECT * FROM users WHERE login = '#{params[:user][:login]}' AND password = '#{params[:user][:password]}'")

    # DEPURACAO
    logger.debug(user.inspect)

    if user.empty?
      # Usuario nao encontrado; volta para a tela de login com mensagem de erro
      flash[:login_error] = 'Usu&aacute;rio e/ou senha inv&aacute;lidos'
      redirect_to :action => 'login'
    else
      # Usuario encontrado; redireciona para o home da app com a sessao devidamente populada
      session[:user] = user.first
      redirect_to '/'
    end
  end
  
  def logout
    session[:user] = nil
    redirect_to '/'
  end
end
