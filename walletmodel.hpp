#ifndef WALLETMODEL_HPP
#define WALLETMODEL_HPP

#include <QObject>

class WalletModel : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QList<qreal> balance READ balance NOTIFY balanceChanged)
    Q_PROPERTY(QList<qreal> margin READ margin NOTIFY marginChanged)

public:
    explicit WalletModel(QObject *parent = 0);

    QList<qreal> balance() const;
    QList<qreal> margin() const;

signals:

    void balanceChanged(QList<qreal> arg);
    void marginChanged(QList<qreal> arg);

public slots:

};

#endif // WALLETMODEL_HPP
