@ECHO OFF

:: Where this script is run from
set startNXLocation=%~dp0


:: Application startup command
    set startApplication=call
    set startupNX=
    set debug=
    
    echo %UGII_ROOT_DIR%

:: Check for aguments, if non supplied display message and exit
    IF "%1"=="" GOTO :NOARGUMENT
    
:: Loop through all the arguments passed in
    :: in (set) %*=all arguments
    for %%f in (%*) Do CALL :CHECKARGUMENTS %%f
    
    :: Done checking arguments passed in now check and set the other variables
    GOTO :SETVARIABLES


:CHECKARGUMENTS
    set argument=%*

    IF "%argument%"=="NATIVE" set startupNX="%UGII_ROOT_DIR%ugii.bat"
    IF "%argument%"=="NXMANAGERLIGHT" set startupNX=%IPR%ugmanager_portal.bat
    IF "%argument%"=="PORTAL" set startupNX=%IPR%portal.bat
    
    IF "%argument%"=="DEBUGVISUALSTUDIO" set startApplication=start
    IF "%argument%"=="DEBUGVISUALSTUDIO" set debug=call %visualStudio% /debugexe ugraf
    
    IF "%argument%"=="NXDEBUG" set UGII_DISPLAY_DEBUG=1
    IF "%argument%"=="NXDEBUG"  set UGII_CHECKING_LEVEL=1
    
    :: jump to the end of the file, then it will return to who called this
    GOTO:EOF


:SETVARIABLES

::Verify variable is set
    IF "%startupNX%"=="" GOTO :NOARGUMENT

:: Visual Studio debug location
    set visualStudio="C:\Program Files\Microsoft Visual Studio .NET 2003\Common7\IDE\devenv.exe"

:: Defaults Location
    set NXDefaultSettingsLocation=%startNXLocation%nxPreferences
    
:: ----- NX DEFAULT SETTINGS
    set LOCAL_USER_DEFAULTS_LOCATION=%NXDefaultSettingsLocation%\nx3_user.dpv
    set GROUP_DEFAULTS_LOCATION=%NXDefaultSettingsLocation%\
    set SITE_DEFAULTS_LOCATION=%NXDefaultSettingsLocation%\
    set LOCAL_USER_PROFILE_DIR=%NXDefaultSettingsLocation%\%USERNAME%.mtx

    IF "%UGII_LOCAL_USER_DEFAULTS%"=="" set UGII_LOCAL_USER_DEFAULTS=%LOCAL_USER_DEFAULTS_LOCATION%
    IF "%UGII_GROUP_DIR%"=="" set UGII_GROUP_DIR=%GROUP_DEFAULTS_LOCATION%
    IF "%UGII_SITE_DIR%"=="" set UGII_SITE_DIR=%SITE_DEFAULTS_LOCATION%
    IF "%UGII_USER_PROFILE_DIR%"=="" set UGII_USER_PROFILE_DIR=%LOCAL_USER_PROFILE_DIR%
    
    :: NX5 new theme
    set UGII_DEFAULT_THEME=nxfb
    
    :: Portal Location
    set IPR=C:\LSE0910\
    
    :: Portal Advance Menu
    :: set WhereReferencePOMPref=1
    
:: ----- NX Location
    IF "%UGII_BASE_DIR%"=="" set UGII_BASE_DIR=C:\PROGRA~1\UGS\NX3~1.0\
    IF "%UGII_ROOT_DIR%"=="" set UGII_ROOT_DIR=%UGII_BASE_DIR%UGII\
    
    GOTO :STARTAPPLICATION
    

:: ----- LICENSE LOG
    :: set UGII_FLEX_NOTE=on
    set UGS_LICENSE_NOTE=on
    
:: What is the argument needed
:NOARGUMENT
    
    ECHO There was not a correct argument supplied
    ECHO ------------------------------------------
    ECHO.
    ECHO REQUIRED: NATIVE, NXMANAGERLIGHT, PORTAL
    ECHO OPTIONAL: DEBUGVISUALSTUDIO, NXDEBUG
    ECHO.    
    ECHO.
    ECHO EXAMPLE: %~0 NATIVE NXDEBUG
    ECHO.

    :: Exit the program
    GOTO :END

    
:STARTAPPLICATION
    :: Launch the Application
    :: echo %startApplication% %startupNX%
    %startApplication% %startupNX%
    


:END
    :: End of Program
