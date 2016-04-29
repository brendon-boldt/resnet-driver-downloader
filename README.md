# Driver Download Guide

Goto the Lenovo product search page [here](http://support.lenovo.com/us/en/GlobalProductSelector?C=1&TabName&linkTrack#), and find the correct model. Select the desired operating system and click "Show More" at the bottom of the page.

Run `links-clip.bat` to copy the Javascript command to the clipboard. Open the Chrome console (F12) on the driver download page, and paste the Javascript into the console.

Copy the URLs for the drivers to the clipboard.

Open Powershell in the script directory and run `.\dl-urls.ps1 [target directory] [right click to paste URLs]`

After the scipt has finished, the specified directory should contain the drivers 
