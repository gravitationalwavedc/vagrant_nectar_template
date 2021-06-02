require 'vagrant-openstack-provider'

Vagrant.configure('2') do |config|
  # INPUT PAYLOAD
  payload_file=File.expand_path('./env.yaml')
  puts "# PAYLOAD FILE: #{payload_file}"
  payload=YAML.load_file(payload_file)['nectar']

  # payload.each do |k, v|
  #   puts "k[#{k}]: #{v}"
  # end
  config.ssh.username = 'ubuntu'
  config.vm.allowed_synced_folder_types = :rsync

  config.vm.provider :openstack do |os|
    os.server_name                      = payload['server_name']
    os.openstack_auth_url               = payload['openstack_auth_url']
    os.openstack_compute_url            = payload['openstack_compute_url']
    os.openstack_volume_url             = payload['openstack_volume_url']
    os.identity_api_version             = payload['identity_api_version']
    os.project_name                     = payload['project_name']
    os.user_domain_name                 = payload['user_domain_name']
    os.project_domain_name              = payload['project_domain_name']
    os.username                         = payload['username']
    os.password                         = payload['password']
    os.region                           = payload['region']
    os.flavor                           = payload['flavor']
    os.image                            = payload['image']
    os.networks                         = payload['networks']
    os.availability_zone                = payload['availability_zone']
    os.security_groups                  = payload['security_groups']
  end

  # config.vm.provision "ansible" do |ansible|
  #   ansible.playbook = "ansible/playbook.yml"
  # end
end