require 'os'

desc 'add all the submodules'
task :init do
  `git submodule add git://github.com/tpope/vim-fugitive.git bundle/vim-fugitive`

end

desc "install"
task :install do
  `git submodule init`
  `git submodule update`
  Rake::Task['install:win'].execute if OS.windows?
  Rake::Task['install:mac'].execute if OS.mac?
end

namespace :install do

  desc "install vim for windows"
  task :win do
    puts "installation for windows"
  end

  desc "install vim for mac"
  task :mac do
    puts "installation for mac"
  end
end
