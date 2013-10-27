.class public Lcom/lewa/spm/control/Mobile;
.super Lcom/lewa/spm/control/SwitchControl;
.source "Mobile.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "mContext"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/lewa/spm/control/SwitchControl;-><init>(ILandroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lcom/lewa/spm/control/Mobile;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public change(Z)V
    .locals 3
    .parameter "closeOrOpen"

    .prologue
    .line 17
    iget-object v1, p0, Lcom/lewa/spm/control/Mobile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .local v0, connectManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 19
    return-void
.end method

.method public isOnOff()Z
    .locals 3

    .prologue
    .line 24
    iget-object v1, p0, Lcom/lewa/spm/control/Mobile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 25
    .local v0, connectManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method
