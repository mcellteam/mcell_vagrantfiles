Vagrant for MCell/CellBlender Developement
---------------------------------------------------------------------------

Windows 7 Guest
===========================================================================

This vagrant project was created to be used with Vagrant 1.7 but may work with
other versions as well.

### Create Vagrant Box

You should hopefully only have to do this once, and then you can create as many
VMs from it as you need. The box file can be created using packer,
packer-windows, and a Windows 7 iso.

- Install packer
- Clone packer-windows fork
- Put Windows iso in packer-windows/iso folder
- Change iso_url in windows_7.json to point to Windows iso location
- packer build windows_7.json

### Add Vagrant box

To add a Windows box, you will need to run a command similar to this:

    vagrant box add windows_7_virtualbox.box --name win7

### Vagrant Usage

It makes use of the vagrant-reload plugin, which can be installed by running
this command:

    vagrant plugin install vagrant-reload

Now simply start the virtual machine for the first time, by issuing this command:

    vagrant up

This will take some time to complete (~15-20 minutes) the first time you run
it, since there is a lot of provisioning to do.

There are a lot of vagrant tutorials out there, so I won't repeat all of them
here, but here are some basic commands which can be really useful:

- vagrant suspend - Suspend the VM
- vagrant halt - Shut down the VM
- vagrant destroy - Destroy the VM, but leave the Vagrantfile and project files
- vagrant ssh - This should work on Windows if the box was configured correctly

### Provisions

A number of provisions should be set up by the Vagrantfile, which will set up
paths and install things like git. Many of these are installed via chocolatey,
which is a third party package manager for Windows. Here is a list of things
that will be installed:

- MCell
- CellBlender
- nutmeg
- vim
- cygwin
- Mingw
- git
- chrome
- 7zip
- Blender
- golang
- python 2.7
- python 3.4
- chocolatey

Ubuntu
===========================================================================

This hasn't been added yet.
