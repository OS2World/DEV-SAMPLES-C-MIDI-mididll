# MFVLQ Make File

.SUFFIXES:
.SUFFIXES: .c

MFVLQ.EXE:  \
  MFVLQ.OBJ \
  MFVLQ.MAK \
  {.;$(LIB)}midifile.lib \
  {.;$(LIB)}mfvlq.def
   link386.exe MFVLQ.OBJ  /PACKD /NOL /PM:VIO,MFVLQ.EXE,,midifile.lib,mfvlq.def;
#debug version
#  link386.exe MFVLQ.OBJ  /PACKD /NOL /CO /PM:VIO,MFVLQ.EXE,,midifile.lib,mfvlq.def;

{.}.c.obj:
   icc.exe /Tdc /Q /O /C   .\$*.c
#debug version
#  icc.exe /Tdc /Q /Ti /C   .\$*.c

!include MFVLQ.DEP
