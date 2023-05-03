#!/bin/bash

#create dir and init git repo
rm -rf git
mkdir git
cd git
git init

#switch to red user
git config user.name "red"
git config user.email "red@redmail.ru"

#rename master to red0
git branch -m red0

#commit r0
unzip ../commits/commit0.zip
git add .
git commit -m "r0"

#commit r1
git rm -r ./
unzip ../commits/commit1.zip
git add .
git commit -m "r1"

#create red1 branch and switch to
git branch -c red1
git switch red1

#commit r2
git rm -r ./
unzip ../commits/commit2.zip
git add .
git commit -m "r2"

#switch to blue user
git config user.name "blue"
git config user.email "blue@bluemail.ru"

#create blue0 branch and switch to
git branch -c blue0
git switch blue0

#commit r3
git rm -r ./
unzip ../commits/commit3.zip
git add .
git commit -m "r3"

#switch to red user
git config user.name "red"
git config user.email "red@redmail.ru"

#switch to red0 branch
git switch red0

#commit r4
git rm -r ./
unzip ../commits/commit4.zip
git add .
git commit -m "r4"

#switch to blue user
git config user.name "blue"
git config user.email "blue@bluemail.ru"

#switch to blue0 branch
git switch blue0

#commit r5
git rm -r ./
unzip ../commits/commit5.zip
git add .
git commit -m "r5"

#create blue1 branch and switch to
git branch -c blue1
git switch blue1

#commit r6
git rm -r ./
unzip ../commits/commit6.zip
git add .
git commit -m "r6"

#commit r7
git rm -r ./
unzip ../commits/commit7.zip
git add .
git commit -m "r7"

#switch to blue0 branch
git switch blue0

#commit r8
git rm -r ./
unzip ../commits/commit8.zip
git add .
git commit -m "r8"

#switch to red user
git config user.name "red"
git config user.email "red@redmail.ru"

#switch to red1 branch
git switch red1

#commit r9
git rm -r ./
unzip ../commits/commit9.zip
git add .
git commit -m "r9"

#switch to blue user
git config user.name "blue"
git config user.email "blue@bluemail.ru"

#switch to blue1 branch
git switch blue1

#commit r10
git rm -r ./
unzip ../commits/commit10.zip
git add .
git commit -m "r10"

#switch to red user
git config user.name "red"
git config user.email "red@redmail.ru"

#switch to red0 branch
git switch red0

#commit r11
git rm -r ./
unzip ../commits/commit11.zip
git add .
git commit -m "r11"

#switch to red1 branch
git switch red1

#commit r12
git rm -r ./
unzip ../commits/commit12.zip
git add .
git commit -m "r12"

#switch to blue user
git config user.name "blue"
git config user.email "blue@bluemail.ru"

#switch to blue0 branch
git switch blue0

#commit r13
git rm -r ./
unzip ../commits/commit13.zip
git add .
git commit -m "r13"

#switch to red user
git config user.name "red"
git config user.email "red@redmail.ru"

#switch to red1 branch
git switch red1

#commit r14
git rm -r ./
unzip ../commits/commit14.zip
git add .
git commit -m "r14"

#switch to blue user
git config user.name "blue"
git config user.email "blue@bluemail.ru"

#switch to blue0 branch
git switch blue0

#commit r15
git rm -r ./
unzip ../commits/commit15.zip
git add .
git commit -m "r15"

#switch to red user
git config user.name "red"
git config user.email "red@redmail.ru"

#switch to red1 branch
git switch red1

#commit r16
git rm -r ./
unzip ../commits/commit16.zip
git add .
git commit -m "r16"

#switch to blue user
git config user.name "blue"
git config user.email "blue@bluemail.ru"

#switch to blue0 branch
git switch blue0

#add files for r17 commit
git rm -r ./
unzip ../commits/commit17.zip
git add .
git commit -m "pre r17"

#merge red1 to blue0
git merge red1 --no-commit
#automatic merge failed
#fix conflicts and merge
rm A.java
rm C.java
cp ../to_merge/merge_red1_to_blue0/A.java A.java
cp ../to_merge/merge_red1_to_blue0/C.java C.java
git add .
git commit -m "r17"

#switch to blue1 branch
git switch blue1

#add files for r18 commit
git rm -r ./
unzip ../commits/commit18.zip
git add .
git commit -m "pre r18"

#merge blue0 to blue1
git merge blue0 --no-commit
#automatic merge failed
#fix conflicts and merge
rm A.java
rm C.java
cp ../to_merge/merge_blue0_to_blue1/A.java A.java
cp ../to_merge/merge_blue0_to_blue1/C.java C.java
git add .
git commit -m "r18"

#switch to red user
git config user.name "red"
git config user.email "red@redmail.ru"

#switch to red0 branch
git switch red0

#add files for r19 commit
git rm -r ./
unzip ../commits/commit19.zip
git add .
git commit -m "pre r19"

#merge blue1 to red0
git merge blue1 --no-commit
#automatic merge failed
#fix conflicts and merge
rm A.java
rm C.java
cp ../to_merge/merge_blue1_to_red0/A.java A.java
cp ../to_merge/merge_blue1_to_red0/C.java C.java
git add .
git commit -m "r19"

#show log
git log --all --graph
