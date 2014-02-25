#include "marketmodel.hpp"
#include "walletmodel.hpp"

WalletModel::WalletModel(QObject *parent) :
    QObject(parent)
{
}

QList<qreal> WalletModel::balance() const
{
    QList<qreal> balances;
    for (int i = 0; i < MarketModel::AssetTypeCount; ++i)
        balances.append(0);
    return balances;
}

QList<qreal> WalletModel::margin() const
{
    QList<qreal> margins;
    for (int i = 0; i < MarketModel::AssetTypeCount; ++i)
        margins.append(0);
    return margins;
}
