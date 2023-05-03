#!/bin/bash
PWDD=$PWD

#prepare working directory
rm -rf svn
mkdir svn
cd svn

svnadmin create svn_server
svn mkdir -m "init" file://$PWDD/svn/svn_server/branches

#create red0 branch
svn mkdir -m "create red0 branch" file://$PWDD/svn/svn_server/branches/red0 --username=red

#create workdir
svn checkout file://$PWDD/svn/svn_server/branches/red0 workdir
cd workdir

#commit r0
svn delete *
unzip ../../commits/commit0.zip
svn add *
svn commit -m "my r0" --username=red

#commit r1
svn delete *
unzip ../../commits/commit1.zip
svn add *
svn commit -m "my r1" --username=red

#create red1 branch
svn copy -m "create red1 branch" file://$PWDD/svn/svn_server/branches/red0 file://$PWDD/svn/svn_server/branches/red1 --username=red

#switch to red1 branch
svn switch file://$PWDD/svn/svn_server/branches/red1

#commit r2
svn delete *
unzip ../../commits/commit2.zip
svn add *
svn commit -m "my r2" --username=red

#create blue0 branch
svn copy -m "create blue0 branch" file://$PWDD/svn/svn_server/branches/red1 file://$PWDD/svn/svn_server/branches/blue0 --username=blue

#switch to blue0 branch
svn switch file://$PWDD/svn/svn_server/branches/blue0

#commit r3
svn delete *
unzip ../../commits/commit3.zip
svn add *
svn commit -m "my r3" --username=blue

#switch to red0 branch
svn switch file://$PWDD/svn/svn_server/branches/red0

#commit r4
svn delete *
unzip ../../commits/commit4.zip
svn add *
svn commit -m "my r4" --username=red

#switch to blue0 branch
svn switch file://$PWDD/svn/svn_server/branches/blue0

#commit r5
svn delete *
unzip ../../commits/commit5.zip
svn add *
svn commit -m "my r5" --username=blue

#create blue1 branch
svn copy -m "create blue1 branch" file://$PWDD/svn/svn_server/branches/blue0 file://$PWDD/svn/svn_server/branches/blue1 --username=blue

#switch to blue1 branch
svn switch file://$PWDD/svn/svn_server/branches/blue1

#commit r6
svn delete *
unzip ../../commits/commit6.zip
svn add *
svn commit -m "my r6" --username=blue

#commit r7
svn delete *
unzip ../../commits/commit7.zip
svn add *
svn commit -m "my r7" --username=blue

#switch to blue0 branch
svn switch file://$PWDD/svn/svn_server/branches/blue0

#commit r8
svn delete *
unzip ../../commits/commit8.zip
svn add *
svn commit -m "my r8" --username=blue

#switch to red1 branch
svn switch file://$PWDD/svn/svn_server/branches/red1

#commit r9
svn delete *
unzip ../../commits/commit9.zip
svn add *
svn commit -m "my r9" --username=red

#switch to blue1 branch
svn switch file://$PWDD/svn/svn_server/branches/blue1

#commit r10
svn delete *
unzip ../../commits/commit10.zip
svn add *
svn commit -m "my r10" --username=blue

#switch to red0 branch
svn switch file://$PWDD/svn/svn_server/branches/red0

#commit r11
svn delete *
unzip ../../commits/commit11.zip
svn add *
svn commit -m "my r11" --username=red

#switch to red1 branch
svn switch file://$PWDD/svn/svn_server/branches/red1

#commit r12
svn delete *
unzip ../../commits/commit12.zip
svn add *
svn commit -m "my r12" --username=red

#switch to blue0 branch
svn switch file://$PWDD/svn/svn_server/branches/blue0

#commit r13
svn delete *
unzip ../../commits/commit13.zip
svn add *
svn commit -m "my r13" --username=blue

#switch to red1 branch
svn switch file://$PWDD/svn/svn_server/branches/red1

#commit r14
svn delete *
unzip ../../commits/commit14.zip
svn add *
svn commit -m "my r14" --username=red

#switch to blue0 branch
svn switch file://$PWDD/svn/svn_server/branches/blue0

#commit r15
svn delete *
unzip ../../commits/commit15.zip
svn add *
svn commit -m "my r15" --username=blue

#switch to red1 branch
svn switch file://$PWDD/svn/svn_server/branches/red1

#commit r16
svn delete *
unzip ../../commits/commit16.zip
svn add *
svn commit -m "my r16" --username=red

#switch to blue0 branch
svn switch file://$PWDD/svn/svn_server/branches/blue0

#commit r17
svn delete *
unzip ../../commits/commit17.zip
svn add *
svn commit -m "my pre r17" --username=blue

#merge red1 to blue0
svn switch file://$PWDD/svn/svn_server/branches/blue0
svn merge --accept=working file://$PWDD/svn/svn_server/branches/red1
#fix confliicts
svn delete A.java C.java E.java J.java
cp ../../to_merge/merge_red1_to_blue0/A.java A.java
cp ../../to_merge/merge_red1_to_blue0/C.java C.java
cp ../../to_merge/merge_red1_to_blue0/E.java E.java
cp ../../to_merge/merge_red1_to_blue0/J.java J.java
svn add *
svn commit -m "my r17" --username=blue

#switch to blue1 branch
svn switch file://$PWDD/svn/svn_server/branches/blue1

#commit r18
svn delete *
unzip ../../commits/commit18.zip
svn add *
svn commit -m "my pre r18" --username=blue

#merge blue0 to blue1
svn switch file://$PWDD/svn/svn_server/branches/blue1
svn merge --accept=working file://$PWDD/svn/svn_server/branches/blue0
#fix confliicts
svn delete A.java C.java E.java J.java
cp ../../to_merge/merge_blue0_to_blue1/A.java A.java
cp ../../to_merge/merge_blue0_to_blue1/C.java C.java
cp ../../to_merge/merge_blue0_to_blue1/E.java E.java
cp ../../to_merge/merge_blue0_to_blue1/J.java J.java
svn add *
svn commit -m "my r18" --username=blue

#switch to red0 branch
svn switch file://$PWDD/svn/svn_server/branches/red0

#commit r19
svn delete *
unzip ../../commits/commit19.zip
svn add *
svn commit -m "my pre r19" --username=red

#merge blue1 to red0
svn switch file://$PWDD/svn/svn_server/branches/red0
svn merge --accept=working file://$PWDD/svn/svn_server/branches/blue1
#fix conflicts
svn delete A.java C.java E.java J.java
cp ../../to_merge/merge_blue1_to_red0/A.java A.java
cp ../../to_merge/merge_blue1_to_red0/C.java C.java
cp ../../to_merge/merge_blue1_to_red0/E.java E.java
cp ../../to_merge/merge_blue1_to_red0/J.java J.java
svn add *
svn commit -m "my r19" --username=blue
