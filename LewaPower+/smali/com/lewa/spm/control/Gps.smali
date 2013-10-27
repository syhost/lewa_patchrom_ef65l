.class public Lcom/lewa/spm/control/Gps;
.super Lcom/lewa/spm/control/SwitchControl;
.source "Gps.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "mContext"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/lewa/spm/control/SwitchControl;-><init>(ILandroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public change(Z)V
    .locals 2
    .parameter "closeOrOpen"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lewa/spm/control/Gps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 21
    return-void
.end method

.method public isOnOff()Z
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/lewa/spm/control/Gps;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 33
    .local v0, myLocationManager:Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
