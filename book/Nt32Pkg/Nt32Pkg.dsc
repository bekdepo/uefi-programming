## @file
# EFI/Framework Emulation Platform with UEFI HII interface supported.
#
# The Emulation Platform can be used to debug individual modules, prior to creating
#    a real platform. This also provides an example for how an DSC is created.
#
# Copyright (c) 2006 - 2011, Intel Corporation. All rights reserved.<BR>
#
#    This program and the accompanying materials
#    are licensed and made available under the terms and conditions of the BSD License
#    which accompanies this distribution. The full text of the license may be found at
#    http://opensource.org/licenses/bsd-license.php
#
#    THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
#    WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
#
##

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = NT32
  PLATFORM_GUID                  = EB216561-961F-47EE-9EF9-CA426EF547C2
  PLATFORM_VERSION               = 0.4
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/NT32
  SUPPORTED_ARCHITECTURES        = IA32
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Nt32Pkg/Nt32Pkg.fdf


  DEFINE UEFI_BOOK_DIR                  = uefi\book
################################################################################
#
# SKU Identification section - list of all SKU IDs supported by this
#                              Platform.
#
################################################################################
[SkuIds]
  0|DEFAULT              # The entry: 0|DEFAULT is reserved and always required.

################################################################################
#
# Library Class section - list of all Library Classes needed by this Platform.
#
################################################################################
[LibraryClasses]
  #
  # Entry point
  #
  PeiCoreEntryPoint|MdePkg/Library/PeiCoreEntryPoint/PeiCoreEntryPoint.inf
  PeimEntryPoint|MdePkg/Library/PeimEntryPoint/PeimEntryPoint.inf
  DxeCoreEntryPoint|MdePkg/Library/DxeCoreEntryPoint/DxeCoreEntryPoint.inf
  UefiDriverEntryPoint|MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint.inf
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  #
  # Basic
  #
  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  SynchronizationLib|MdePkg/Library/BaseSynchronizationLib/BaseSynchronizationLib.inf
  PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
  CpuLib|MdePkg/Library/BaseCpuLib/BaseCpuLib.inf
  IoLib|MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic.inf
  PciLib|MdePkg/Library/BasePciLibCf8/BasePciLibCf8.inf
  PciCf8Lib|MdePkg/Library/BasePciCf8Lib/BasePciCf8Lib.inf
  PciExpressLib|MdePkg/Library/BasePciExpressLib/BasePciExpressLib.inf
  CacheMaintenanceLib|MdePkg/Library/BaseCacheMaintenanceLib/BaseCacheMaintenanceLib.inf
  PeCoffLib|MdePkg/Library/BasePeCoffLib/BasePeCoffLib.inf
  PeCoffGetEntryPointLib|MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf
  #
  # UEFI & PI
  #
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
  UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  UefiRuntimeLib|MdePkg/Library/UefiRuntimeLib/UefiRuntimeLib.inf
  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
  UefiHiiServicesLib|MdeModulePkg/Library/UefiHiiServicesLib/UefiHiiServicesLib.inf
  HiiLib|MdeModulePkg/Library/UefiHiiLib/UefiHiiLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf
  UefiDecompressLib|IntelFrameworkModulePkg/Library/BaseUefiTianoCustomDecompressLib/BaseUefiTianoCustomDecompressLib.inf
  PeiServicesTablePointerLib|MdePkg/Library/PeiServicesTablePointerLib/PeiServicesTablePointerLib.inf
  PeiServicesLib|MdePkg/Library/PeiServicesLib/PeiServicesLib.inf
  DxeServicesLib|MdePkg/Library/DxeServicesLib/DxeServicesLib.inf
  DxeServicesTableLib|MdePkg/Library/DxeServicesTableLib/DxeServicesTableLib.inf
  
  #
  # Generic Modules
  #
  UefiUsbLib|MdePkg/Library/UefiUsbLib/UefiUsbLib.inf
  UefiScsiLib|MdePkg/Library/UefiScsiLib/UefiScsiLib.inf
  NetLib|MdeModulePkg/Library/DxeNetLib/DxeNetLib.inf
  IpIoLib|MdeModulePkg/Library/DxeIpIoLib/DxeIpIoLib.inf
  UdpIoLib|MdeModulePkg/Library/DxeUdpIoLib/DxeUdpIoLib.inf
  DpcLib|MdeModulePkg/Library/DxeDpcLib/DxeDpcLib.inf
  OemHookStatusCodeLib|MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull.inf
  GenericBdsLib|IntelFrameworkModulePkg/Library/GenericBdsLib/GenericBdsLib.inf
  SecurityManagementLib|MdeModulePkg/Library/DxeSecurityManagementLib/DxeSecurityManagementLib.inf
  TimerLib|MdePkg/Library/BaseTimerLibNullTemplate/BaseTimerLibNullTemplate.inf
  SerialPortLib|MdePkg/Library/BaseSerialPortLibNull/BaseSerialPortLibNull.inf
  CapsuleLib|MdeModulePkg/Library/DxeCapsuleLibNull/DxeCapsuleLibNull.inf
  #
  # Platform
  #
  PlatformBdsLib|Nt32Pkg/Library/Nt32BdsLib/Nt32BdsLib.inf
  #
  # Misc
  #
  DebugLib|IntelFrameworkModulePkg/Library/PeiDxeDebugLibReportStatusCode/PeiDxeDebugLibReportStatusCode.inf
  DebugPrintErrorLevelLib|MdeModulePkg/Library/DxeDebugPrintErrorLevelLib/DxeDebugPrintErrorLevelLib.inf
  PerformanceLib|MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull.inf
  DebugAgentLib|MdeModulePkg/Library/DebugAgentLibNull/DebugAgentLibNull.inf
  #
  # Book
  #
  sstdLib|$(UEFI_BOOK_DIR)/sstdPkg/Library/sstdLib.inf
  
