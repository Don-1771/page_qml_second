cmake_minimum_required(VERSION 3.16)

project(Lesson12 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appLesson12
    main.cpp
)

qt_add_qml_module(appLesson12
    URI Lesson12
    QML_FILES
        Main.qml
        QML_FILES ApplicationPage.qml
        QML_FILES CustomImageButton.qml
        QML_FILES DynamicallyCreatedNumberPad.qml
        QML_FILES LoginComponent.qml
        QML_FILES OwnerDrawnComboBox.qml
        QML_FILES OwnerDrawnListView.qml
        QML_FILES Home.qml
        down.png
        up.png
        QML_FILES CoolButton.qml
        QML_FILES NumberPad.qml
        QML_FILES Login.qml
        QML_FILES ComboBox.qml
        QML_FILES ColorDelegate.qml
        QML_FILES ColorModel.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appLesson12 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appLesson12
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appLesson12
    PRIVATE Qt6::Quick
)

install(TARGETS appLesson12
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
