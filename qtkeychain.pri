

DEFINES += QKEYCHAIN_STATICLIB
HEADERS += $$PWD/keychain.h $$PWD/keychain_p.h $$PWD/qkeychain_export.h
SOURCES += $$PWD/keychain.cpp

mac: SOURCES += $$PWD/keychain_mac.cpp
win32: SOURCES += $$PWD/keychain_win.cpp
unix:!mac {
    QT += dbus xml
    HEADERS += $$PWD/gnomekeyring_p.h $$PWD/kwallet_interface.h
    SOURCES += $$PWD/gnomekeyring.cpp $$PWD/keychain_unix.cpp $$PWD/kwallet_interface.cpp
    OTHER_FILES += $$PWD/org.kde.KWallet.xml
}

