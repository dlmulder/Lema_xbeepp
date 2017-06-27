#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/SerialPort.o \
	${OBJECTDIR}/Xbee.o \
	${OBJECTDIR}/XbeeAddress.o \
	${OBJECTDIR}/XbeeCommand.o \
	${OBJECTDIR}/XbeeCommandException.o \
	${OBJECTDIR}/XbeeCommandResponse.o \
	${OBJECTDIR}/XbeeCommandResponseImpl.o \
	${OBJECTDIR}/XbeeException.o \
	${OBJECTDIR}/XbeeFrame.o \
	${OBJECTDIR}/XbeeFrameCommand.o \
	${OBJECTDIR}/XbeeFrameCommandResponse.o \
	${OBJECTDIR}/XbeeFrameDataSample.o \
	${OBJECTDIR}/XbeeFrameDiscovery.o \
	${OBJECTDIR}/XbeeFrameRemoteCommand.o \
	${OBJECTDIR}/XbeeFrameRemoteCommandResponse.o \
	${OBJECTDIR}/XbeeLocal.o \
	${OBJECTDIR}/XbeeLogger.o \
	${OBJECTDIR}/XbeePort.o \
	${OBJECTDIR}/XbeeRemote.o \
	${OBJECTDIR}/test.o \
	${OBJECTDIR}/utils.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-pthread
CXXFLAGS=-pthread

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/xbeepp_netbeans

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/xbeepp_netbeans: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/xbeepp_netbeans ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/SerialPort.o: SerialPort.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SerialPort.o SerialPort.cpp

${OBJECTDIR}/Xbee.o: Xbee.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Xbee.o Xbee.cpp

${OBJECTDIR}/XbeeAddress.o: XbeeAddress.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeAddress.o XbeeAddress.cpp

${OBJECTDIR}/XbeeCommand.o: XbeeCommand.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeCommand.o XbeeCommand.cpp

${OBJECTDIR}/XbeeCommandException.o: XbeeCommandException.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeCommandException.o XbeeCommandException.cpp

${OBJECTDIR}/XbeeCommandResponse.o: XbeeCommandResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeCommandResponse.o XbeeCommandResponse.cpp

${OBJECTDIR}/XbeeCommandResponseImpl.o: XbeeCommandResponseImpl.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeCommandResponseImpl.o XbeeCommandResponseImpl.cpp

${OBJECTDIR}/XbeeException.o: XbeeException.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeException.o XbeeException.cpp

${OBJECTDIR}/XbeeFrame.o: XbeeFrame.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeFrame.o XbeeFrame.cpp

${OBJECTDIR}/XbeeFrameCommand.o: XbeeFrameCommand.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeFrameCommand.o XbeeFrameCommand.cpp

${OBJECTDIR}/XbeeFrameCommandResponse.o: XbeeFrameCommandResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeFrameCommandResponse.o XbeeFrameCommandResponse.cpp

${OBJECTDIR}/XbeeFrameDataSample.o: XbeeFrameDataSample.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeFrameDataSample.o XbeeFrameDataSample.cpp

${OBJECTDIR}/XbeeFrameDiscovery.o: XbeeFrameDiscovery.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeFrameDiscovery.o XbeeFrameDiscovery.cpp

${OBJECTDIR}/XbeeFrameRemoteCommand.o: XbeeFrameRemoteCommand.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeFrameRemoteCommand.o XbeeFrameRemoteCommand.cpp

${OBJECTDIR}/XbeeFrameRemoteCommandResponse.o: XbeeFrameRemoteCommandResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeFrameRemoteCommandResponse.o XbeeFrameRemoteCommandResponse.cpp

${OBJECTDIR}/XbeeLocal.o: XbeeLocal.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeLocal.o XbeeLocal.cpp

${OBJECTDIR}/XbeeLogger.o: XbeeLogger.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeLogger.o XbeeLogger.cpp

${OBJECTDIR}/XbeePort.o: XbeePort.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeePort.o XbeePort.cpp

${OBJECTDIR}/XbeeRemote.o: XbeeRemote.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/XbeeRemote.o XbeeRemote.cpp

${OBJECTDIR}/test.o: test.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/test.o test.cpp

${OBJECTDIR}/utils.o: utils.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/utils.o utils.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/xbeepp_netbeans

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
