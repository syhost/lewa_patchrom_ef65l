.class public Lcom/lewa/spm/control/ControlAirPlane;
.super Lcom/lewa/spm/control/SwitchControl;
.source "ControlAirPlane.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "ctx"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/lewa/spm/control/SwitchControl;-><init>(ILandroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public change(Z)V
    .locals 4
    .parameter "closeOrOpen"

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/lewa/spm/control/ControlAirPlane;->isOnOff()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/lewa/spm/control/ControlAirPlane;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    iget-object v1, p0, Lcom/lewa/spm/control/ControlAirPlane;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 17
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOnOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lcom/lewa/spm/control/ControlAirPlane;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
