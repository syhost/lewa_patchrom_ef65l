.class public Lcom/lewa/spm/control/Bluetooth;
.super Lcom/lewa/spm/control/SwitchControl;
.source "Bluetooth.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lewa/spm/control/SwitchControl;-><init>(I)V

    .line 14
    return-void
.end method

.method private bluetoothStateToFiveState(I)Z
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, flag:Z
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    return v0

    .line 45
    :pswitch_0
    const/4 v0, 0x0

    .line 46
    goto :goto_0

    .line 48
    :pswitch_1
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 51
    :pswitch_2
    const/4 v0, 0x0

    .line 52
    goto :goto_0

    .line 54
    :pswitch_3
    const/4 v0, 0x0

    .line 55
    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getState()I
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 64
    .local v0, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    return v1
.end method


# virtual methods
.method public change(Z)V
    .locals 1
    .parameter "closeOrOpen"

    .prologue
    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public isOnOff()Z
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 34
    .local v0, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lewa/spm/control/Bluetooth;->bluetoothStateToFiveState(I)Z

    move-result v1

    return v1
.end method
