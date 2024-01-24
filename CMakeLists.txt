cmake_minimum_required(VERSION 3.16)

project(StockTool VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appStockTool
    main.cpp
)

qt_add_qml_module(appStockTool
    URI StockTool
    VERSION 1.0
    QML_FILES main.qml
)

qt_add_resources(appStockTool "images"
    PREFIX "/"
    FILES
        images/icon.jpg
)

set_target_properties(appStockTool PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appStockTool
    PRIVATE Qt6::Quick)

install(TARGETS appStockTool
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
