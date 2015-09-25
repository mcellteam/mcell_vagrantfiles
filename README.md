Vagrantfiles for MCell/CellBlender Developement
===========================================================================

Windows 7 Guest
---------------------------------------------------------------------------

This vagrant project was created to be used with Vagrant 1.7 but may work with
other versions as well.

### Create Vagrant Box

You should hopefully only have to do this once, and then you can create as many
VMs from it as you need. The box file can be created using packer,
packer-windows, and a Windows 7 iso.

- Install [packer](https://packer.io)
- Clone [packer-windows](https://github.com/jczech/packer-windows) fork or the [original version](https://github.com/joefitzgerald/packer-windows)
- Put Windows iso in `packer-windows/iso` directory
- Change `iso_url` in `windows_7.json` to point to Windows iso location
- Run `packer build windows_7.json`.
  - This will take a while, especially the defrag step.

### Add Vagrant box

To add a Windows box, you will need to run a command similar to this:

    vagrant box add windows_7_virtualbox.box --name win7

### Vagrant Usage

It makes use of the vagrant-reload plugin, which can be installed by running
this command:

    vagrant plugin install vagrant-reload

Now simply start the virtual machine for the first time, by issuing this
command (from ./mcell_vagrantfiles/win7):

    vagrant up

This will take some time to complete (~15-20 minutes) the first time you run
it, since there is a lot of provisioning to do. You should probably let the
machine finish all of the provisioning before logging in. The VM will reboot a
couple time during the provisioning. Don't be alarmed by this. Once it's done,
you can log in to the machine by typing *vagrant* into the password field and
hitting Enter.

There are a lot of vagrant tutorials out there, so I won't repeat all of them
here, but here are some basic commands which can be really useful:

- `vagrant suspend` - Suspend the VM
- `vagrant halt` - Shut down the VM
- `vagrant destroy` - Destroy the VM, but leave the Vagrantfile and project files
- `vagrant ssh` - This should work on Windows if the box was configured correctly

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

### Directories

Most of the things of interest are stored in C:\Users\vagrant.

- MCell repo - C:\Users\vagrant\mcell
- CellBlender repo - C:\Users\vagrant\cellblender
- nutmeg repo - C:\Users\vagrant\nutmeg
- Go Projects - C:\Users\vagrant\Go
- Binaries (just MCell for now) - C:\Users\vagrant\bin
- Shared directory with host machine - C:\vagrant

### Command Line in Windows (PowerShell)

You will likely want to use PowerShell when doing development/testing. To start
PowerShell, click the circular Windows icon in the lower left hand corner, type
powershell, and hit Enter. Once PowerShell starts, you might want to pin it to
the taskbar (right click on icon and select "Pin this program to taskbar"), so
it's easier to start in the future. Here are a list of some of the commands
which can be used in PowerShell.

- `choco` - package manager
- `vim` - text editor (should probably add sublime too)
- `git`
- `gcc`
- `go`
- various posix-like commands
  - `ls`
  - `cd`
  - `mkdir`

### Miscellaneous

Put your .gitconfig in C:\Users\vagrant.

The profile.ps1 script in C:\Users\vagrant\Documents\WindowsPowerShell is
similar to a .bashrc/.zshrc. For example, you could use it to make changes to
your path or add aliases. This file is executed every time you open a new
instance of PowerShell.

Ubuntu Guest
---------------------------------------------------------------------------

This hasn't been added yet.
