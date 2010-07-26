#include "helloworldplugin.h"
#include <QtPlugin>
#include <QtDebug>

#include "helloworldprocessor.h"

using namespace plv;

HelloWorldPlugin::HelloWorldPlugin()
{
}

void HelloWorldPlugin::onLoad()
{
    qDebug() << "HELLO WORLD!";
    plvRegisterPipelineElement<HelloWorldProcessor>("HelloWorldProcessor", "Hello World");
}

Q_EXPORT_PLUGIN2(hello_world_plugin, HelloWorldPlugin)
