require 'rake'

begin
  cd File.expand_path('..', __FILE__) do
    sh 'gem install --local ./doc/rubygems-update-2.6.10.gem'
    sh 'update_rubygems'
    sh 'gem uninstall rubygems-update -x'
    sh 'rake all'
  end
rescue
  puts 'fail. press enter to close'
else
  puts 'ok. press enter to close'
end

STDIN.gets
