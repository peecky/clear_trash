clear_trash
===========
Automatically delete old files in the Trash folder, based on the added time of each file into the Trash. This programe is designed for Mac OS (more specifically for the Mountain Lion), but you can use it for other OS if you modify some settings, like the path of Trash folder.

How it works
------------
It scans the Trash folder (/Users/you/.Trash/) for newly added files or folders. Then, it delete old files in the Trash. There are two kinds of duration for storing files in the Trash, min and max. If a file is stored during more than the max duration, the file is deleted. If a file is stored during more than the min duration, but less than the max duratoin, the file can be deleted or not, based on the size of empty space of the disk.

How to use
----------
This program requires Python 2.7.

### Install ###
1.	Download/copy the clear_trash to somewhere, for example, $HOME/bin/ (/Users/you/bin/).
2.	Set it as executable
	<code>$ chmod +x ~/bin/clear_trash</code>

### Execute ###
It is good to run this programe regularly to gain more accurate added times of files. I suggest to run it per every one hour. You can do this automatically by the cron.

Execute the crontab at the terminal

	$ crontab -e

Then add the following line to the cron

	0 * * * * ~/bin/clear_trash

Also, you can see the added times and sizes of the files in the Trash by following command
	
	$ ~/bin/clear_trash --fileinfo

### Uninstall ###
Delete the clear\_trash, $HOME/.clear\_trash.db and $HOME/.clear\_trash.cfg. In some case, the .clear\_trash.db and/or .clear\_trash.cfg may not exist.

Customize Settings
------------------
Create or modify the config file, $HOME/.clear\_trash.cfg. The following is the default settings. The unit of each duration is day. The dbfile is where the added times and the sizes of files are stored. Beware that the paths may be different based on your system.

	[DEFAULT]
	trashpath = /Users/you/.Trash/
	dbfilepath = /Users/you/.clear_trash.db
	maxduration = 100
	minduration = 30

You can modify the values. Do not modify the section name, '[DEFAULT]'.
