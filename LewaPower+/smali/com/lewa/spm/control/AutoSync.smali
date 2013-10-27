.class public Lcom/lewa/spm/control/AutoSync;
.super Lcom/lewa/spm/control/SwitchControl;
.source "AutoSync.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/lewa/spm/control/SwitchControl;-><init>(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public change(Z)V
    .locals 0
    .parameter "closeOrOpen"

    .prologue
    .line 17
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 18
    return-void
.end method

.method public isOnOff()Z
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method
