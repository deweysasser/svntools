A collection of svn command line tools for Unix and Cygwin.

Tools include:

* svn-mergebench: a tool to assist with merging changes from one
  branch to another. Computes mergable entries and creates a bash
  subshell with commands optimized for merging individual
  changesets. While you can still do regular subversion like
  set-coalescent merges I designed it to make git style one-to-one
  commit mapping between the branches trivial

* svn-clean: a tool to return a subversion sandbox to a pristine state
  by reverting changed files and removing unknown ones. This is a
  quicker way to do "rm -rf *; svn up"

