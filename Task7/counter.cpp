#include "counter.h"

Counter::Counter() : QObject()
{   
}

int Counter::getValue()
{
    return value;
}

void Counter::setValue(int value)
{
    this->value = value;
    emit valueChanged();
}


void Counter::increase()
{
    ++value;
    emit valueChanged();
}