[LibraryClasses.common.USER_DEFINED]
  DebugLib|MdePkg/Library/BaseDebugLibNull/BaseDebugLibNull.inf
  PeCoffExtraActionLib|MdePkg/Library/BasePeCoffExtraActionLibNull/BasePeCoffExtraActionLibNull.inf
  ReportStatusCodeLib|MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib.inf
  OemHookStatusCodeLib|Nt32Pkg/Library/PeiNt32OemHookStatusCodeLib/PeiNt32OemHookStatusCodeLib.inf
  MemoryAllocationLib|MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf

[LibraryClasses.common.PEIM,LibraryClasses.common.PEI_CORE]
  #
  # PEI phase common
  #
  HobLib|MdePkg/Library/PeiHobLib/PeiHobLib.inf
  MemoryAllocationLib|MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib.inf
  ExtractGuidedSectionLib|MdePkg/Library/PeiExtractGuidedSectionLib/PeiExtractGuidedSectionLib.inf
  BaseMemoryLib|MdePkg/Library/BaseMemoryLibOptPei/BaseMemoryLibOptPei.inf
  IoLib|MdePkg/Library/PeiIoLibCpuIo/PeiIoLibCpuIo.inf
  PeCoffGetEntryPointLib|Nt32Pkg/Library/Nt32PeiPeCoffGetEntryPointLib/Nt32PeiPeCoffGetEntryPointLib.inf
  PeCoffExtraActionLib|Nt32Pkg/Library/PeiNt32PeCoffExtraActionLib/PeiNt32PeCoffExtraActionLib.inf
  DebugPrintErrorLevelLib|MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf

[LibraryClasses.common.PEI_CORE]
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  OemHookStatusCodeLib|MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull.inf

[LibraryClasses.common.PEIM]
  PcdLib|MdePkg/Library/PeiPcdLib/PeiPcdLib.inf
  OemHookStatusCodeLib|Nt32Pkg/Library/PeiNt32OemHookStatusCodeLib/PeiNt32OemHookStatusCodeLib.inf

