.class public Lcom/lewa/spm/util/SharedStorageKeyValuePair;
.super Ljava/lang/Object;
.source "SharedStorageKeyValuePair.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "spName"
    .parameter "key"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, sPreferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "spName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 61
    iget-object v3, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 65
    .local v2, sPreferences:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v2, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    .local v1, key_value:I
    :goto_0
    return v1

    .line 66
    .end local v1           #key_value:I
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 69
    .restart local v1       #key_value:I
    invoke-virtual {p0, p1, p2, v1}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .parameter "spName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, sPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "spName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, sPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "spName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 41
    iget-object v2, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    .local v1, sPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public saveChargingHistory()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/lewa/spm/charging/ChargingHistory;

    iget-object v1, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lewa/spm/charging/ChargingHistory;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, mSaveChargingHistory:Lcom/lewa/spm/charging/ChargingHistory;
    invoke-virtual {v0}, Lcom/lewa/spm/charging/ChargingHistory;->saveAc()V

    .line 84
    invoke-virtual {v0}, Lcom/lewa/spm/charging/ChargingHistory;->saveUsb()V

    .line 85
    return-void
.end method

.method public saveInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "spName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 33
    iget-object v2, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    .local v1, sPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public saveLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .parameter "spName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 25
    iget-object v2, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 27
    .local v1, sPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "spName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 17
    iget-object v2, p0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    .local v1, sPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    return-void
.end method
