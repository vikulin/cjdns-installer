if exist %PROGRAMDATA%\cjdns\cjdroute.conf (
	rem Not clobbering config
) else (
	cjdroute.exe --genconf > %PROGRAMDATA%\cjdns\cjdroute.conf
	if exist addPublicPeers.vbs (
		rem Add public peers to config file
		cscript addPublicPeers.vbs
	)
)