[LibraryClasses.common]
  #
  # DXE phase common
  #
  BaseMemoryLib|MdePkg/Library/BaseMemoryLibOptDxe/BaseMemoryLibOptDxe.inf
  HobLib|MdePkg/Library/DxeHobLib/DxeHobLib.inf
  PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/DxeReportStatusCodeLib/DxeReportStatusCodeLib.inf
  OemHookStatusCodeLib|Nt32Pkg/Library/DxeNt32OemHookStatusCodeLib/DxeNt32OemHookStatusCodeLib.inf
  PeCoffExtraActionLib|Nt32Pkg/Library/DxeNt32PeCoffExtraActionLib/DxeNt32PeCoffExtraActionLib.inf
  ExtractGuidedSectionLib|MdePkg/Library/DxeExtractGuidedSectionLib/DxeExtractGuidedSectionLib.inf
  WinNtLib|Nt32Pkg/Library/DxeWinNtLib/DxeWinNtLib.inf

[LibraryClasses.common.DXE_CORE]
  HobLib|MdePkg/Library/DxeCoreHobLib/DxeCoreHobLib.inf
  MemoryAllocationLib|MdeModulePkg/Library/DxeCoreMemoryAllocationLib/DxeCoreMemoryAllocationLib.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf

[LibraryClasses.common.DXE_SMM_DRIVER]
  DebugLib|MdePkg/Library/BaseDebugLibNull/BaseDebugLibNull.inf

[LibraryClasses.common.UEFI_DRIVER]
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf

[LibraryClasses.common.UEFI_APPLICATION]
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  PrintLib|MdeModulePkg/Library/DxePrintLibPrint2Protocol/DxePrintLibPrint2Protocol.inf

################################################################################
#
# Pcd Section - list of all EDK II PCD Entries defined by this Platform
#
################################################################################
[PcdsFeatureFlag]
  gEfiMdeModulePkgTokenSpaceGuid.PcdStatusCodeUseSerial|FALSE
  gEfiMdeModulePkgTokenSpaceGuid.PcdDxeIplSwitchToLongMode|FALSE
  gEfiMdeModulePkgTokenSpaceGuid.PcdPeiCoreImageLoaderSearchTeSectionFirst|FALSE
  gEfiMdeModulePkgTokenSpaceGuid.PcdVariableCollectStatistics|TRUE

[PcdsFixedAtBuild]
  gEfiMdeModulePkgTokenSpaceGuid.PcdMaxSizeNonPopulateCapsule|0x0
  gEfiMdeModulePkgTokenSpaceGuid.PcdMaxSizePopulateCapsule|0x0
  gEfiMdePkgTokenSpaceGuid.PcdDebugPrintErrorLevel|0x80000040
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtFirmwareFdSize|0x2a0000
  gEfiMdePkgTokenSpaceGuid.PcdDebugPropertyMask|0x1f
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtFirmwareVolume|L"..\\Fv\\Nt32.fd"
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtFirmwareBlockSize|0x10000
  gEfiMdePkgTokenSpaceGuid.PcdReportStatusCodePropertyMask|0x0f
  gEfiMdeModulePkgTokenSpaceGuid.PcdResetOnMemoryTypeInformationChange|FALSE

################################################################################
#
# Pcd Dynamic Section - list of all EDK II PCD Entries defined by this Platform
#
################################################################################
[PcdsDynamicDefault.common.DEFAULT]
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtSerialPort|L"COM1!COM2"|VOID*|20
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtFileSystem|L".!..\..\..\..\EdkShellBinPkg\Bin\Ia32\Apps"|VOID*|106
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtGop|L"UGA Window 1!UGA Window 2"|VOID*|52
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtConsole|L"Bus Driver Console Window"|VOID*|52
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtVirtualDisk|L"FW;40960;512"|VOID*|26
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtMemorySize|L"64!64"|VOID*|12
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtPhysicalDisk|L"a:RW;2880;512!d:RO;307200;2048!j:RW;262144;512"|VOID*|100
  gEfiNt32PkgTokenSpaceGuid.PcdWinNtUga|L"UGA Window 1!UGA Window 2"|VOID*|52

  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageFtwSpareBase|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageFtwWorkingBase|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageVariableBase|0

