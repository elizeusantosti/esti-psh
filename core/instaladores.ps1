write-host("instaladores importado com sucesso") -f Green

$global:instaladores = @{
    wub = "https://www.sordum.org/files/download/windows-update-blocker/Wub.zip"
    zip  = "https://www.7-zip.org/a/7z2200-x64.exe"
    dwservice = "https://www.dwservice.net/download/dwagent_x86.exe"
    java = "https://sdlc-esd.oracle.com/ESD6/JSCDL/jdk/8u333-b02/2dee051a5d0647d5be72a7c0abff270e/jre-8u333-windows-x64.exe?GroupName=JSC&FilePath=/ESD6/JSCDL/jdk/8u333-b02/2dee051a5d0647d5be72a7c0abff270e/jre-8u333-windows-x64.exe&BHost=javadl.sun.com&File=jre-8u333-windows-x64.exe&AuthParam=1657039548_f9944d25bf07560263f9df10721a58af&ext=.exe"
    driver_booster = "https://cdn.iobit.com/dl/driver_booster_setup.exe"
    chrome = "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B54E90C0E-367E-00CC-C089-3904F63FCAB0%7D%26lang%3Dpt-BR%26browser%3D5%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe"
    wps = "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/onlinesetup/distsrc/600.1006/wpsinst/wps_office_inst.exe"
}