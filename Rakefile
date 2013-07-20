require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  install_oh_my_zsh
  switch_to_zsh
  replace_all = false
  files = Dir['*'] - %w[Rakefile README.rdoc LICENSE]
  files << "oh-my-zsh/themes/agnoster.zsh-theme"
  files.each do |file|
    system %Q{mkdir -p "$HOME/.#{File.dirname(file)}"} if file =~ /\//
    if File.exist?(File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}")
        puts "identical ~/.#{file.sub(/\.erb$/, '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub(/\.erb$/, '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub(/\.erb$/, '')}"
        end
      end
    else
      link_file(file)
    end
  end
  echo "Please restart Terminal or open a new Terminal to see your effects."
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub(/\.erb$/, '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub(/\.erb$/, '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
elsif file =~ /zshrc$/ # copy zshrc instead of link
    puts "copying ~/.#{file}"
    system %Q{cp "$PWD/#{file}" "$HOME/.#{file}"}
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end

def switch_to_zsh
  if ENV["SHELL"] =~ /zsh/
    puts "using zsh"
  else
    print "switch to zsh? (recommended) [ynq] "
    case $stdin.gets.chomp
    when 'y'
      puts "switching to zsh"
      sh "chsh -s $(which zsh)" 
    when 'q'
      exit
    else
      puts "skipping zsh"
    end
  end
end

def install_oh_my_zsh
  if File.exist?(File.join(ENV['HOME'], ".oh-my-zsh"))
    puts "found ~/.oh-my-zsh"
  else
    print "install oh-my-zsh? [ynq] "
    case $stdin.gets.chomp
    when 'y'
      if !File.exists?("usr/bin/zsh")
        puts "Installing zsh"
          distribution=`GetDistro.sh`
          if distribution.include? "Debian"
            sh %{sudo apt-get update && echo 'y' > /dev/null}
            sh %{sudo apt-get install python-pip && echo 'y' > /dev/null}
            sh %{sudo apt-get install zsh && echo 'y' > /dev/null}
            sh %{sudo apt-get install wget && echo 'y' > /dev/null}
          elsif distribution.include? "Red Hat"
            sh %{sudo yum update && echo 'y' > /dev/null}
            sh %{sudo yum install python-pip && echo 'y' > /dev/null}
            sh %{sudo yum install zsh && echo 'y' > /dev/null}
            sh %{sudo yum install wget && echo 'y' > /dev/null}
          elsif distribution.include? "SUSE"
            sh %{sudo zypper update && echo 'y' > /dev/null}
            sh %{sudo zypper install python-pip && echo 'y' > /dev/null}
            sh %{sudo zypper install zsh && echo 'y' > /dev/null}
            sh %{sudo zypper install wget && echo 'y' > /dev/null}
          else #Mac OS X
            sh %{curl -L github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh > /dev/null}
          end
          puts "Installing a powerline font for use with agnoster zsh theme"
          sh %{su -c 'pip install git+git://github.com/Lokaltog/powerline'}
          sh %{wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf > /dev/null}
          sh %{sudo mv PowerlineSymbols.otf /usr/share/fonts/}
          sh %{sudo fc-cache -vf}
          sh %{sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/}

          sh %{cp -r oh-my-zsh $HOME/.oh-my-zsh}
      end
    when 'q'
      exit
    else
      puts "skipping oh-my-zsh, you will need to change ~/.zshrc"
    end
  end
end