[PcdsDynamicHii.common.DEFAULT]
  gEfiIntelFrameworkModulePkgTokenSpaceGuid.PcdSetupConOutColumn|L"SetupConsoleConfig"|gEfiGlobalVariableGuid|0x0|80
  gEfiIntelFrameworkModulePkgTokenSpaceGuid.PcdSetupConOutRow|L"SetupConsoleConfig"|gEfiGlobalVariableGuid|0x4|25
  gEfiIntelFrameworkModulePkgTokenSpaceGuid.PcdPlatformBootTimeOut|L"Timeout"|gEfiGlobalVariableGuid|0x0|10
  gEfiIntelFrameworkModulePkgTokenSpaceGuid.PcdHardwareErrorRecordLevel|L"HwErrRecSupport"|gEfiGlobalVariableGuid|0x0|1

###################################################################################################
#
# Components Section - list of the modules and components that will be processed by compilation
#                      tools and the EDK II tools to generate PE32/PE32+/Coff image files.
#
# Note: The EDK II DSC file is not used to specify how compiled binary images get placed
#       into firmware volume images. This section is just a list of modules to compile from
#       source into UEFI-compliant binaries.
#       It is the FDF file that contains information on combining binary files into firmware
#       volume images, whose concept is beyond UEFI and is described in PI specification.
#       Binary modules do not need to be listed in this section, as they should be
#       specified in the FDF file. For example: Shell binary (Shell_Full.efi), FAT binary (Fat.efi),
#       Logo (Logo.bmp), and etc.
#       There may also be modules listed in this section that are not required in the FDF file,
#       When a module listed here is excluded from FDF file, then UEFI-compliant binary will be
#       generated for it, but the binary will not be put into any firmware volume.
#
###################################################################################################
[Components.IA32]
  ##
  #  SEC Phase modules
  ##
  Nt32Pkg/Sec/SecMain.inf

  ##
  #  PEI Phase modules
  ##
  MdeModulePkg/Core/Pei/PeiMain.inf
  MdeModulePkg/Universal/PCD/Pei/Pcd.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  }
  MdeModulePkg/Universal/ReportStatusCodeRouter/Pei/ReportStatusCodeRouterPei.inf
  MdeModulePkg/Universal/StatusCodeHandler/Pei/StatusCodeHandlerPei.inf
  Nt32Pkg/WinNtOemHookStatusCodeHandlerPei/WinNtOemHookStatusCodeHandlerPei.inf
  Nt32Pkg/BootModePei/BootModePei.inf
  Nt32Pkg/StallPei/StallPei.inf
  Nt32Pkg/WinNtFlashMapPei/WinNtFlashMapPei.inf
  MdeModulePkg/Universal/Variable/Pei/VariablePei.inf
  Nt32Pkg/WinNtAutoScanPei/WinNtAutoScanPei.inf
  Nt32Pkg/WinNtFirmwareVolumePei/WinNtFirmwareVolumePei.inf
  Nt32Pkg/WinNtThunkPPIToProtocolPei/WinNtThunkPPIToProtocolPei.inf
  MdeModulePkg/Core/DxeIplPeim/DxeIpl.inf
  ##
  #  DXE Phase modules
  ##
  MdeModulePkg/Core/Dxe/DxeMain.inf {
    <LibraryClasses>
      NULL|MdeModulePkg/Library/DxeCrc32GuidedSectionExtractLib/DxeCrc32GuidedSectionExtractLib.inf
    <BuildOptions>
      *_*_IA32_CC_FLAGS =
  }

  MdeModulePkg/Universal/PCD/Dxe/Pcd.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  }
  Nt32Pkg/MetronomeDxe/MetronomeDxe.inf
  Nt32Pkg/RealTimeClockRuntimeDxe/RealTimeClockRuntimeDxe.inf
  Nt32Pkg/ResetRuntimeDxe/ResetRuntimeDxe.inf
  MdeModulePkg/Core/RuntimeDxe/RuntimeDxe.inf
  Nt32Pkg/FvbServicesRuntimeDxe/FvbServicesRuntimeDxe.inf
  MdeModulePkg/Universal/SecurityStubDxe/SecurityStubDxe.inf
  MdeModulePkg/Universal/SmbiosDxe/SmbiosDxe.inf
  MdeModulePkg/Universal/EbcDxe/EbcDxe.inf
  MdeModulePkg/Universal/MemoryTest/NullMemoryTestDxe/NullMemoryTestDxe.inf
  Nt32Pkg/WinNtThunkDxe/WinNtThunkDxe.inf
  Nt32Pkg/CpuRuntimeDxe/CpuRuntimeDxe.inf
  MdeModulePkg/Universal/FaultTolerantWriteDxe/FaultTolerantWriteDxe.inf
  Nt32Pkg/MiscSubClassPlatformDxe/MiscSubClassPlatformDxe.inf
  Nt32Pkg/TimerDxe/TimerDxe.inf
  MdeModulePkg/Universal/ReportStatusCodeRouter/RuntimeDxe/ReportStatusCodeRouterRuntimeDxe.inf
  MdeModulePkg/Universal/StatusCodeHandler/RuntimeDxe/StatusCodeHandlerRuntimeDxe.inf
  Nt32Pkg/WinNtOemHookStatusCodeHandlerDxe/WinNtOemHookStatusCodeHandlerDxe.inf
  MdeModulePkg/Universal/Variable/RuntimeDxe/VariableRuntimeDxe.inf
  MdeModulePkg/Universal/WatchdogTimerDxe/WatchdogTimer.inf
  MdeModulePkg/Universal/MonotonicCounterRuntimeDxe/MonotonicCounterRuntimeDxe.inf
  MdeModulePkg/Universal/CapsuleRuntimeDxe/CapsuleRuntimeDxe.inf
  MdeModulePkg/Universal/Console/ConPlatformDxe/ConPlatformDxe.inf
  MdeModulePkg/Universal/Console/ConSplitterDxe/ConSplitterDxe.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  }
  MdeModulePkg/Universal/Console/GraphicsConsoleDxe/GraphicsConsoleDxe.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  }
  MdeModulePkg/Universal/Console/TerminalDxe/TerminalDxe.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  }
  MdeModulePkg/Universal/DevicePathDxe/DevicePathDxe.inf
  MdeModulePkg/Universal/Disk/DiskIoDxe/DiskIoDxe.inf
  MdeModulePkg/Universal/Disk/PartitionDxe/PartitionDxe.inf
  MdeModulePkg/Universal/Disk/UnicodeCollation/EnglishDxe/EnglishDxe.inf
  MdeModulePkg/Bus/Pci/PciBusDxe/PciBusDxe.inf
  MdeModulePkg/Bus/Scsi/ScsiBusDxe/ScsiBusDxe.inf     ##This driver follows UEFI specification definition
  MdeModulePkg/Bus/Scsi/ScsiDiskDxe/ScsiDiskDxe.inf    ##This driver follows UEFI specification definition
  IntelFrameworkModulePkg/Bus/Pci/IdeBusDxe/IdeBusDxe.inf
  Nt32Pkg/WinNtBusDriverDxe/WinNtBusDriverDxe.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  }
  Nt32Pkg/WinNtBlockIoDxe/WinNtBlockIoDxe.inf
  Nt32Pkg/WinNtSerialIoDxe/WinNtSerialIoDxe.inf
  Nt32Pkg/WinNtGopDxe/WinNtGopDxe.inf
  Nt32Pkg/WinNtSimpleFileSystemDxe/WinNtSimpleFileSystemDxe.inf
  MdeModulePkg/Application/HelloWorld/HelloWorld.inf

  #
  # Network stack drivers
  # To test network drivers, need network Io driver(SnpNt32Io.dll), please refer to NETWORK-IO Subproject.
  #
  MdeModulePkg/Universal/Network/DpcDxe/DpcDxe.inf
  MdeModulePkg/Universal/Network/ArpDxe/ArpDxe.inf
  MdeModulePkg/Universal/Network/Dhcp4Dxe/Dhcp4Dxe.inf
  MdeModulePkg/Universal/Network/Ip4ConfigDxe/Ip4ConfigDxe.inf
  MdeModulePkg/Universal/Network/Ip4Dxe/Ip4Dxe.inf
  MdeModulePkg/Universal/Network/MnpDxe/MnpDxe.inf
  MdeModulePkg/Universal/Network/VlanConfigDxe/VlanConfigDxe.inf
  MdeModulePkg/Universal/Network/Mtftp4Dxe/Mtftp4Dxe.inf
  MdeModulePkg/Universal/Network/Tcp4Dxe/Tcp4Dxe.inf
  MdeModulePkg/Universal/Network/Udp4Dxe/Udp4Dxe.inf
  MdeModulePkg/Universal/Network/UefiPxeBcDxe/UefiPxeBcDxe.inf
  Nt32Pkg/SnpNt32Dxe/SnpNt32Dxe.inf

  MdeModulePkg/Universal/Network/IScsiDxe/IScsiDxe.inf

  IntelFrameworkModulePkg/Universal/BdsDxe/BdsDxe.inf
  MdeModulePkg/Universal/HiiDatabaseDxe/HiiDatabaseDxe.inf
  MdeModulePkg/Universal/SetupBrowserDxe/SetupBrowserDxe.inf
  MdeModulePkg/Universal/PrintDxe/PrintDxe.inf
  MdeModulePkg/Universal/DriverSampleDxe/DriverSampleDxe.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  }
  MdeModulePkg/Application/VariableInfo/VariableInfo.inf

  MdeModulePkg/Universal/PlatformDriOverrideDxe/PlatformDriOverrideDxe.inf


