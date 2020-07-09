##Revisions and the Cloud
Version Control is a system that allows you to revisit various versions of a file or set of files by recording changes. Through version control, one can revert a file or project to a previous version, track modifications and modifying individuals, and compare changes. By utilizing a Version Control System (VCS), mistakes with files can easily be rectified.
A Distributed Version Control systems (DVCS) addresses the major vulnerability of the CVS: the server as a single point of failure. If a CVS goes down, collaborators cannot work with each other on a file or save changes and new versions. Also, in the event of corruption of a central database’s hard disk — with the absence of backups — all work will be lost, except for any portions on local machines.
Git is a DVCS that stores data in a file system made up of snapshots. Each time you save a changed version of your project — called commit — Git creates a snapshot of the file and stores a reference to it. If the file has not changed, Git only stores a reference to the already-stored identical version of it.
Every single change applied to any file or directory is tracked by Git. And, as the gatekeeper, Git will always detect file corruption or loss of information in transit.
Files in Git can reside in three main states: committed, modified and staged.
Committed
Data is securely stored in a local database
Modified
File has been changed but not committed to the database
Staged
Flagged a file’s changed version to be committed in the next snapshot
