# MFWRITE Make File

.SUFFIXES:
.SUFFIXES: .c

MFWRITE.EXE:  \
  MFWRITE.OBJ \
  MFWRITE.MAK \
  {.;$(LIB)}midifile.lib \
  {.;$(LIB)}mfwrite.def
   link386.exe MFWRITE.OBJ  /PACKD /NOL /PM:VIO,MFWRITE.EXE,,midifile.lib,mfwrite.def;
#debug version
#  link386.exe MFWRITE.OBJ  /PACKD /NOL /CO /PM:VIO,MFWRITE.EXE,,midifile.lib,mfwrite.def;

{.}.c.obj:
   icc.exe /Tdc /Q /O /C   .\$*.c
#debug version
#  icc.exe /Tdc /Q /Ti /C   .\$*.c

!include MFWRITE.DEP