###################################################################################################
#
# BuildOptions Section - Define the module specific tool chain flags that should be used as
#                        the default flags for a module. These flags are appended to any 
#                        standard flags that are defined by the build process. They can be 
#                        applied for any modules or only those modules with the specific 
#                        module style (EDK or EDKII) specified in [Components] section.
#
###################################################################################################
[BuildOptions]
  DEBUG_*_IA32_DLINK_FLAGS = /EXPORT:InitializeDriver=$(IMAGE_ENTRY_POINT) /ALIGN:4096 /FILEALIGN:4096 /SUBSYSTEM:CONSOLE
  RELEASE_*_IA32_DLINK_FLAGS = /ALIGN:4096 /FILEALIGN:4096
  *_*_IA32_CC_FLAGS = /D EFI_SPECIFICATION_VERSION=0x0002000A /D TIANO_RELEASE_VERSION=0x00080006

#############################################################################################################
# NOTE:
# The following [Libraries.IA32] section is for building EDK module under the EDKII tool chain.
# If you want build EDK module for Nt32 platform, please uncomment [Libraries.IA32] section and
# libraries used by that EDK module.
# Currently, Nt32 platform do not has any EDK style module
#
#
#[Libraries.IA32]
  #
  # Libraries common to PEI and DXE
  #
  #  EdkCompatibilityPkg/Foundation/Efi/Guid/EfiGuidLib.inf
  #  EdkCompatibilityPkg/Foundation/Framework/Guid/EdkFrameworkGuidLib.inf
  #  EdkCompatibilityPkg/Foundation/Guid/EdkGuidLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/EfiCommonLib/EfiCommonLib.inf
  #  EdkCompatibilityPkg/Foundation/Cpu/Pentium/CpuIA32Lib/CpuIA32Lib.inf
  #  EdkCompatibilityPkg/Foundation/Cpu/Itanium/CpuIa64Lib/CpuIA64Lib.inf
  #  EdkCompatibilityPkg/Foundation/Library/CustomizedDecompress/CustomizedDecompress.inf
  #  EdkCompatibilityPkg/Foundation/Library/CompilerStub/CompilerStubLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/Dxe/Hob/HobLib.inf

  #
  # PEI libraries
  #
  #  EdkCompatibilityPkg/Foundation/Framework/Ppi/EdkFrameworkPpiLib.inf
  #  EdkCompatibilityPkg/Foundation/Ppi/EdkPpiLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/Pei/PeiLib/PeiLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/Pei/Hob/PeiHobLib.inf

  #
  # DXE libraries
  #
  #  EdkCompatibilityPkg/Foundation/Core/Dxe/ArchProtocol/ArchProtocolLib.inf
  #  EdkCompatibilityPkg/Foundation/Efi/Protocol/EfiProtocolLib.inf
  #  EdkCompatibilityPkg/Foundation/Framework/Protocol/EdkFrameworkProtocolLib.inf
  #  EdkCompatibilityPkg/Foundation/Protocol/EdkProtocolLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/Dxe/EfiDriverLib/EfiDriverLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/RuntimeDxe/EfiRuntimeLib/EfiRuntimeLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/Dxe/Graphics/Graphics.inf
  #  EdkCompatibilityPkg/Foundation/Library/Dxe/EfiIfrSupportLib/EfiIfrSupportLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/Dxe/Print/PrintLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/Dxe/EfiScriptLib/EfiScriptLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/Dxe/EfiUiLib/EfiUiLib.inf

  #
  # Print/Graphics Library consume SetupBrowser Print Protocol
  #
  #  EdkCompatibilityPkg/Foundation/Library/Dxe/PrintLite/PrintLib.inf
  #  EdkCompatibilityPkg/Foundation/Library/Dxe/GraphicsLite/Graphics.inf

