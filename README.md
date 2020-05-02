# `xccov` Report: An Xcode Coverage Reporter 
 
A Rails application that can be deployed to aggregate code coverage reports generated from Xcode. Specifically, it allows you to upload JSON files generated from `xccov` and it will display historical trends, just like you'd see in Xcode Server! But without needing another Apple-specific machine.

## Motivation

This is a project I worked on for a software testing class in graduate school at UT.

## Installation Notes

Please be sure to run `bundle install` first before attempting to set up this application. By default, this will run on port 3000.

This uses Ruby version 2.6.3.
