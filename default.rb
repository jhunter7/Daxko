package 'httpd'

package 'python'

service 'httpd' do
  action [:enable, :start]
end
 
%w{
        mysql-community-release-el7-5.noarch.rpm
}.each do |pkg|
        remote_file "/tmp/#{pkg}" do
          source "http://repo.mysql.com/#{pkg}"
        end

       rpm_package pkg do
        source "/tmp/#{pkg}"
        action :install
      end
end

package 'mysql-server'

service 'mysqld' do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end
