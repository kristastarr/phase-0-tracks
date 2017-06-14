# Release 1

##What are some key design philosophies of the Linux operating system? 
It's major design goals are speed, efficiency, and standardization. 
One source listed nine major tenets:

Small is Beautiful
Each Program Does One Thing Well
Prototype as Soon as Possible
Choose Portability Over Efficiency
Store Data in Flat Text Files
Use Software Leverage
Use Shell Scripts to Increase Leverage and Portability
Avoid Captive User Interfaces
Make Every Program a Filter

from https://opensource.com/business/15/2/how-linux-philosophy-affects-you

## What is a VPS (virtual private server)? What are the advantages of using one? 

A VPS is basically the equivalent of a small computer- it's a section of data that runs an operating system 
and contains files just like a physical computer 
VPS hosting is more secure than hosting a site on your own computer 
If you make an error or delete a file in the VPS it will not impact files in your own computer
It's more cost effective and scalable that having an entire physical server


## Why is it considered a bad idea to run programs as the root user on a Linux system? 

It increases security. If you limit use of the root user to only administrative tasks and create other users
for running application tasks, you will protect your root directory including the rest of the files and
systems because the user profiles can only write to the home folder- they can't actually modify any of the system files.  
