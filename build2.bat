rem 1. Переносим bat d директорию "c:\qt\Qt5.5.1\5.5\Src\qtbase\src\plugins\sqldrivers\ibase\"

REM 2. Корректируем файл pro следующим образом
REM -----------------------------------------------------------------
REM TARGET = qsqlibase

REM HEADERS = ../../../sql/drivers/ibase/qsql_ibase_p.h
REM SOURCES = main.cpp \
REM ../../../sql/drivers/ibase/qsql_ibase.cpp

REM win32:INCLUDEPATH += C:\Firebird\include
REM win32:LIBS += -lfbclient_ms
REM win32:LIBS += -LC:\Firebird\lib

REM unix:!contains( LIBS, .*gds.* ):!contains( LIBS, .*libfb.* ):LIBS *=
REM -lgds

REM win32:!contains( LIBS, .*gds.* ):!contains( LIBS, .*fbclient.* ) {
REM !win32-borland:LIBS *= -lgds32_ms
REM win32-borland:LIBS += gds32.lib
REM }

REM include(../qsqldriverbase.pri)
REM -----------------------------------------------------------------

rem 3. Теперь запускаем этот bat

set PATH=%PATH%;C:\Firebird\bin;C:\Firebird\lib;

qmake "INCLUDEPATH+=C:/Firebird/include" "LIBS+=C:/Firebird/lib/fbclient_ms.lib" ibase.pro
rem qmake "INCLUDEPATH+=C:/FireBird/include" "LIBS+=-lfbclient" ibase.pro
mingw32-make
pause
rem 4. Копируем файлы "c:\qt\Qt5.5.1\5.5\Src\qtbase\plugins\sqldrivers\" в "c:\qt\Qt5.5.1\5.5\mingw492_32\plugins\sqldrivers\"