[LibraryClasses.common]
  ShellLib|ShellPkg/Library/UefiShellLib/UefiShellLib.inf
  ShellCommandLib|ShellPkg/Library/UefiShellCommandLib/UefiShellCommandLib.inf
  FileHandleLib|ShellPkg/Library/UefiFileHandleLib/UefiFileHandleLib.inf
  ShellCEntryLib|ShellPkg/Library/UefiShellCEntryLib/UefiShellCEntryLib.inf
  SortLib|ShellPkg/Library/UefiSortLib/UefiSortLib.inf
  HandleParsingLib|ShellPkg/Library/UefiHandleParsingLib/UefiHandleParsingLib.inf
  
  PeCoffGetEntryPointLib|MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf
  PathLib|ShellPkg/Library/BasePathLib/BasePathLib.inf

[LibraryClasses.ARM]
  #
  # It is not possible to prevent the ARM compiler for generic intrinsic functions.
  # This library provides the instrinsic functions generate by a given compiler.
  # [LibraryClasses.ARM] and NULL mean link this library into all ARM images.
  #
  NULL|ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib.inf

[PcdsFixedAtBuild]
  gEfiShellPkgTokenSpaceGuid.PcdShellLibAutoInitialize|FALSE
  gEfiMdePkgTokenSpaceGuid.PcdUefiLibMaxPrintBufferSize|16000
