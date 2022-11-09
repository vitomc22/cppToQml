QT += quick qml

SOURCES += \
        main.cpp \
        randcalc.cpp
        randcalc.h        

resources.files = main.qml 
resources.prefix = /$${TARGET}
RESOURCES += resources


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    randcalc.h
