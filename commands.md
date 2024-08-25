
1. **List Directory Contents**:
   - Command: `ls`
   - Examples:
     - `ls -a`: Shows hidden files (those starting with `.`).
     - `ls -l`: Displays file details.

2. **Make a Directory**:
   - Command: `mkdir`
   - Example: `mkdir ~/workshops` (creates a directory under the user's home folder).

3. **Remove a File**:
   - Command: `rm`
   - Example: `rm myfile`

4. **Remove a Directory**:
   - Commands (use one of these):
     - `rmdir`: Succeeds if the directory is empty.
     - `rm -r` or `rm -rf`: Removes the directory and its contents.

5. **Change to Another Directory**:
   - Command: `cd`
   - Example: `cd /etc`
   - Note: `cd` alone changes to user's home directory. Equal to cd ~

6. **Copy a File** (Copying a directory requires the `-r` option):
   - Command: `cp`
   - Example: `cp data.txt ./archive`

7. **Move a File or Directory**:
   - Command: `mv`
   - Example: `mv data.txt ./archive`

8. **Modify File Permissions**:
   - Command: `chmod`
   - Note: Only the file/directory owner (and root) can modify file/directory permissions. 
   - Examples - many ways to achieve the wanted result:
     - `chmod 755 mytext` _#user rwx, group r-x,others r-x_
     - `chmod u=rwx,go=rx mytext` _#same result as the above_
     - `chmod u-x,go-w mytext` _#take out x permission from user and w permission from group and others_
     - `chmod u+x,go+w mytext` _#opposite to the above_

9. **Change File Ownership (root privileges needed)**:
   - Command: `chown user:group file`
   - Example: `chown :course /var/coursefiles`

10. **User and Group Management**:  
    - **Note: only root (or user with sudo rights) can issue these commands.**
    - Create a new user: `adduser student2`
    - Create a new group: `addgroup webmasters`
    - Add a user to a group: `gpasswd -a student2 webmasters`
    - Show user's group memberships: `id sakari` _#This doesn't require root privileges_
    - Remove a user from a group: (command missing)
    - Command: `gpasswd -d`
    - Example: `gpasswd -d student2 webmasters`
    - Change another user's password: `sudo passwd student2`

2. **Show All Groups and Memberships**:
   - Command: `cat /etc/group`

3. **Locate a Command**:
   - Command: `which`
   - Example: `which useradd`

4. **Pattern Matching**:
   - Command: `grep`  
_Versatile command the examples below shows just some uses._ 
   - Example: `grep -n 'Apache2 Default Page' /var/www/html/index.html`  
Shows the line number where the text 'Apache2 Default Page' appears in the index.html file.  
   - Example: `ls /etc | grep -E "co?nf$"`  
 Shows the files in /etc directory that ends e.g. either in cnf or conf. In this example the output of ls command is directed (piped) to grep command.

5. **Find a File by Partial Name**:
   - Command: `find`
   - Example: `find /etc -name *conf`
   - Note: The `find` command is very versatile and can be used for various purposes, including executing a command for each found file.

6. **Archiving - tar command**:  
The important feature of tar archiving command is that it preserves ownership and permissions information.  
   - Create an archive:
     - Command: `tar -czvf`
     - Example: `tar -czvf webbisivut.tz /var/www`
   - List files in an archive:
     - Command: `tar -tzvf`
     - Example: `tar -tzvf webbisivut.tz`
   - Extract files from an archive (to the current directory):
     - Command: `tar -xzvf`
     - Example: `tar -xzvf webbisivut.tz`

