.class public Lcom/lewa/spm/control/SwitchState;
.super Ljava/lang/Object;
.source "SwitchState.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "ctx"
    .parameter "mode"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    .line 13
    iput p2, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    .line 14
    return-void
.end method


# virtual methods
.method public airplaneState(Z)V
    .locals 3
    .parameter "devValue"

    .prologue
    .line 27
    new-instance v0, Lcom/lewa/spm/control/ControlAirPlane;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/ControlAirPlane;-><init>(ILandroid/content/Context;)V

    .line 28
    .local v0, flyMode:Lcom/lewa/spm/control/ControlAirPlane;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/ControlAirPlane;->change(Z)V

    .line 29
    return-void
.end method

.method public backlightState(Z)V
    .locals 3
    .parameter "devValue"

    .prologue
    .line 51
    new-instance v0, Lcom/lewa/spm/control/KeyBoardBackLight;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/KeyBoardBackLight;-><init>(ILandroid/content/Context;)V

    .line 52
    .local v0, m:Lcom/lewa/spm/control/KeyBoardBackLight;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/KeyBoardBackLight;->change(Z)V

    .line 53
    return-void
.end method

.method public bluetoothState(Z)V
    .locals 2
    .parameter "devValue"

    .prologue
    .line 17
    new-instance v0, Lcom/lewa/spm/control/Bluetooth;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    invoke-direct {v0, v1}, Lcom/lewa/spm/control/Bluetooth;-><init>(I)V

    .line 18
    .local v0, bt:Lcom/lewa/spm/control/Bluetooth;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/Bluetooth;->change(Z)V

    .line 19
    return-void
.end method

.method public gpsState(Z)V
    .locals 3
    .parameter "devValue"

    .prologue
    .line 32
    new-instance v0, Lcom/lewa/spm/control/Gps;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Gps;-><init>(ILandroid/content/Context;)V

    .line 33
    .local v0, gps:Lcom/lewa/spm/control/Gps;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/Gps;->change(Z)V

    .line 34
    return-void
.end method

.method public hapticState(Z)V
    .locals 3
    .parameter "devValue"

    .prologue
    .line 37
    new-instance v0, Lcom/lewa/spm/control/Haptic;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Haptic;-><init>(ILandroid/content/Context;)V

    .line 38
    .local v0, h:Lcom/lewa/spm/control/Haptic;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/Haptic;->change(Z)V

    .line 39
    return-void
.end method

.method public lightOfScreenAutoState(Z)V
    .locals 3
    .parameter "devValue"

    .prologue
    .line 55
    new-instance v0, Lcom/lewa/spm/control/Brightness;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Brightness;-><init>(ILandroid/content/Context;)V

    .line 56
    .local v0, b:Lcom/lewa/spm/control/Brightness;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/Brightness;->change(Z)V

    .line 57
    return-void
.end method

.method public lightOfScreenValue(I)V
    .locals 3
    .parameter "brightNum"

    .prologue
    .line 60
    new-instance v0, Lcom/lewa/spm/control/Brightness;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Brightness;-><init>(ILandroid/content/Context;)V

    .line 61
    .local v0, b:Lcom/lewa/spm/control/Brightness;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/Brightness;->adjust(I)V

    .line 62
    return-void
.end method

.method public lockScreenValue(I)V
    .locals 3
    .parameter "lockNum"

    .prologue
    .line 65
    new-instance v0, Lcom/lewa/spm/control/Lockscreen;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Lockscreen;-><init>(ILandroid/content/Context;)V

    .line 66
    .local v0, l:Lcom/lewa/spm/control/Lockscreen;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/Lockscreen;->adjust(I)V

    .line 67
    return-void
.end method

.method public mobileDataState(Z)V
    .locals 3
    .parameter "devValue"

    .prologue
    .line 47
    new-instance v0, Lcom/lewa/spm/control/Mobile;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Mobile;-><init>(ILandroid/content/Context;)V

    .line 48
    .local v0, m:Lcom/lewa/spm/control/Mobile;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/Mobile;->change(Z)V

    .line 49
    return-void
.end method

.method public syncState(Z)V
    .locals 2
    .parameter "devValue"

    .prologue
    .line 22
    new-instance v0, Lcom/lewa/spm/control/AutoSync;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    invoke-direct {v0, v1}, Lcom/lewa/spm/control/AutoSync;-><init>(I)V

    .line 23
    .local v0, as:Lcom/lewa/spm/control/AutoSync;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/AutoSync;->change(Z)V

    .line 24
    return-void
.end method

.method public wifiState(Z)V
    .locals 3
    .parameter "devValue"

    .prologue
    .line 42
    new-instance v0, Lcom/lewa/spm/control/Wifi;

    iget v1, p0, Lcom/lewa/spm/control/SwitchState;->mMode:I

    iget-object v2, p0, Lcom/lewa/spm/control/SwitchState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Wifi;-><init>(ILandroid/content/Context;)V

    .line 43
    .local v0, wf:Lcom/lewa/spm/control/Wifi;
    invoke-virtual {v0, p1}, Lcom/lewa/spm/control/Wifi;->change(Z)V

    .line 44
    return-void
.end method
