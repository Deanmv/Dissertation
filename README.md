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

Logic Play - Plays the project

Logic stop - Stops the project

Logic record - Records the project

Logic go to bar "*number*" - Sets to playhead to said bar

Logic (turn) loop on - Turns on looping of the project

Logic (turn) loop off - Turns off looping of the project

Logic show (the) mix her - Displays the mixer on screen [have used "mix her" here to better capture speech in Siri]

Logic hide (the) mix her - Hides the mixer on screen [have used "mix her" here to better capture speech in Siri]

Logic (turn) solo on - Turns solo on for the project.

Logic (turn) solo off - Turns solo off for the project.

Logic track up - Moves up one track (Used for when listening in solo mode)

Logic track down - Moves down on track (Used for when listening in solo mode)

Logic zoom in vertically - Zooms in the arrange window on the Y axis.

Logic zoom out vertically - Zooms out the arrange window on the Y axis.

Logic zoom in horizontally - Zooms in the arrange window on the X axis.

Logic zoom out horizontally - Zooms out the arrange window on the X axis.

Logic toggle record enable - Turns record enable on and off. (Can be used with track up and down to toggle multiple track at once.  NOTE: Does not have an "on or off" check, so will just toggle the option.

Legal Bits
----------

Copyright (c) 2013, Dean Vizer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Siri and Logic Pro remain the rights and trademarks of Apple.
