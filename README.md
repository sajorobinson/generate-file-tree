# generate-file-tree

**generate-file-tree** is a PowerShell script that recursively lists all of the files and some useful information and outputs it to a csv.

## Overview

I wrote this script while I was working on a team that had a collection of documentation on a shared network drive. The network drive was expansive, and everyone on the team had read/write access. As a result, the folder structure was difficult to navigate, and there were many files that had not been updated in years.

This script creates a recursive tree of all the files in a directory in Windows. Then, it outputs the following information for each file to a CSV:

* File name
* File path
* File creation time
* File laste write time
* File last access time (commented out because Windows 7 does not keep track of this without a registry edit)

This script helped me to get a better idea of what documentation the team had in one view.
