#include "randcalc.h"

Randcalc::Randcalc(QObject *parent) : QObject{parent}
{
}

void Randcalc::calculate(QVariant data)
{
    int input = data.toInt();
    int output {0};
    int randNum = QRandomGenerator::global()->bounded(100);
    output = input * randNum;


    emit calculatedNumber(QVariant(output));
}



