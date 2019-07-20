Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.network :forwarded_port,
    guest: 3306, host: 3306, auto_correct: true

  config.vm.provider :virtualbox do |vb|
    vb.name = "auth-storage:v0.0.1"
  end

  config.vm.provision :ansible do |ansible|
    ansible.become = true

    ansible.verbose = "vvv"

    ansible.config_file = "ansible/ansible.cfg"
    ansible.playbook = "ansible/playbooks/db.yml"
  end
end
