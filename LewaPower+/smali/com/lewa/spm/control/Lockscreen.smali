.class public Lcom/lewa/spm/control/Lockscreen;
.super Lcom/lewa/spm/control/ValueControl;
.source "Lockscreen.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "mContext"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/lewa/spm/control/ValueControl;-><init>(ILandroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lewa/spm/control/Lockscreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 16
    return-void
.end method

.method public getAdjustValue()I
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lewa/spm/control/Lockscreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
