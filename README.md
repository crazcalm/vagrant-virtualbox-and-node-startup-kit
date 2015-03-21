#Goal:
    Create a Vagrant file that runs Node.

#Dependencies:
    - Vagrant
    - Virtualbox
    - Vagrant box hashicorp/precise32
    
    
#Vagrant:
    Read the docs: https://docs.vagrantup.com/v2/
    
#Notes:  
    - Virtualbox disables a feature involving symbolic links by default:
        - More details: https://www.virtualbox.org/ticket/10085#comment:12
        - To enable this feature run:
            - VBoxManage setextradata VM_NAME VBoxInternal2/SharedFoldersEnableSymlinksCreate 1
        
    - You can obtain the VM_NAME after the vagrant VM has been created.
        - You can get the name from Virtualbox, or the console out that is created when you run "vagrant up"
        
    - The provisioning script can be found in Provision/practice.sh
        
    - While in the VM, the files can be found at "/vagrant/"
        

#Steps:
    1. Setup vagrant
        - See Vagrant docs
        
    2. Run: vagrant up
    
    3. (Host computer) Enable Virtualbox folder share feature
        - see Notes
        
    4. Run: vagrant reload --provision 
    
    5. Run: vagrant ssh
    
    6. Run: cd /vagrant
        - This is the default locations for the files shared between the host computer and the VM
        
    7. Do whatever you like
    
