#ifndef WALLETMODEL_HPP
#define WALLETMODEL_HPP

#include "contact.hpp"

#include <QObject>
#include <QQmlListProperty>

class WalletModel : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QList<qreal> balance READ balance NOTIFY balanceChanged)
    Q_PROPERTY(QQmlListProperty<Contact> addressBook READ addressBook)

    QList<Contact *> addresses;

public:
    explicit WalletModel(QObject *parent = 0);

    QList<qreal> balance() const;

    QQmlListProperty<Contact> addressBook()
    {
        return QQmlListProperty<Contact>(this, nullptr, &addContact, &contactCount, &contactAt, &clearContacts);
    }

    static void addContact(QQmlListProperty<Contact> *list, Contact *contact) {
        dynamic_cast<WalletModel *>(list->object)->addresses.append(contact);
    }
    static int contactCount(QQmlListProperty<Contact> *list) {
        return dynamic_cast<WalletModel*>(list->object)->addresses.size();
    }
    static Contact *contactAt(QQmlListProperty<Contact> *list, int index) {
        return dynamic_cast<WalletModel*>(list->object)->addresses[index];
    }
    static void clearContacts(QQmlListProperty<Contact> *list) {
        dynamic_cast<WalletModel*>(list->object)->addresses.clear();
    }

signals:

void balanceChanged(QList<qreal> arg);

public slots:

};

#endif // WALLETMODEL_HPP
