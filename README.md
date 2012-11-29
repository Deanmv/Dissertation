SiriProxy Controller for Logic Pro 
==================================

This repo is a plugin for [SiriProxy] (https://github.com/plamoni/SiriProxy) that will let the user control Apple's Logic Pro application from anywhere on the same wifi using Siri

Installation
------------

First you will need to install Siri Proxy and when up and running drop this plugin into your Siri Proxy Plug-ins, e.g:

`~/SiriProxy/plugins/`

There you will need to create the folder `siriproxy-logic` and then put the files from this repo into that folder. E.g. So then you have:

`~/SiriProxy/plugins/siriproxy-logic/these repo files`


Configuiring
------------

This plug-in uses "osascript" to open AppleScript files that I have created to run the commands within Logic.  Make sure that the AppleScript files are saved in:

`/siriproxy-logic/lib/osafiles/`

Also you will need to change your 'config.yml' file in:

`~/.siriproxy`

Please see configuration.yml for details.