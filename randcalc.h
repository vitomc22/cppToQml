#ifndef RANDCALC_H
#define RANDCALC_H

#include <QObject>
#include <QVariant>
#include <QtQml>
#include <QRandomGenerator>

class Randcalc : public QObject
{
    Q_OBJECT
    QML_ELEMENT //com essa macro, já podemos utilizar o cpp dentro do QML
public:
   explicit Randcalc(QObject *parent = nullptr);

signals:
   void calculatedNumber(QVariant data);

public slots:
   void calculate(QVariant data);

private:

};




#endif // RANDCALC_H
