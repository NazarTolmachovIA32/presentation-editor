$VerFromAssemblyInfo = get-content D:\AYТС\5 семестр\СТП\presentation-editor\WpfApplication1
$InstallScript = get-content Install\InstallPresentation-EditorUnicode.iss
$VerFromAssemblyInfo[26][27]
$i = 27
$verString = ""
do
	{
	$verString = $verString + $VerFromAssemblyInfo[26][$i]
	$i = $i + 1
	}
while($VerFromAssemblyInfo[26][$i] -ne ')')
$verString
$InstallScript[2]
$InstallScript[2] = "#define Version " + $verString
$InstallScript[2]
$InstallScript | set-content Install\InstallPresentation-EditorUnicode.iss

  
