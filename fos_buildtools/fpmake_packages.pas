program fpmake_packages;

{$Mode objfpc}
{$H+}
{$inline on}

 uses fpmkunit,classes,sysutils,fos_buildtools;

 Var
   P   : TPackage;

 begin
   with Installer(TFOSInstaller) do begin
    P := AddPackage('FRE_HAL');
    with p do begin
       OSes      := cFOS_BUILD_OSes;
       Directory := cFOS_BUILD_PREFIX;
       Dependencies.Add('FRE_CORE');
       Dependencies.Add('FRE_DB');
       Dependencies.Add('FRE_INTF');
       Dependencies.Add('FRE_BLKCOM');
       Dependencies.Add('fcl-process');
       with Targets do begin
         AddUnit('fre_hal_schemes.pas');
         AddUnit('fre_hal_utils.pas');
         AddUnit('fre_hal_redirect.pas');
         AddUnit('fre_testcase.pas');
         AddUnit('fre_testmethod.pas');
         AddUnit('fre_do_safejob.pas');
         AddUnit('fre_alert.pas');
         AddUnit('fre_zfs.pas');
         AddUnit('fre_scsi.pas');
         AddUnit('fre_hal_disk.pas');
         AddUnit('fos_stats_control_interface.pas');
         AddUnit('fos_vm_control_interface.pas');
         AddUnit('fos_captiveportal_interface.pas');
         AddUnit('fos_captiveportalhal.pas');
         AddUnit('fos_urlredirectunit.pas');
         AddUnit('fre_base_parser.pas');
         AddUnit('fre_certificate_common.pas');
         AddUnit('fre_certificate_app.pas');
       end;
    end;
    Run;
   end;
 end.