!ifdef $(NO_SHELL_PROFILES)
  gEfiShellPkgTokenSpaceGuid.PcdShellProfileMask|0x00
!endif #$(NO_SHELL_PROFILES)

[Components]
  ShellPkg/Library/UefiFileHandleLib/UefiFileHandleLib.inf
  ShellPkg/Library/UefiShellLib/UefiShellLib.inf
  ShellPkg/Library/UefiShellCommandLib/UefiShellCommandLib.inf
  ShellPkg/Library/UefiShellLevel2CommandsLib/UefiShellLevel2CommandsLib.inf
  ShellPkg/Library/UefiHandleParsingLib/UefiHandleParsingLib.inf


  ShellPkg/Application/Shell/Shell.inf {
    <LibraryClasses>
      NULL|ShellPkg/Library/UefiShellLevel2CommandsLib/UefiShellLevel2CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellLevel1CommandsLib/UefiShellLevel1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellLevel3CommandsLib/UefiShellLevel3CommandsLib.inf
!ifndef $(NO_SHELL_PROFILES)
      NULL|ShellPkg/Library/UefiShellDriver1CommandsLib/UefiShellDriver1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellInstall1CommandsLib/UefiShellInstall1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellDebug1CommandsLib/UefiShellDebug1CommandsLib.inf
      NULL|ShellPkg/Library/UefiShellNetwork1CommandsLib/UefiShellNetwork1CommandsLib.inf
!ifdef $(INCLUDE_DP)
      NULL|ShellPkg/Library/UefiDpLib/UefiDpLib.inf
!endif #$(INCLUDE_DP)
!endif #$(NO_SHELL_PROFILES)
  }
