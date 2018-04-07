# -*- mode: ruby -*-
# vi: set ft=ruby :



Vagrant.configure("2") do |config|
  config.vm.define "maestro" do |hap|
  	hap.vm.box = "ubuntu/xenial32"
        hap.vm.provider :virtualbox do |vb|
		vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
		vb.customize [ 'modifyvm', :id, '--cpus', '2' ]
		vb.customize [ 'modifyvm', :id, '--name', 'maestro' ]
                vb.customize [ 'modifyvm', :id, '--cpuexecutioncap', '60' ]
  	end
       hap.vm.network "forwarded_port", guest: 80, host: 8080
       hap.vm.network "private_network", ip: "10.11.12.3"
       hap.vm.provision "shell", path: "hp-script.sh"
       
  end


  config.vm.define "nodo1" do |node|

 	node.vm.box = "ubuntu/xenial32"
  	node.vm.provider :virtualbox do |vb|
		vb.customize [ 'modifyvm', :id, '--memory', '512' ]
		vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
		vb.customize [ 'modifyvm', :id, '--name', 'nodo1' ]
                vb.customize [ 'modifyvm', :id, '--cpuexecutioncap', '60' ]
       end
       node.vm.network "private_network", ip: "10.11.12.4"
       node.vm.provision "shell", path: "nodo-script.sh", args: ['nodo1']
       
      
  end
  config.vm.define "nodo2" do |node|

 	node.vm.box = "ubuntu/xenial32"
  	node.vm.provider :virtualbox do |vb|
		vb.customize [ 'modifyvm', :id, '--memory', '512' ]
		vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
		vb.customize [ 'modifyvm', :id, '--name', 'nodo2' ]
                vb.customize [ 'modifyvm', :id, '--cpuexecutioncap', '60' ]
       end
       node.vm.network "private_network", ip: "10.11.12.5"
       node.vm.provision "shell", path: "nodo-script.sh", args: ['nodo2']
       
       
      
  end

  config.vm.define "nodo3" do |node|

 	node.vm.box = "ubuntu/xenial32"
           	node.vm.provider :virtualbox do |vb|
		vb.customize [ 'modifyvm', :id, '--memory', '512' ]
		vb.customize [ 'modifyvm', :id, '--cpus', '1' ]
		vb.customize [ 'modifyvm', :id, '--name', 'nodo3' ]
                vb.customize [ 'modifyvm', :id, '--cpuexecutioncap', '60' ]
       end
       
       node.vm.network "private_network", ip: "10.11.12.6"
       node.vm.provision "shell", path: "nodo-script.sh", args: ['nodo3']
                   
  end


end
