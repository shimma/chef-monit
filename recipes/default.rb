package 'monit'

service 'monit' do
  action :nothing
end

node[:monit_config].each do |process_name, configure|
  template "/etc/monit/conf.d/#{process_name}.monitrc" do
    source 'template.monitrc.erb'
    owner 'root'
    group 'root'
    mode '0440'
    variables({
      process_name: process_name.to_s,
      pid_file: configure['pid_file'],
      start_program: configure['start_program'],
      stop_program: configure['stop_program'],
      group: configure['group'],
    })
    notifies :restart, 'service[monit]', :delayed
  end
end
