#### create base path :

````
repo_git/<name-of-git-repo>

````

#### update .git/config :

````
[core]
        repositoryformatversion = 0
        filemode = true
        bare = false
        logallrefupdates = true

[remote "origin"]
        url = ssh://git@github.com/<username>/<repo>.git
        fetch = +refs/heads/*:refs/remotes/origin/*

[branch "main"]
        remote = origin
        merge = refs/heads/main

[user]
        email = git-user-wich-owns-ssh-keys@mailserver.com
        name = git-user-wich-owns-ssh-keys

````

#### connect once to github through ssh (in order to populate /ssh/known_hosts file

````
ssh git@github.com
````
````
output : 

The authenticity of host 'github.com (140.82.121.4)' can't be established.
ECDSA key fingerprint is SHA256:p2QAMXNIC1TJYWeIOttrVc98/R1BUFWu3/LiyKgUfQM.
ECDSA key fingerprint is MD5:7b:99:81:1e:4c:91:a5:0d:5a:2e:2e:80:13:3f:24:ca.
Are you sure you want to continue connecting (yes/no)? yes

Warning: Permanently added 'github.com,140.82.121.4' (ECDSA) to the list of known hosts.
PTY allocation request failed on channel 0
Hi odeturmeny-vw-2021! You've successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.

````

#### prevent push error (invalid refs) 

change git branch -m master to main

````
git branch -m master to main

````


since initial git init command creates a master branch instead of main

````
git push origin main

error: src refspec main does not match any.
error: failed to push some refs to 'ssh://git@github.com/<username>/<repo>.git'


git show-ref
af6241d98472fd67d913b7f3543965616957d5f8 refs/heads/master
be383ebf62121f1059e6345cd7bf3928f1484174 refs/remotes/origin/main


git branch -a
* master
  remotes/origin/main

````



