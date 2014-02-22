#include "marketmodel.hpp"

// I'd like to define this in the header, next to the enum it models, but I can't figure out how
const QStringList MarketModel::ASSET_NAMES = {"BTS", "BTC", "USD", "GLD", "SLV", "CNY"};

MarketModel::MarketModel(QObject *parent) :
    QObject(parent),
    m_quoteUnit(USD),
    m_baseUnit(BTS)
{
}
