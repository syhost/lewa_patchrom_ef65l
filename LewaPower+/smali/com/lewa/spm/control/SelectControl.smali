.class public abstract Lcom/lewa/spm/control/SelectControl;
.super Lcom/lewa/spm/control/ControlDev;
.source "SelectControl.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lewa/spm/control/ControlDev;-><init>(I)V

    .line 11
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "mContext"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/lewa/spm/control/ControlDev;-><init>(ILandroid/content/Context;)V

    .line 15
    return-void
.end method
