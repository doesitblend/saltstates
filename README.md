# saltstates

This is an example repo for use with testing 

This example only uses GitFS. The default `roots` is not enabled.
So all files are served from the Git repository via the file server 
on the master..


# environments

In vanilla Salt, environments are simply a directory tree with a top.sls file.

See https://docs.saltstack.com/en/latest/ref/states/top.html#environments

This works in Git by either supplying the same information directly in Git.
The environments available are derived in order of branch, tag, sha. You can 
limit or reshuffle 

Since we are pulling our directory tree from Git, we are able to make 
our directory tree match up to branches/tags in Git. The setup in this
example will use branches to differentiate the environments.

Configuring the GitFS remote will tell the Salt master where to look for files


# usage


