
#define Name "Presentation-Editor"
#define Version "0.0.0.16"
#define Publisher "Nazar"
#define URL "http://www.google.com"
#define ExeName "Presentation-Editor.exe"
[Setup]
AppId={{5BD36B54-9734-4970-B4B6-1E05E695340E}}
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}
DefaultDirName={pf}\{#Name}
DefaultGroupName={#Name}
OutputDir=D:\AYТС\5 семестр\СТП\presentation-editor\Install\Installer
OutputBaseFileName=test-setup
SetupIconFile=D:\AYТС\5 семестр\СТП\presentation-editor\Install\Installer\Presentation-Editor.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License_ENG.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "License_RUS.txt"
[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
[Files]


Source: "D:\AYТС\5 семестр\СТП\presentation-editor\WpfApplication1\WpfApplication1\bin\Debug\WpfApplication1.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\AYТС\5 семестр\СТП\presentation-editor\WpfApplication1\WpfApplication1\bin\Debug\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]
Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}"
Name: "{commondesktop}\{#Name}"; Filename: "{app}\{#ExeName}"; Tasks: desktopicon
[Code]
#include "ReInstall.pas"
