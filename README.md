# ss_grouping
Grouping VRChat screenshot files by date and time.  

The boundary between the groups is determined by the date and time of the screenshot files.  

If the date and time of two screenshot file files are more than 6 hours apart, they will be classified into different groups.  

Groups are divided into folders.

The name of the folder is the date and time (oldest and newest) of the screenshot files in the group.

## ss_grouping.ps1
This is the grouping program.  

In $TargetDirectory in the program, please set the path to the screenshot files you want to group.  


```powershell
$TargetDirectory = "C:\temp\SSグループ分け"
```

## ss_moveup.ps1
This is a program for ungrouping.

Use it if you want to undo a grouping of files.

In `$TargetDirectory` in the program, please set the path to the screenshot files you want to ungroup.  Move the files in the folders in `$TargetDirectory` to `$TargetDirectory`. It will move the files to the folder one level up.
