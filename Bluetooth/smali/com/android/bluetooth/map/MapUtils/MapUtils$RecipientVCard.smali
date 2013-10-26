.class public Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
.super Ljava/lang/Object;
.source "MapUtils.java"

# interfaces
.implements Lcom/android/vcard/VCardInterpreter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/MapUtils/MapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientVCard"
.end annotation


# instance fields
.field mCurrentProperty:Ljava/lang/String;

.field mEmail:Ljava/lang/String;

.field mFormattedName:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mTel:Ljava/lang/String;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1740
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    .line 1741
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    .line 1742
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    .line 1743
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    .line 1744
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mVersion:Ljava/lang/String;

    .line 1745
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mCurrentProperty:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 1748
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "end()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_0
    return-void
.end method

.method public endEntry()V
    .locals 2

    .prologue
    .line 1752
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "endEntry()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :cond_0
    return-void
.end method

.method public endProperty()V
    .locals 2

    .prologue
    .line 1756
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "endProperty()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mCurrentProperty:Ljava/lang/String;

    .line 1758
    return-void
.end method

.method public onEntryEnded()V
    .locals 2

    .prologue
    .line 1825
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "onEntryEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_0
    return-void
.end method

.method public onEntryStarted()V
    .locals 2

    .prologue
    .line 1817
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "onEntryStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    .line 1819
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    .line 1820
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    .line 1821
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    .line 1822
    return-void
.end method

.method public onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    .locals 8
    .parameter "property"

    .prologue
    const/4 v7, 0x0

    .line 1776
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_0

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPropertyCreated("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_0
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v3

    .line 1779
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 1780
    const-string v4, "MapUtils"

    const-string v5, "NULL Value List received"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_1
    :goto_0
    return-void

    .line 1785
    :cond_2
    const-string v4, "N"

    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1788
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1790
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 1791
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1794
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    .line 1795
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_1

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "N: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1796
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #size:I
    :cond_4
    const-string v4, "TEL"

    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 1797
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    .line 1798
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_1

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TEL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1799
    :cond_5
    const-string v4, "EMAIL"

    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 1800
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    .line 1801
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_1

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMAIL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1802
    :cond_6
    const-string v4, "FN"

    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1803
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    .line 1804
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_1

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onVCardEnded()V
    .locals 2

    .prologue
    .line 1813
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "onVCardEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_0
    return-void
.end method

.method public onVCardStarted()V
    .locals 2

    .prologue
    .line 1809
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "onVCardStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_0
    return-void
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 1761
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propertyGroup("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_0
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1765
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propertyName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mCurrentProperty:Ljava/lang/String;

    .line 1767
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 1770
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propertyParamType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_0
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1830
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propertyParamValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_0
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1834
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_0

    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "propertyValues("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), Property="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mCurrentProperty:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_0
    const-string v3, "N"

    iget-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mCurrentProperty:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1840
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1841
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1844
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    .line 1845
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_2

    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "N: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v2           #size:I
    :cond_2
    :goto_1
    return-void

    .line 1846
    :cond_3
    const-string v3, "TEL"

    iget-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mCurrentProperty:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 1847
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    .line 1848
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_2

    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TEL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1849
    :cond_4
    const-string v3, "EMAIL"

    iget-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mCurrentProperty:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 1850
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    .line 1851
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_2

    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMAIL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1852
    :cond_5
    const-string v3, "FN"

    iget-object v4, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mCurrentProperty:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1853
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    .line 1854
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_2

    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1859
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_0
    return-void
.end method

.method public startEntry()V
    .locals 2

    .prologue
    .line 1863
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "startEntry()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    .line 1865
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    .line 1866
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    .line 1867
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    .line 1868
    return-void
.end method

.method public startProperty()V
    .locals 2

    .prologue
    .line 1871
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    const-string v1, "startProperty()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mCurrentProperty:Ljava/lang/String;

    .line 1873
    return-void
.end method
