# Linux File System
## Types of Files
* Directories
* Special File - mechanism used for I/O. /dev holds special files
* Links - way to make file or directory visible in multiple parts of the os
* Sockets - Provides inter process networking such as TCP/IP
* Pipes - allows IPC
## Root Directory Structure
- /bin - binary
- /sbin - system binaries
- /etc - Contains system-wide config files
- /opt - cntains third party packages
- /media - mount point for removable media
- /boot - Holds files required in os boot
- /dev - device files

# Important commands
## 1. touch
Changes file's timestamps and creates a new file if one doesnt exist
```shell
$ touch file1 file2
```
## 2. cat
Concatenate file & print stdout
```shell
$ cat > file1
```
## 3. cp
Copy files
```shell
$ cp file1 file2
```
## 4. mv
Move file or rename file
```shell
$ mv file1 file2
```
## 5. rm
Remove file from directory
```shell
$ rm file1
```
## 6. mkdir
Make directory
```shell
$ mkdir dir1
```
## 7. rmdir
Remove a directory
```shell
$ rmdir dir1
```
## 8. cd
Change directory
```shell
$ cd dir1
```

# Components
1. Boot block -> Contain small boot program.
2. Super block -> Contains global info about the file system. It also maintains a free list of ionodes and data blocks that can be immediately allocated by the kernel when creating files.
3. Ionode block -> Contains a table for every file in the system. All attributes of a file and directory are stored in this area except the name of the file.
4. Data block -> All data and programs created by user reside in this area. 

# File System Layout
| <!--These comments are just to give the illusion of a table because GFM does not support single row tables --> | <!-- --> | <!-- --> |
| -- | -- | -- |
| Boot block, Super Block, Ionode | Data Block | Blocks | 
| <!-- --> | <!-- --> | <!-- --> |

# Misc.
__Q:__ Write a program of swapping 2 numbers without using a 3rd variable in shell

__A:__
```shell
read -p "Enter 2 numbers : " a b
let a=`expr $a + $b`
let b=`expr $a - $b`
let a=`expr $a - $b`
echo "a = $a, b = $b"
```