#ifndef WORDS_H
#define WORDS_H

#include <QObject>

class Words : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString transformedWords READ getTransformedWords NOTIFY valueChanged)
private:
    QStringList words;
    QString transformedWords = "";
public:
    Words();
    Q_INVOKABLE void addWord(QString word);
    Q_INVOKABLE void deleteWord();
    Q_INVOKABLE QString getTransformedWords();
signals:
    void valueChanged();
};

#endif // WORDS_H
