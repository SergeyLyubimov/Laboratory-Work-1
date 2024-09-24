@echo off
set /p "tag=Enter tag: "
git checkout dev
git push -u origin dev
git push -u origin dev:prd
git checkout prd
git tag %tag%
git push origin --tags