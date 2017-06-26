#include <iostream>
#include <sstream>
#include <stdexcept>

#include <unistd.h>

#include "XbeeLocal.h"
#include "XbeeRemote.h"
#include "XbeeLogger.h"
#include "utils.h"
#include "XbeeException.h"

using namespace std;

/*void logFnc(string msg, string orig)
{
    cout << msg << endl;
}*/

class TestLogger: public XbeeLogger
{
public:
    virtual void doLog(std::string msg, Severity severity, std::string origin)
    {
//        cout << "my logger" << endl;
        XbeeLogger::doLog("mylogger" + msg, severity, origin);
    }
};

class TestDiscover: public XbeeDiscoveryListener
{
public:
    virtual void xbeeDiscovered(XbeeRemote *remote)
        {
            XbeeLogger::GetInstance().doLog("discovered", XbeeLogger::Severity::Info, "DiscoveryListener");
        }
};

int main(int argc, char *argv[])
{

    TestLogger myLogger;

    XbeeLogger::setLogger(myLogger);
    XbeeLogger &log = XbeeLogger::GetInstance();
    log.setSeverity(XbeeLogger::Severity::Info);

    XbeeLocal xbee;

    xbee.getSerialPort().setDeviceName("/tmp/ttyUSB1");
    xbee.getSerialPort().setBaudrate(B57600);

    TestDiscover discover;
    xbee.addDiscoveryListener(&discover);

    typedef XbeePort::pinID pt;
    typedef XbeePort::pinFunction pf;

    try
    {
        xbee.initialize();
//        xbee.print();
    } catch (exception &ex)
    {
//        Logger::GetInstance() << "cant initialize xbee:" << ex.what() << endl;
        log.doLog(string("cant initialize xbee:") + ex.what(), XbeeLogger::Severity::Error, "main");
//        cerr << "cant initialize xbee:" << ex.what() << endl;
        return 1;
    }

    log.doLog("initialized", XbeeLogger::Severity::Info, "main");

    log.doLog(string("HW version:") + xbee.getHWVersionString(), XbeeLogger::Severity::Info, "main");
    log.doLog(string("Name:") + xbee.getName(), XbeeLogger::Severity::Info, "main");
    log.doLog(string("Role:") + xbee.getNetRoleString(), XbeeLogger::Severity::Info, "main");

    log.doLog("configured", XbeeLogger::Severity::Info, "main");

    log.doLog("local Xbee", XbeeLogger::Severity::Info, "main");

    sleep(3);

    xbee.print();

    log.doLog("print discovered remote xbees", XbeeLogger::Severity::Info, "main");

    try
    {
	    std::vector<XbeeRemote*> &devs = xbee.getDiscoveredDevices();
		while(devs.empty())
			sleep(3);
		while(1)
		{
			int numXbees = devs.size();
			bool allRequestsAreHandled = true;
			for(int i = 0; i < numXbees; ++i)
			{
				if(! devs[i]->areAllRequestsHandled())
					allRequestsAreHandled = false;
			}
			if(! allRequestsAreHandled)
				sleep(3);
			else
				break;
		}

        for (auto it=devs.begin(); it!=devs.end();it++)
        {
            stringstream ss;
            (*it)->print();
            ss << "HW version:" << (*it)->getHWVersionString();
            ss << " name:" << (*it)->getName();
            log.doLog(ss.str(), XbeeLogger::Severity::Info, "main");

            log.doLog(string("Role:") + (*it)->getNetRoleString(), XbeeLogger::Severity::Info, "main");
        }
    } catch (XbeeException &ex) {
        log.doLog(string("remote xbee config exception:") + ex.what(), XbeeLogger::Severity::Error, "main");
    }

    sleep(2);

    log.doLog("End main", XbeeLogger::Severity::Info, "main");

    xbee.uninit();
    return 0;
}
