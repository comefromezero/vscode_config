title vscode config install

set Extensions_=C:\Users\Administrator\.vscode\extensions
set Ext_config_=C:\Users\Administrator\.vscode
set RAR=C:\Program Files\WinRAR\
set Config_=C:\Users\Administrator\AppData\Roaming\Code\User




path %PATH%;%RAR%

echo plugin

if exist %Extensions_% (
	
	WinRAR x -o+ vscode_config.part01.rar %Extensions_% 
	
) else (
	md %Extensions_%
	WinRAR x -o+ vscode_config.part01.rar %Extensions_% 
)

echo plugin config
if EXIST  %Ext_config_% ( 
	copy argv.json %Ext_config_%
) else (
	md %Ext_config_%
	copy argv.json %Ext_config_%
)


echo vscode keybindings and config
if EXIST  %Config_% ( 
	copy globalStorage %Config_%
	copy snippets %Config_%
	copy keybindings.json %Config_%
	copy settings.json %Config_%
) else (
	md %Config_%
	copy globalStorage %Config_%
	copy snippets %Config_%
	copy keybindings.json %Config_%
	copy settings.json %Config_%
)

pause

