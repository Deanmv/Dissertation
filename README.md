SiriProxy Controller for Logic Pro 
==================================

This repo is a plugin for [SiriProxy] (https://github.com/plamoni/SiriProxy) that will let the user control Apple's Logic Pro application from anywhere on the same wifi using Siri

Installation
------------

First you will need to install Siri Proxy and when up and running drop this plugin into your Siri Proxy Plug-ins folder, e.g:

'~/SiriProxy/plugins'

There you will need to create the folder 'SiriProxy-Logic' and then put the files from this repo into that folder.

Configuiring
------------

This plug-in uses "osascript" to open AppleScript files that I have created to run the commands within Logic.  Make sure that the AppleScript files are saved in:

'/SiriProxy-Logic/lib/osafiles/'

Also you will need to change your 'config.yml' file in:

'~/.siriproxy' 

to include:

- name: 'Logic'
  path: (The location of the plugin) e.g. '~/SiriProxy/plugins/SiriProxy-Logic'
  host: (The location of Logic if not running on same device as Siri Proxy server e.g '192.168.0.3'