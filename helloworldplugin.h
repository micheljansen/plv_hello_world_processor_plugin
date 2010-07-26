#ifndef HELLOWORLDPLUGIN_H
#define HELLOWORLDPLUGIN_H

#include "hello_world_plugin_global.h"
#include <QObject>
#include <plvcore/Plugin.h>

using namespace plv;

class HELLO_WORLD_PLUGINSHARED_EXPORT HelloWorldPlugin : public QObject, public plv::Plugin
{
    Q_OBJECT
    Q_INTERFACES(plv::Plugin)

public:
    HelloWorldPlugin();
    void onLoad();

private:

};

#endif // HELLOWORLDPLUGIN_H
