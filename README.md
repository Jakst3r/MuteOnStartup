# Auto-Mute on Windows Login

Automatically mute your Windows PC's audio on login, including when connecting via Remote Desktop, using a PowerShell script.

## How It Works
A PowerShell script mutes the system volume on login by sending a mute command to the operating system. You place the script in the Startup Folder, so it executes every time you log in.

## Setup Guide

### 1. Create the PowerShell Script
Save the provided PowerShell script as MuteOnStartup.ps1 in a folder, e.g., C:\Scripts.

### 2. Add the Script to the Startup Folder

Press `Win + R`, type `shell:startup`, and hit Enter.

**In the Startup folder:**

Right-click and select New > Shortcut.

**For the Location, enter:**

`powershell.exe -ExecutionPolicy Bypass -File "C:\Scripts\MuteOnStartup.ps1"`

Click Next, name the shortcut (e.g., "Mute On Startup"), and click Finish.

### 3. Test the Script

Log off and log back in (or connect via Remote Desktop) to ensure the system volume is muted.

## Notes
The -ExecutionPolicy Bypass option ensures the script runs without being blocked by security policies.

If you need to trigger this script only for Remote Desktop connections, consider setting up a scheduled task or Group Policy.
