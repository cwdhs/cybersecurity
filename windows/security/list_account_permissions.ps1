# set active directory to script directory, as this script
# uses a relative path 'bin/accesschk.exe', so it will only
# correctly run the executable if it's relative to the script's
# directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location

# enumerate through all accounts, including service accounts
# and system accounts
Get-WmiObject Win32_UserProfile | ForEach-Object {
	# get the user's security identifier
	$sid = New-Object System.Security.Principal.SecurityIdentifier($_.SID)

	# get their user object
	$user = $sid.Translate([System.Security.Principal.NTAccount])

	# get their username
	$username = $user.Value

	# create a command to get their permissions
	$command = "bin/accesschk.exe """ + $username + """ -a * -q -nobanner"

	# print their username
	$username

	# print their permissions
	Invoke-Expression $command

	# print a blank line as spacing between entries
	""
}