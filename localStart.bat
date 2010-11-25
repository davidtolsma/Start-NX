@ECHO OFF
:: cls

:: Where this script is run from
    set thisLocation=%~dp0

:: The StartNX application is located at
    set startNXLocation=M:\Documents\MyProjects\scriptsAndPrograms\NX_Scripts\startNX
    set startNX=%startNXLocation%\start.bat


:: Override environment variables

    :: User Defaults for NX

    :: Store user customizations
    set UGII_LOCAL_USER_DEFAULTS=%startNXLocation%\nxPreferences\nx4_user.dpv
    
    
    :: NX Location
        set UGII_BASE_DIR=C:\PROGRA~1\UGS\NX4~1.0\
        set UGII_ROOT_DIR=%UGII_BASE_DIR%UGII\
        
    :: point to the application directory instead of custom_dirs.dat, easier to maintain
        ::set UGII_USER_DIR=
   
    :: Where should execute NX/Open application directory look by default
        ::set UGII_INITIAL_UFUN_DIR=H:\sandbox_kbtd\kbtd\libufusr\win
       
    :: Set Machine User environment setting
        ::set UGII_CUSTOM_DIRECTORY_FILE=%thisLocation%custom_dirs.dat
    
    :: Visually see the coverage of a Journaling when creating a Journal file
        ::set UGII_JOURNAL_INDICATOR=1
        
        
    :: Enable class selection on the graphics display dialog bars
    :: UGII_CSD_ON_DIALOG_BAR=1
    
    :: Enable class selection on the selection toolbar
    :: UGII_CSD_ON_TOOLBAR=1
    
    :: Set Default Role, MTX file must be in the ugii\menus\roles\
    :: UGII_DEFAULT_ROLE=example.mtx
    
    :: Text file to map directories between windows and unix
    :: UGII_DIRECTORY_MAP_FILE=<path to file>
    
    :: Enable view dynamics under the function keys (F1 -> F4)
    :: UGII_FKEY_DYNAMICS=1
    
    :: Save history.pax palette file in a specific location
    :: UGII_HISTORY_PALETTE_DIR=<path>
    
    :: Prevents the syslog from being removed from temp
    :: UGII_KEEP_SYSTEM_LOG=1
    
    :: File difference time tolerance
    :: UGII_MODIFICATIONS_TIME_TOLERANCE=60
    
    :: Turn of folded menus and prevent recording actions
    :: UGII_NO_FOLDED_MENUS=1
    
    :: Store nx_mru.txt file for folding of menus
    :: UGII_NX_MRU_DIR=path (Internal Only)
    :: UGII_USER_PROFILE_DIR=<path>
    
    :: Default location for interactively created palettes
    :: UGII_PALETTE_WORK_DIR=<path>
    
    :: Allow for opening of Solid Edge Assemblies
    :: UGII_SE_INTEROP=1
    
    :: Internal, Additional information is written to syslog
    :: RECORD_PART_MODIFICATIONS=1
    
    :: Internal, Additional information is written to the syslog
    :: UGII_CHECKING_LEVEL=1
    
    :: Internal, Allows you to open a part that may not be otherwise able to open
    :: UGII_ENABLE_LINK_FIXUP=1
    
    :: Required for interoperability to function between Solid Edge and NX
    :: UGII_MONIKER=1
    
    :: Prevents NX from defaulting to sketch on face when extruding
    :: Customer Defautls: Modeling->Extras->Sketch on Planar Faces
    :: UGII_SECTION_USE_PLANAR_FACE=1
    
    :: Default location of your pattern files
    :: UGII_PATDIR=<path>
    
    :: If attribute exists on a component then component is exluded by all parts list
    :: PLIST_IGNORE_MEMEBER=1
    
    :: If attribute exists on a component then that component and all of its children is exluded
    :: PLIST_IGNORE_SUBASSEMBLY=1
    
    :: Creates a new parts list from a template
    :: UGII_DEFAULT_PARTS_LIST=<path>
    
    :: NX to perform an interactive drawing refile on part load
    :: UGII_DRAFT_DRAWING_UPGRADE=1
    
    :: All the expression editor to be viewed in Drafting
    :: UGII_DRAFT_EXPRESSIONS_OK=1
    
    :: Remove unsupported characters rom text in drafting
    :: UGII_DRAFT_REMOVE_UNSUPPORTED_CONTROL_CHARACTERS=TRUE
    
    :: Enable symbolic thread performance improvements
    :: UGII_DRAFT_SUPPRESS_THREAD_TRUE_HIDDEN_LINE=1
    
    :: Force Parts lists to Upper Case
    :: UGII_FORCE_PLIST_AUTO_TEXT_TO_UPPER_CASE=1
    
    :: Prevent Internal pars list from being used for Insert->Parts List
    :: UGII_IGNORE_INTERNAL_PLIST=1
    
    :: Delay View Updates preference can be saved with the part file, this overrides that setting
    :: UGII_SUPPRESS_VIEW_UPDATE=1
    
    :: Enable Surface Finish symbols in drafting
    :: UGII_SURFACE_FINISH=ON
    
    :: Defining a user defined location for custom symbols
    :: UGII_SYMBOL_LIBRARY_DIR=<path>
    
    :: User Defined Directory for Table Templaces defined by pax files
    :: UGII_TABLE_TEMPLATES=<path>
    
    :: Allows user defined balloon symbols to be applied to assembly drawings,
    :: UGII_UPDATE_ALL_ID_SYMBOLS_WITH_PLIST=1
    
    :: Activate the weld symbols utility for drafting
    :: UGII_WELD_SYMBOL=ON

    :: Converts promotions to WAVE geometry
    :: UGII_CONVERT_PROMOTION_TO_LINKED_BODY=1
    
    :: turn off preview generation for all component, Previews will still be generated for the Work and Display part 
    :: UGII_DISABLE_COMPONENT_PREVIEWS=TRUE
    
    :: disable the generation of preview images under all circumstances 
    :: UGII_DISABLE_PREVIEW=ON
    
    :: Overrides any settings in the customer defaults or the Save Options to always save trueshape data.
    :: UGII_FORCE_TRUESHAPE_SAVE=1
    
    ::  performance, in NX 4.0 we just import the JT B-rep as sheets and create a disjoint body out
    :: UGII_JT2UG_IMPORT_SHEETS_DISABLED=YES
    
    :: if internal errors recieved when adding a component to an assembly, this reverts to old style
    :: UGII_OLD_STYLE_STAGING_VIEW=YES
    
    :: disable part preview in Open Part file
    :: UGII_SHOW_PART_PREVIEW=OFF
    
    :: Required to load the Solid Edge V19 adapter when Solid Edge parts are opened in NX4.0.2
    :: UGII_USE_SEV19=1
    
    :: Allows JT assemblies to be opened as an assembly
    :: UGII_JT_ASSY_STRUCTURE=1
    
    :: Used to enable the new assembly mating constraints
    :: UGII_NEW_CONSTRAINTS_PROTOTYPE=1
    
    :: auto update for parts lists will not be turned off in NX/Manager mode
    :: UGII_UGMGR_PLIST_ALLOW_AUTO_UPDAT=1
    
    :: Set this to %UGII_BASE_DIR%\NXSHIP\data
    :: NXSHIP_CONFIG_DIR=<path>
    
    :: point UG to the install path of Process Aid Wizard
    :: UGPROCESS_AID=<path>
    
    :: Required for weld assistant. Points UG to the install directory for weld assistant. 
    :: E.g: D:\Program Files\EDS\Unigraphics NX\UGWELD
    :: UGWELD_DIR=<path>
    
    
        
:: Required for GM/PDL to run

    :: set HOME=C:\home
    
    :: GME Location
        :: set GMEPDL_VERSION=3b1
        :: set GMEPDL_BASE_DIR=%thisLocation%
        
    :: GM/PDL Location
        :: set GMPDL_BASE_DIR=C:\eng_apps\gmpdl3c21
        :: set GMPDL_DATA_DIR=%GMPDL_BASE_DIR%\data
    
    :: SET Web Browser path for the GM/PDL
        :: set WEB_BROWSER_EXE=C:\Program Files\Internet Explorer

        
    :: Start the GM/PDL
        :: call %GMPDL_BASE_DIR%\pdl_resource.bat
        
    :: Start GME
        ::call  %GMEPDL_BASE_DIR%%GMEPDL_VERSION%\gmepdl_resource.bat

call %startNX% NATIVE
