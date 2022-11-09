#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "randcalc.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<Randcalc>("com.company.randcalc",1,0,"Randcalc"); //precisamos registrar nosso tipo de modulo para o QML
    const QUrl url(u"qrc:/cppToQml/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
