#include "words.h"

Words::Words()
{

}

void Words::addWord(QString word)
{
    word = word.toLower();
    words.append(word);
    if (transformedWords == "") {
        transformedWords += word;
    } else {
        transformedWords += ", ";
        transformedWords += word;
    }
    emit valueChanged();
}

void Words::deleteWord()
{
    if (!words.isEmpty()) {
        words.removeLast();
        QString listAsString = words.join(", ");
        transformedWords = listAsString;
        emit valueChanged();
    }
}


QString Words::getTransformedWords()
{
    if (transformedWords != "")
        transformedWords[0] = transformedWords[0].toUpper();
    return transformedWords;
}
