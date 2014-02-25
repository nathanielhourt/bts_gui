#include "marketmodel.hpp"
#include "walletmodel.hpp"

WalletModel::WalletModel(QObject *parent) :
    QObject(parent)
{
    addresses.append(new Contact("Hello", "World", this));
}

QList<qreal> WalletModel::balance() const
{
    QList<qreal> balances;
    for (int i = 0; i < MarketModel::AssetTypeCount; ++i)
        balances.append(0);
    return balances;
}
