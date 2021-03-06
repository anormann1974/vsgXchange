# Find OpenScenegraph
find_package(OpenThreads)
find_package(osg)
find_package(osgDB)
find_package(osgTerrain)
find_package(osgUtil)
find_package(OpenGL)

if(OSG_FOUND AND OSGDB_FOUND AND OSGTERRAIN_FOUND AND OSGUTIL_FOUND AND OPENGL_FOUND)
    set(SOURCES ${SOURCES}
        osg/BuildOptions.cpp
        osg/GeometryUtils.cpp
        osg/ImageUtils.cpp
        osg/Optimize.cpp
        osg/ReaderWriter_osg.cpp
        osg/SceneAnalysis.cpp
        osg/SceneBuilder.cpp
        osg/ShaderUtils.cpp
        osg/ReaderWriter_osg.cpp
        osg/ConvertToVsg.cpp
    )
    set(EXTRA_INCLUDES ${EXTRA_INCLUDES} ${OSG_INCLUDE_DIR})
    set(EXTRA_LIBRARIES ${EXTRA_LIBRARIES} ${OPENTHREADS_LIBRARIES} ${OSG_LIBRARIES} ${OSGUTIL_LIBRARIES} ${OSGDB_LIBRARIES} ${OSGTERRAIN_LIBRARIES})
    set(EXTRA_DEFINES ${EXTRA_DEFINES} USE_OPENSCENEGRAPH)
endif()
