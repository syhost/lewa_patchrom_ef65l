.class public Lcom/lewa/spm/control/ControlDev;
.super Ljava/lang/Object;
.source "ControlDev.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/lewa/spm/control/ControlDev;->mMode:I

    .line 17
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "ctx"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/lewa/spm/control/ControlDev;->mMode:I

    .line 21
    iput-object p2, p0, Lcom/lewa/spm/control/ControlDev;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method
