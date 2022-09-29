#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>

class Counter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int value READ getValue WRITE setValue NOTIFY valueChanged)

private:
    int value;
public:
    Counter();
    Q_INVOKABLE int getValue();
    Q_INVOKABLE void setValue(int value);
    Q_INVOKABLE void increase();

signals:
    void valueChanged();
};

#endif // COUNTER_H
