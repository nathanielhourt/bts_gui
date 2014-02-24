#include "marketmodel.hpp"

MarketModel::MarketModel(QObject *parent) :
    QObject(parent),
    m_quoteUnit(USD),
    m_baseUnit(XTS)
{
    //Initialize assetNames list
    for (int asset = 0; asset < AssetTypeCount; ++asset)
        m_assetNames.append(assetName(AssetType(asset)));
    emit assetNamesChanged(m_assetNames);
}
