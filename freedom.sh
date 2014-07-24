#!/bin/bash

#GCC Freedom

echo
echo
echo This will modify your build environment to allow for custom GCC use
echo Some tweaking may need to be involved in attempting this on a custom kernel
echo
echo

DIR=$(pwd)

#cd $DIR/build/
#git fetch https://github.com/IAmTheOneTheyCallNeo/android_build cm-10.2-freedom && git cherry-pick f3fad78b59704464deabed17e595e8de2e634584

#cd $DIR/build
#git fetch https://github.com/JustArchi/android_build && git cherry-pick 8e1b82c082a8de9160e6c0fc3ded37b591c3e517

cd $DIR/external/oprofile/
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_oprofile cm-10.2 && git cherry-pick 8e47b75e800f47f7b5655dd0dcaa177091a75b04

cd $DIR/art
git fetch https://github.com/JustArchi/android_art && git cherry-pick 71a0ca3057cc3865bd8e41dcb94443998d028407

cd $DIR/frameworks/rs
git fetch https://github.com/JustArchi/android_frameworks_rs && git cherry-pick 525af84628f8db47688de392b13c1c2fa73854bb

cd $DIR/external/bash
git fetch https://github.com/IAmTheOneTheyCallNeo/android_external_bash && git cherry-pick 40f846bdadccbb0207f280f89efce6787312768f

cd $DIR/

echo
echo
echo Please visit https://github.com/IAmTheOneTheyCallNeo/android_build/commit/f3fad78b59704464deabed17e595e8de2e634584 for instructions
echo
echo
