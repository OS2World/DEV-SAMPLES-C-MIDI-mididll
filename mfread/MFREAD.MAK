# MFREAD Make File

.SUFFIXES:
.SUFFIXES: .c

MFREAD.EXE:  \
  MFREAD.OBJ \
  MFREAD.MAK \
  {.;$(LIB)}midifile.lib \
  {.;$(LIB)}mfread.def
   link386.exe MFREAD.OBJ  /PACKD /NOL /PM:VIO,MFREAD.EXE,,midifile.lib,mfread.def;
#debug version
#  link386.exe MFREAD.OBJ  /PACKD /NOL /CO /PM:VIO,MFREAD.EXE,,midifile.lib,mfread.def;

{.}.c.obj:
   icc.exe /Tdc /Q /O /C   .\$*.c
#debug version
#  icc.exe /Tdc /Q /Ti /C   .\$*.c

!include MFREAD.DEP
