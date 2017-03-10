desc 'do series of setupt'
task 'all' => ['choco-pkgs', 'dotfiles']

desc 'install all chocolatey-packages listed on ./choco-pkgs.yml'
task 'choco-pkgs' do
  require 'yaml'
  pkgs = YAML.load(File.read('./choco-pkgs.yml')).values.flatten
  pkgs.each { |pkg| sh "cinst #{pkg} -y" }
end

desc 'list all installed chocolatey-packages'
task 'choco-list' do
  sh 'choco list -lo'
end

desc 'upgrade all installed chocolatey-packages'
task 'choco-upgrade' do
  sh 'choco upgrade all -y'
end

desc 'clone and deploy dotfiles'
task 'dotfiles' do
  home_ path = Dir.home.encode("UTF-8")
  dotfiles_path = File.expand_path("#{home}/dotfiles").encode("UTF-8")
  sh "git clone https://github.com/sawaken/dotfiles.git #{dotfiles_path}"
  cd dotfiles_path do
    sh 'rake status'
    sh 'rake link'
  end
end
