COMING SOON
===========

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

You will need to change your 'config.yml' file in:

`~/.siriproxy`

Please see configuration.yml for details.

Available Commands  
------------------
NOTE: Words in () in commands are optional, commands work with or without.

Logic Play - Plays the project.

Logic Stop - Stops the project.

Logic Record - Records the project.

Logic Go To Bar "*number*" - Sets to playhead to said bar.

Logic (turn) Loop On - Turns on looping of the project.

Logic (turn) Loop Off - Turns off looping of the project.

Logic Show (the) Mixer - Displays the mixer on screen.

Logic Hide (the) Mixer - Hides the mixer on screen.

Logic (turn) Solo On - Turns solo on for the project.

Logic (turn) Solo Off - Turns solo off for the project.

Logic Track Up - Moves up one track (Used for when listening in solo mode).

Logic Track Down - Moves down on track (Used for when listening in solo mode).

Logic Zoom In Vertically - Zooms in the arrange window on the Y axis.

Logic Zoom Out Vertically - Zooms out the arrange window on the Y axis.

Logic Zoom In Horizontally - Zooms in the arrange window on the X axis.

Logic Zoom Out Horizontally - Zooms out the arrange window on the X axis.

Logic Toggle Record Enable - Turns record enable on and off. (Can be used with track up and down to toggle multiple track at once.) - NOTE: Does not have an "on or off" check, so will just toggle the option.

Legal Bits
----------

Copyright (c) 2013, Dean Vizer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Siri and Logic Pro remain the rights and trademarks of Apple.
