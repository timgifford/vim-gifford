require 'os'

desc 'add all the submodules'
task :init do

    git_bundles = [ 
        "http://github.com/flazz/vim-colorschemes.git",
        "http://github.com/scrooloose/nerdcommenter",
        "http://github.com/scrooloose/nerdtree.git",
        "http://github.com/tpope/vim-cucumber.git",
        "http://github.com/tpope/vim-fugitive.git",
        # "http://github.com/tpope/vim-git.git",
        # "http://github.com/astashov/vim-ruby-debugger.git",
        # "http://github.com/ervandew/supertab.git",
        # "https://github.com/tpope/vim-sensible.git",
        # "http://github.com/godlygeek/tabular.git",
        # "http://github.com/hallison/vim-rdoc.git",
        # "http://github.com/msanders/snipmate.vim.git",
        # "http://github.com/pangloss/vim-javascript.git",
        # "http://github.com/timcharper/textile.vim.git",
        # "http://github.com/tpope/vim-haml.git",
        # "http://github.com/tpope/vim-markdown.git",
        # "http://github.com/tpope/vim-rails.git",
        # "http://github.com/tpope/vim-repeat.git",
        # "http://github.com/tpope/vim-surround.git",
        # "http://github.com/tpope/vim-vividchalk.git",
        # "http://github.com/tsaleh/taskpaper.vim.git",
        # "http://github.com/tsaleh/vim-matchit.git",
        # "http://github.com/tsaleh/vim-shoulda.git",
        # "http://github.com/tsaleh/vim-tmux.git",
        # "http://github.com/vim-ruby/vim-ruby.git",
        # "http://github.com/vim-scripts/Gist.vim.git",
    ]

    git_bundles.each do |url|
        dir = url.split('/').last.sub(/\.git$/, '')
        system "git submodule add #{url} bundle/#{dir}"
    end
end

desc "install"
task :install do
  #`git submodule init`
  `git submodule update`
  Rake::Task['install:win'].execute if OS.windows?
  Rake::Task['install:mac'].execute if OS.mac?
end

namespace :install do

  desc "install vim for windows"
  task :win do
    File.open('os/vimrc', 'w') { |file| 
        file.write("source os/win/vimrc") 
    }
    puts "installation for windows"
  end

  desc "install vim for mac"
  task :mac do
    puts "installation for mac"
    File.open('os/vimrc', 'w') { |file| 
        file.write("source os/mac/vimrc") 
    }
  end
end
