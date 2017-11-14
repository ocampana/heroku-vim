require 'heroku/helpers'
require 'heroku/command'
require 'heroku/command/run'

class Heroku::Command::Vim < Heroku::Command::Run

  # vim
  # 
  # Run bash on heroku with vim
  #  
  def index
    run_attached(vim_cmd)
  end

  protected

  def vim_cmd
    <<-CMD
mkdir vim
curl https://s3.amazonaws.com/bengoa/vim-static.tar.gz --location --silent | tar xz -C vim
export PATH=$PATH:/app/vim/
bash
    CMD
  end

end
