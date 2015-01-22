Ansible in docker on-the-fly
----------------------------

1) clone this repo.

2) Build the docker image

docker build -t ansiblesh .

3) Create a ~/bin directory, and copy the "ansible" script there,
   creating symlinks to each of the ansible programs:

    mkdir ~/bin
    cp ansible ~/bin
    cd ~/bin
    chmod a+x ansible
    ln -s ansible ansible-doc
    ln -s ansible ansible-galaxy
    ln -s ansible ansible-playbook
    ln -s ansible ansible-pull
    ln -s ansible ansible-vault

4) ensure that ~/bin is the first directory on your PATH.

5) test:

    # First, hit the old, system ansible:
    ~$ /usr/bin/ansible --version
    ansible 1.6.2
    # Now try ansible in docker
    ~$ ansible --version
    ansible 1.7.2

Notes:

Depending on how you run docker, you may want to add additional "-v" lines to
the ansible script to include your different library files like common.yml.
The Dockerfile and ansible script are both very short, and should be easy to 
decipher and modify to fit your needs.

If you have useful additions/suggestions to this, please drop me a note. 

-- Tom Bortels, bortels@gmail.com

