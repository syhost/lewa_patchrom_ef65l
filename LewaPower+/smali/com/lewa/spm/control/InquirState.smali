.class public Lcom/lewa/spm/control/InquirState;
.super Ljava/lang/Object;
.source "InquirState.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "ctx"
    .parameter "mode"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p2, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    .line 13
    iput-object p1, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public airplaneState()Z
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/lewa/spm/control/ControlAirPlane;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/ControlAirPlane;-><init>(ILandroid/content/Context;)V

    .line 23
    .local v0, flyMode:Lcom/lewa/spm/control/ControlAirPlane;
    invoke-virtual {v0}, Lcom/lewa/spm/control/ControlAirPlane;->isOnOff()Z

    move-result v1

    return v1
.end method

.method public backlight()Z
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/lewa/spm/control/KeyBoardBackLight;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/KeyBoardBackLight;-><init>(ILandroid/content/Context;)V

    .line 68
    .local v0, a:Lcom/lewa/spm/control/KeyBoardBackLight;
    invoke-virtual {v0}, Lcom/lewa/spm/control/KeyBoardBackLight;->isOnOff()Z

    move-result v1

    return v1
.end method

.method public bluetoothState()Z
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/lewa/spm/control/Bluetooth;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    invoke-direct {v0, v1}, Lcom/lewa/spm/control/Bluetooth;-><init>(I)V

    .line 18
    .local v0, bt:Lcom/lewa/spm/control/Bluetooth;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Bluetooth;->isOnOff()Z

    move-result v1

    return v1
.end method

.method public gpsState()Z
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/lewa/spm/control/Gps;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Gps;-><init>(ILandroid/content/Context;)V

    .line 28
    .local v0, g:Lcom/lewa/spm/control/Gps;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Gps;->isOnOff()Z

    move-result v1

    return v1
.end method

.method public hapticState()Z
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/lewa/spm/control/Haptic;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Haptic;-><init>(ILandroid/content/Context;)V

    .line 33
    .local v0, h:Lcom/lewa/spm/control/Haptic;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Haptic;->isOnOff()Z

    move-result v1

    return v1
.end method

.method public lightOfScreenAutoState()Z
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/lewa/spm/control/Brightness;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Brightness;-><init>(ILandroid/content/Context;)V

    .line 48
    .local v0, b:Lcom/lewa/spm/control/Brightness;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Brightness;->isOnOff()Z

    move-result v1

    return v1
.end method

.method public lightOfScreenValue()I
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/lewa/spm/control/Brightness;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Brightness;-><init>(ILandroid/content/Context;)V

    .line 53
    .local v0, b:Lcom/lewa/spm/control/Brightness;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Brightness;->getAdjustValue()I

    move-result v1

    return v1
.end method

.method public lockScreenValue()I
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/lewa/spm/control/Lockscreen;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Lockscreen;-><init>(ILandroid/content/Context;)V

    .line 58
    .local v0, l:Lcom/lewa/spm/control/Lockscreen;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Lockscreen;->getAdjustValue()I

    move-result v1

    return v1
.end method

.method public mobileDataState()Z
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/lewa/spm/control/Mobile;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Mobile;-><init>(ILandroid/content/Context;)V

    .line 43
    .local v0, m:Lcom/lewa/spm/control/Mobile;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Mobile;->isOnOff()Z

    move-result v1

    return v1
.end method

.method public syncState()Z
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/lewa/spm/control/AutoSync;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    invoke-direct {v0, v1}, Lcom/lewa/spm/control/AutoSync;-><init>(I)V

    .line 63
    .local v0, a:Lcom/lewa/spm/control/AutoSync;
    invoke-virtual {v0}, Lcom/lewa/spm/control/AutoSync;->isOnOff()Z

    move-result v1

    return v1
.end method

.method public wifiState()Z
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/lewa/spm/control/Wifi;

    iget v1, p0, Lcom/lewa/spm/control/InquirState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/InquirState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Wifi;-><init>(ILandroid/content/Context;)V

    .line 38
    .local v0, wf:Lcom/lewa/spm/control/Wifi;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Wifi;->isOnOff()Z

    move-result v1

    return v1
.end method
