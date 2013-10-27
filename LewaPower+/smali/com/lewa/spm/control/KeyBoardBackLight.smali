.class public Lcom/lewa/spm/control/KeyBoardBackLight;
.super Lcom/lewa/spm/control/SwitchControl;
.source "KeyBoardBackLight.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "ctx"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/lewa/spm/control/SwitchControl;-><init>(ILandroid/content/Context;)V

    .line 13
    iput-object p2, p0, Lcom/lewa/spm/control/KeyBoardBackLight;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public change(Z)V
    .locals 3
    .parameter "closeOrOpen"

    .prologue
    .line 18
    const-string v0, "KeyBoardBackLight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeOrOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    if-eqz p1, :cond_0

    .line 20
    const-string v0, "persist.sys.disable_btn_light"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    const-string v0, "persist.sys.disable_btn_light"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isOnOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 28
    const-string v1, "KeyBoardBackLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOnOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.disable_btn_light"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v1, "persist.sys.disable_btn_light"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    :cond_0
    return v0
.end method
