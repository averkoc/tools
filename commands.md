


| Task                                              | Command                        | Examples comments preceded by #                         |
| ------------------------------------------------- | ------------------------------ | ------------------------------------------------------- |
|**File and directory management**                  |                                |                                                         |
| List directory contents                           | ls                             | ls -a  #shows also hidden files (starts with .)         |
|                                                   |                                | ls -l  #shows file details                              |
| Make a directory                                  | mkdir                          | mkdir ~/workshops #created under home folder            |
| Remove a file                                     | rm                             | rm myfile                                               |
| Remove a directory                                | rmdir, rm –r, rm -rf           | rmdir ~/workshops #succeeds if empty else use rm        |
| Change to other directory                         | cd                             | cd /etc                                                 |
| Copy a file                                       | cp                             | cp data.txt ./archieve                                  |
| Move a file                                       | mv                             | mv data.txt ./archieve                                  |
|                                                   |                                |                                                         |
|**File permissions and ownership management**        |                                |                                                         |
| Modify file permissions                           | chmod                          | chmod 755 mytext                                        |
| chmod u=rwx,go=rx                                 |                                |                                                         |
| chmod u-x,go-w                                    |                                |                                                         |
| chmod u+x,go+w                                    |                                |                                                         |
| Change file ownership                             | chown user:group file          | chown :course /var/coursefiles                          |
|                                                   |                                |                                                         |
|**User and group management**                      |                                |                                                         |
| \* Create a new user                              | adduser                        | adduser student2                                        |
| \* Change other user's password                   | passwd [user]                  | sudo passwd student2                                    |
| \* Create a new group                             | addgroup                       | addgroup webmasters                                     |
| \* Add a user to a group                          | gpasswd -a                     |                                                         |
| \*(usermod -a -G)                                 | gpasswd -a student2 webmasters |                                                         |
| Show user's memberships in groups                 | id username                    | id sakari                                               |
| \* Remove user from a group                       | gpasswd -d                     | gpasswd -d student2 webmasters                          |
| Show all groups and memberships                   | cat /etc/group                 |                                                         |
|                                                   |                                |                                                         |
|**Misc**                                           |                                |                                                         |
| Locate a command                                  | which                          | which useradd                                           |
|                                                   |                                |                                                         |
| **Pattern matching**                              |                                |                                                         |
| (list conf or cnf ending files in /etc directory) | grep                           | ls /etc \| grep -E “co?nf$”                             |
| Find a file by partial name                       | find                           | find /etc -name \*conf                                  |
|                                                   |                                |                                                         |
| **Archieving**                                     |                                |                                                       |
| Archive (create)                                  | tar -czvf                      | tar -czvf webbisivut.tz /var/www                        |
| Archive (list)                                    | tar -tzvf                      | tar -tzvf  webbisivut.tz                                |
| Archive (extract)                                 | tar -xzvf                      | tar -xzvf webbisivut.tz  #extracts to current directory |