############### UEFI BOOK ####################################
  #$(UEFI_BOOK_DIR)/CppPkg/Library/CppLib.inf
  #$(UEFI_BOOK_DIR)/CppPkg/test/testcpp.inf
  #$(UEFI_BOOK_DIR)/disk/disk.inf
  $(UEFI_BOOK_DIR)/Event/TestEvent.inf
  # ffmpeg can only be built under LINUX ONLY
  #$(UEFI_BOOK_DIR)/ffmpeg/EFI_FFDECODER_PROTOCOL_1.0/ffdecoder/ffdecoder.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/EFI_FFDECODER_PROTOCOL_1.0/ffplayer/fplayer.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/ffdecoder/ffdecoder.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/ffdecoder/afplayer/afplayer.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/ffplayer/fplayer.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/fplayer/fplayer.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/libavcodec/libavcodec.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/libavformat/libavformat.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/libavutil/libavutil.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/libswscale/libswscale.inf
  #$(UEFI_BOOK_DIR)/ffmpeg/zlib/zlib.inf

  #$(UEFI_BOOK_DIR)/FileIo/FileIo.inf #spec 2.4
  #$(UEFI_BOOK_DIR)/GcppPkg/Library/GcppLib.inf
  #$(UEFI_BOOK_DIR)/GcppPkg/test/testcpp.inf
  $(UEFI_BOOK_DIR)/GUIbasics/String/example.inf
  #$(UEFI_BOOK_DIR)/GUIPkg/Library/UGui.inf
  $(UEFI_BOOK_DIR)/Hob/Hob.inf
  $(UEFI_BOOK_DIR)/HotKey/HotKey.inf
  $(UEFI_BOOK_DIR)/infs/Debug/Main.inf
  $(UEFI_BOOK_DIR)/infs/ShellAppMain/Main.inf
  $(UEFI_BOOK_DIR)/infs/UefiMain/UefiMain.inf
  $(UEFI_BOOK_DIR)/mouse/mouse.inf
  $(UEFI_BOOK_DIR)/multitask/processor/process.inf
  $(UEFI_BOOK_DIR)/Network/tcpsocket.inf
  $(UEFI_BOOK_DIR)/Shell/Execute/Execute.inf
  $(UEFI_BOOK_DIR)/Shell/Execute2/Execute.inf
  $(UEFI_BOOK_DIR)/sstdPkg/Library/sstdLib.inf
  #$(UEFI_BOOK_DIR)/std/main.inf
  $(UEFI_BOOK_DIR)/std/sstd/Testsstd.inf
  $(UEFI_BOOK_DIR)/systemtable/BS/BS.inf
  $(UEFI_BOOK_DIR)/systemtable/gST/ST.inf
  $(UEFI_BOOK_DIR)/systemtable/memory/BSmem.inf
  $(UEFI_BOOK_DIR)/systemtable/ST/ST.inf
  $(UEFI_BOOK_DIR)/thread/setjmp/Main.inf
  $(UEFI_BOOK_DIR)/systemtable/gRT/RT.inf
  $(UEFI_BOOK_DIR)/disk/GPT/TestGpt.inf
  $(UEFI_BOOK_DIR)/disk/DevicePath/TestDevicePath.inf
  $(UEFI_BOOK_DIR)/audio/audio.inf
  #$(UEFI_BOOK_DIR)/audio/testac97.inf

