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

Logic loop on - Turns on looping of the project

Logic loop off - Turns off looping of the project

Logic show (the) mix her - Displays the mixer on screen [have used "mix her" here to better capture speech in Siri]

Logic hide (the) mix her - Hides the mixer on screen [have used "mix her" here to better capture speech in Siri]

Legal Bits
----------

Copyright (c) 2013, Dean Vizer

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

Siri and Logic Pro remain the rights and trademarks of Apple.