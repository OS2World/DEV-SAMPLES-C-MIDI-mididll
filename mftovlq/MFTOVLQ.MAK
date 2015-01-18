# MFTOVLQ Make File

.SUFFIXES:
.SUFFIXES: .c

MFTOVLQ.EXE:  \
  MFTOVLQ.OBJ \
  MFTOVLQ.MAK \
  {.;$(LIB)}midifile.lib \
  {.;$(LIB)}mftovlq.def
   link386.exe MFTOVLQ.OBJ  /PACKD /NOL /PM:VIO,MFTOVLQ.EXE,,midifile.lib,mftovlq.def;
#debug version
#  link386.exe MFTOVLQ.OBJ  /PACKD /NOL /CO /PM:VIO,MFTOVLQ.EXE,,midifile.lib,mftovlq.def;

{.}.c.obj:
   icc.exe /Tdc /Q /O /C   .\$*.c
#debug version
#  icc.exe /Tdc /Q /Ti /C   .\$*.c

!include MFTOVLQ.DEP
