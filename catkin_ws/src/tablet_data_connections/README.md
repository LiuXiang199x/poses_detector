# tablet_data_connections

## Overview

ROS package for the tablet-PC communicaction.

## Features
### Library functions
This package can be used as a **library** for tablet-PC connection.

To that end, import the following class:

`from tablet_data_connections.pctablet_connection import PCTablet_Connection`

Then, use the different methods of the class. In *src/tablet_data_connections/pctablet_connection.py* the methods are defined and a description of use is included.

### Connection node
In order to reduce time processes and allow other programming languages to use the functions, a node has been made. This node mantains the SSH connection active, and redo the SSH connection if an error occurs.

To that end, use the launcher `ssh_connection.launch`.

> #### Testing
> In order to test this node you can use the node **test/ssh_connection_client_node.py**.
>
> Also you can use the launcher **ssh_connection_client.launch** to activate the node.

## Run
### Launchers
#### ssh_connection.launch
* Normal launch:
`roslaunch tablet_data_connections ssh_connection.launch`
* Specify robot:
`roslaunch tablet_data_connections ssh_connection.launch robot:=alzX`

> ##### ERRORS
> ###### `Invalid <arg> tag: environment variable 'HOSTNAME' is not set`:
> Variable HOSTNAME is not set. Set it, or erase the code `default="$(env HOSTNAME)"` from the launcher and specify the argument robot.

### Working steps
*  #### Tablet files required:
   + */sdcard/multimedia/tmp/*

* #### Termux:
    So it works, open **Termux** app in the background.
  > ##### Automate
  > To automate the process, open the app **Automate** and select the file **Open_termux** (previously downloaded and configurated with the associated Mini WiFi network). Then select **START**.

### Installation
#### SSH PC Configuration
(http://roboticslab.uc3m.es/mediawiki/index.php/Mini_Installation#Mini_Setup)

Launch in terminal:
- `git config --global user.name "MINI ROBOT"`
- `git config --global user.email "mini.uc3m@gmail.com"`
- `ssh-keygen -t rsa -C "mini.uc3m@gmail.com" -b 4096`

Copy the content of the file **id_rsa.pub** to a new file **id_tablet.pub** in the same directory ***~/.ssh***.

#### SSH Tablet Configuration
(http://roboticslab.uc3m.es/mediawiki/index.php/Tablet_Installation)
- Install app **Termux** in tablet.
- In Termux: `pkg install openssh`
 `ssh-keygen`
- In Termux: go to */data/data/com.termux/files/home/.ssh* and open the file **authorized_keys**:
 `nano authorized_keys`
- Paste the ssh-key (copy the content of the file ***~/.ssh/id_rsa.pub*** on the **PC** and send it via email to Mini, then copy and paste).
- Create file **.profile** in tablet (*/data/data/com.termux/files/home*)
- Write in **.profile**: 
  ``` 
  termux-wave-lock
  sshd
  ```
- Give permissions to Termux:
  + In  tablet go to *Settings -> Apps*, select **Termux** and give **storage permissions**.
  
  or

  + Open **Termux** and write:
    `termux-setup-storage`
- Restart tablet

#### Node Configuration
- In Termux: `whoami` -> Get tablet_user
- In PC: Go to ***data/{PC_user}/tablet_ssh_params.yaml*** and introduce the following params:

  ```
  tablet_IP: '{tablet_IP}'
  tablet_port: 8022
  tablet_user: '{tablet_user}'
  ```

## ROS API

### ssh_connection
Node that creates the SSH connections.

#### Published Topics
No publications

#### Subscribed Topics
No subscriptions

#### Services
+ tablet_data_connections/pctablet_connection(*tablet_data_connections/PCTablet_Commands*)

#### Actions
No actions

#### Parameters	
No parameters

## LICENSE

La UC3M es titular en exclusiva de los derechos de propiedad intelectual de dicho software, y acepta que el software se proporcione para uso exclusivo dentro de las tareas académicas, y su usuario no está por tanto autorizado a ningún otro uso indebido ajeno, entre estos, a título enunciativo pero no limitativo, a realizar ninguna reproducción, fijación, distribución, comunicación pública, ingeniería inversa, ni transformación sobre dicho software, siendo el propio usuario el responsable de cualquier uso indebido y de las consecuencias que pudieran derivarse de sus actos.

The UC3M is the exclusive owner of the intellectual property rights of this software, and accepts that the software is provided for exclusive use within the academic tasks, and its user is therefore not authorized to any other unauthorized use, among these, for example, but not limited to, make any reproduction, fixation, distribution, public communication, reverse engineering, or transformation on said software, being the user himself responsible for any misuse and the consequences that may arise from their actions.

## ACKNOWLEDGEMENTS

![RoboticsLab](http://ieee.uc3m.es/images/thumb/b/b6/Roboticslab_text_new.jpg/128px-Roboticslab_text_new.jpg)
![UC3M](http://ieee.uc3m.es/images/thumb/6/6b/Logo_uc3m_letras.png/256px-Logo_uc3m_letras.png)