$dir = $args[0]
$list = $args[1..$args.length]

mkdir $dir

$clnt = New-Object System.Net.WebClient

foreach($url in $list) 
{ 

	#Get the filename 
	$filename = [System.IO.Path]::GetFileName($url) 

	#Create the output path 
	$path = [System.IO.Path]::Combine($pwd.Path, $dir) 
	$file = [System.IO.Path]::Combine($path, $filename) 

	Write-Host -NoNewline "Getting ""$url""... "

	#Download the file using the WebClient 
	$clnt.DownloadFile($url, $file) 

	Write-Host "done." 
}
