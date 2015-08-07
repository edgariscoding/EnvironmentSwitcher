; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "HostSwitcher"
#define VSDir "C:\projects\dotnet"
#define ProjectDir AddBackslash(VSDir) + MyAppName
#define BinDir AddBackslash(ProjectDir) + AddBackslash(MyAppName) + "bin\Release"
#define MyAppPublisher "Michael Sorens"
#define MyAppURL "http://www.simple-talk.com/author/michael-sorens/"
#define MyAppExeName "HostSwitcher.exe"
#define InstallDir SourcePath
#define MyAppVersion GetFileVersion(AddBackslash(BinDir) + MyAppName + ".exe")


[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D092D8DC-5D8C-4EB8-A0DB-B7856E3D1C23}
AppName={#MyAppName}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile={#InstallDir}\license.txt
OutputDir={#InstallDir}
OutputBaseFilename={#MyAppName} setup {#MyAppVersion}
Compression=lzma
SolidCompression=yes
SourceDir={#BinDir}
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany=CleanCode
VersionInfoDescription=Installer for {#MyAppName}
OutputManifestFile={#InstallDir}\{#MyAppName} manifest.txt
VersionInfoCopyright=(C) 2010 Michael Sorens
AppCopyright=Copyright � 2010 Michael Sorens
AppVersion={#MyAppVersion}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: HostSwitcher.exe; DestDir: "{app}"; Flags: ignoreversion
Source: MutexManager.dll; DestDir: "{app}"; Flags: ignoreversion
Source: WpfFormLibrary.dll; DestDir: "{app}"; Flags: ignoreversion
Source: route.ico; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; 
Name: {group}\{cm:ProgramOnTheWeb,{#MyAppName}}; Filename: {#MyAppURL}; WorkingDir: {app}; 
Name: {group}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}; WorkingDir: {app}; 
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon; WorkingDir: {app}; 
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: quicklaunchicon; WorkingDir: {app}; 

; Omit [Run] section because program must be run as administrator!