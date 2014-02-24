#ifndef MARKETMODEL_HPP
#define MARKETMODEL_HPP

#include <QDebug>
#include <QObject>
#include <QStringList>
#include <QtQml>

class MarketModel : public QObject
{
    Q_OBJECT

    Q_PROPERTY(AssetType baseUnit READ baseUnit WRITE setBaseUnit NOTIFY baseUnitChanged)
    Q_PROPERTY(QString baseUnitName READ baseUnitName NOTIFY baseUnitChanged)
    Q_PROPERTY(AssetType quoteUnit READ quoteUnit WRITE setQuoteUnit NOTIFY quoteUnitChanged)
    Q_PROPERTY(QString quoteUnitName READ quoteUnitName NOTIFY quoteUnitChanged)
    //Band-aid to allow listing of asset names in a combo box
    Q_PROPERTY(QStringList assetNames READ assetNames NOTIFY assetNamesChanged)

public:
    enum AssetType {XTS, BTC, USD, GLD, SLV, CNY, AssetTypeCount};
    Q_ENUMS(AssetType)

    explicit MarketModel(QObject *parent = 0);

    AssetType quoteUnit() const
    {
        return m_quoteUnit;
    }
    QString quoteUnitName() const
    {
        return assetName(quoteUnit());
    }

    AssetType baseUnit() const
    {
        return m_baseUnit;
    }
    QString baseUnitName() const
    {
        return assetName(baseUnit());
    }

    Q_INVOKABLE QString assetName(AssetType asset) const {
        int index = metaObject()->indexOfEnumerator("AssetType");
        QMetaEnum metaEnum = metaObject()->enumerator(index);
        return metaEnum.valueToKey(asset);
    }

    QStringList assetNames() const
    {
        return m_assetNames;
    }

signals:

    void quoteUnitChanged(AssetType arg);
    void baseUnitChanged(AssetType arg);

    void assetNamesChanged(QStringList arg);

public slots:

    /**
     * @brief Set a new quote unit
     * @param arg New quote unit
     *
     * Sets arg as the new quote unit. If arg is the same as baseUnit, then the base
     * and quote are swapped
     */
    void setQuoteUnit(AssetType arg)
    {
        if (m_quoteUnit != arg) {
            AssetType oldQuoteUnit = m_quoteUnit;
            m_quoteUnit = arg;

            // Swap base and quote instead of making them identical
            if (m_quoteUnit == baseUnit())
                setBaseUnit(oldQuoteUnit);

            qDebug() << "Quote unit becomes" << assetName(arg);
            emit quoteUnitChanged(arg);
        }
    }
    /**
     * @brief Set a new base unit
     * @param arg New base unit
     *
     * Sets arg as the new base unit. If arg is the same as quoteUnit, then the base
     * and quote are swapped
     */
    void setBaseUnit(AssetType arg)
    {
        if (m_baseUnit != arg) {
            AssetType oldBaseUnit = m_baseUnit;
            m_baseUnit = arg;

            // Swap base and quote instead of making them identical
            if (m_baseUnit == quoteUnit())
                setQuoteUnit(oldBaseUnit);

            qDebug() << "Base unit becomes" << assetName(arg);
            emit baseUnitChanged(arg);
        }
    }

protected:
    AssetType m_quoteUnit;
    AssetType m_baseUnit;
    QStringList m_assetNames;

};

#endif // MARKETMODEL_HPP
