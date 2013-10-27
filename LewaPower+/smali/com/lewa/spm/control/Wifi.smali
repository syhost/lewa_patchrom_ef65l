.class public Lcom/lewa/spm/control/Wifi;
.super Lcom/lewa/spm/control/SwitchControl;
.source "Wifi.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "ctx"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/lewa/spm/control/SwitchControl;-><init>(ILandroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public change(Z)V
    .locals 2
    .parameter "closeOrOpen"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lewa/spm/control/Wifi;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 21
    return-void
.end method

.method public isOnOff()Z
    .locals 4

    .prologue
    .line 33
    iget-object v2, p0, Lcom/lewa/spm/control/Wifi;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 34
    .local v1, wm:Landroid/net/wifi/WifiManager;
    const/4 v0, 0x0

    .line 35
    .local v0, flag:Z
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 53
    :goto_0
    :pswitch_0
    return v0

    .line 37
    :pswitch_1
    const/4 v0, 0x0

    .line 38
    goto :goto_0

    .line 40
    :pswitch_2
    const/4 v0, 0x0

    .line 41
    goto :goto_0

    .line 43
    :pswitch_3
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 46
    :pswitch_4
    const/4 v0, 0x1

    .line 47
    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
