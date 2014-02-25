#ifndef CONTACT_HPP
#define CONTACT_HPP

#include<QObject>

class Contact : public QObject {
    Q_OBJECT

    Q_PROPERTY (QString address READ address CONSTANT)
    Q_PROPERTY (QString label READ label CONSTANT)

    QString m_address;
    QString m_label;

public:
    Contact(){}
    Contact(QString label, QString address, QObject *parent = 0) : QObject(parent)
    {
        m_address = address;
        m_label = label;
    }

    QString address() const
    {
        return m_address;
    }
    QString label() const
    {
        return m_label;
    }
};


#endif // CONTACT_HPP
