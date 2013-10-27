.class public Lcom/lewa/spm/control/Executer;
.super Ljava/lang/Object;
.source "Executer.java"


# static fields
.field private static mAutoBrightSwithing:Z

.field private static mAutoSyncSwithing:Z

.field private static mBTSwithing:Z

.field private static mDataSwithing:Z

.field private static mGpsSwithing:Z

.field private static mHapticSwithing:Z

.field private static mWifiSwithing:Z

.field private static mflySwithing:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 281
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mflySwithing:Z

    .line 282
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mWifiSwithing:Z

    .line 283
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mGpsSwithing:Z

    .line 284
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mBTSwithing:Z

    .line 285
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mDataSwithing:Z

    .line 286
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mHapticSwithing:Z

    .line 287
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mAutoBrightSwithing:Z

    .line 288
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mAutoSyncSwithing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "ctx"
    .parameter "mode"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    .line 27
    iput p2, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    .line 29
    return-void
.end method

.method public static isDevSwitching()Z
    .locals 2

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, in:Z
    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mflySwithing:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mWifiSwithing:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mGpsSwithing:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mBTSwithing:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mDataSwithing:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mHapticSwithing:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mAutoSyncSwithing:Z

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    const/4 v0, 0x1

    .line 303
    :cond_1
    return v0
.end method

.method private static noticeSwitchFinish(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 334
    sget-boolean v1, Lcom/lewa/spm/mode/PowerSavingMode;->isExcuting:Z

    if-nez v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mflySwithing:Z

    if-nez v1, :cond_0

    .line 340
    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mWifiSwithing:Z

    if-nez v1, :cond_0

    .line 343
    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mGpsSwithing:Z

    if-nez v1, :cond_0

    .line 346
    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mBTSwithing:Z

    if-nez v1, :cond_0

    .line 349
    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mDataSwithing:Z

    if-nez v1, :cond_0

    .line 352
    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mHapticSwithing:Z

    if-nez v1, :cond_0

    .line 355
    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mAutoBrightSwithing:Z

    if-nez v1, :cond_0

    .line 358
    sget-boolean v1, Lcom/lewa/spm/control/Executer;->mAutoSyncSwithing:Z

    if-nez v1, :cond_0

    .line 361
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lewa/spm/mode/PowerSavingMode;->isExcuting:Z

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "spm_dev_switch_finish_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, excuteFinish:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setDevSwitchOver(Landroid/content/Context;I)V
    .locals 1
    .parameter "ctx"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 307
    packed-switch p1, :pswitch_data_0

    .line 330
    :goto_0
    invoke-static {p0}, Lcom/lewa/spm/control/Executer;->noticeSwitchFinish(Landroid/content/Context;)V

    .line 331
    return-void

    .line 309
    :pswitch_0
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mflySwithing:Z

    goto :goto_0

    .line 312
    :pswitch_1
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mWifiSwithing:Z

    goto :goto_0

    .line 315
    :pswitch_2
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mGpsSwithing:Z

    goto :goto_0

    .line 318
    :pswitch_3
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mBTSwithing:Z

    goto :goto_0

    .line 321
    :pswitch_4
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mDataSwithing:Z

    goto :goto_0

    .line 324
    :pswitch_5
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mHapticSwithing:Z

    goto :goto_0

    .line 327
    :pswitch_6
    sput-boolean v0, Lcom/lewa/spm/control/Executer;->mAutoSyncSwithing:Z

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public entryUserMode()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/lewa/spm/control/Executer;->swithUserMode()V

    .line 37
    return-void
.end method

.method public executSavingPower()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/lewa/spm/control/Executer;->swithSavingMode()V

    .line 33
    return-void
.end method

.method public executSavingPowerDiff()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 119
    sput-boolean v10, Lcom/lewa/spm/mode/PowerSavingMode;->isExcuting:Z

    .line 120
    new-instance v3, Lcom/lewa/spm/mode/ModeSettings;

    iget-object v7, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-direct {v3, v7, v8}, Lcom/lewa/spm/mode/ModeSettings;-><init>(Landroid/content/Context;I)V

    .line 121
    .local v3, ms:Lcom/lewa/spm/mode/ModeSettings;
    new-instance v1, Lcom/lewa/spm/control/InquirState;

    iget-object v7, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-direct {v1, v7, v8}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 122
    .local v1, inquirState:Lcom/lewa/spm/control/InquirState;
    new-instance v5, Lcom/lewa/spm/control/SwitchState;

    iget-object v7, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-direct {v5, v7, v8}, Lcom/lewa/spm/control/SwitchState;-><init>(Landroid/content/Context;I)V

    .line 123
    .local v5, switchState:Lcom/lewa/spm/control/SwitchState;
    invoke-virtual {v3}, Lcom/lewa/spm/mode/ModeSettings;->getSettings()V

    .line 124
    new-instance v2, Lcom/lewa/spm/mode/ModeDevStatus;

    iget-object v7, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-direct {v2, v7, v8}, Lcom/lewa/spm/mode/ModeDevStatus;-><init>(Landroid/content/Context;I)V

    .line 125
    .local v2, mds:Lcom/lewa/spm/mode/ModeDevStatus;
    invoke-virtual {v2}, Lcom/lewa/spm/mode/ModeDevStatus;->getStatus()V

    .line 127
    iget v7, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    if-nez v7, :cond_b

    .line 128
    const/4 v0, 0x1

    .line 132
    .local v0, aotherMode:I
    :goto_0
    new-instance v4, Lcom/lewa/spm/mode/ModeSettings;

    iget-object v7, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7, v0}, Lcom/lewa/spm/mode/ModeSettings;-><init>(Landroid/content/Context;I)V

    .line 133
    .local v4, ms1:Lcom/lewa/spm/mode/ModeSettings;
    invoke-virtual {v4}, Lcom/lewa/spm/mode/ModeSettings;->getSettings()V

    .line 135
    iget-boolean v7, v3, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    if-eqz v7, :cond_0

    .line 137
    iget-boolean v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->wifiOn:Z

    if-eqz v7, :cond_0

    iget-boolean v7, v4, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->wifiState()Z

    move-result v7

    if-nez v7, :cond_0

    .line 138
    sput-boolean v10, Lcom/lewa/spm/control/Executer;->mWifiSwithing:Z

    .line 139
    invoke-virtual {v5, v10}, Lcom/lewa/spm/control/SwitchState;->wifiState(Z)V

    .line 142
    :cond_0
    iget-boolean v7, v3, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    if-eqz v7, :cond_1

    .line 144
    iget-boolean v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->gpsOn:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v4, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->gpsState()Z

    move-result v7

    if-nez v7, :cond_1

    .line 145
    invoke-virtual {v5, v10}, Lcom/lewa/spm/control/SwitchState;->gpsState(Z)V

    .line 148
    :cond_1
    iget-boolean v7, v3, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    if-eqz v7, :cond_2

    .line 150
    iget-boolean v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->bluetoothOn:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v4, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->bluetoothState()Z

    move-result v7

    if-nez v7, :cond_2

    .line 151
    sput-boolean v10, Lcom/lewa/spm/control/Executer;->mBTSwithing:Z

    .line 152
    invoke-virtual {v5, v10}, Lcom/lewa/spm/control/SwitchState;->bluetoothState(Z)V

    .line 155
    :cond_2
    iget-boolean v7, v3, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    if-eqz v7, :cond_3

    .line 157
    iget-boolean v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->dataOn:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v4, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    if-nez v7, :cond_3

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->mobileDataState()Z

    move-result v7

    if-nez v7, :cond_3

    .line 158
    invoke-virtual {v5, v10}, Lcom/lewa/spm/control/SwitchState;->mobileDataState(Z)V

    .line 161
    :cond_3
    iget-boolean v7, v3, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    if-eqz v7, :cond_4

    .line 163
    iget-boolean v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->hapticOn:Z

    if-eqz v7, :cond_4

    iget-boolean v7, v4, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->hapticState()Z

    move-result v7

    if-nez v7, :cond_4

    .line 164
    invoke-virtual {v5, v10}, Lcom/lewa/spm/control/SwitchState;->hapticState(Z)V

    .line 167
    :cond_4
    iget-boolean v7, v3, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    if-eqz v7, :cond_5

    .line 169
    iget-boolean v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->autoSyncOn:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v4, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    if-nez v7, :cond_5

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->syncState()Z

    move-result v7

    if-nez v7, :cond_5

    .line 170
    invoke-virtual {v5, v10}, Lcom/lewa/spm/control/SwitchState;->syncState(Z)V

    .line 173
    :cond_5
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 174
    .local v6, version:I
    const/16 v7, 0x11

    if-ge v6, v7, :cond_6

    .line 175
    iget-boolean v7, v3, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    if-eqz v7, :cond_6

    .line 177
    iget-boolean v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->backlightOn:Z

    if-eqz v7, :cond_6

    iget-boolean v7, v4, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    if-nez v7, :cond_6

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->backlight()Z

    move-result v7

    if-nez v7, :cond_6

    .line 178
    invoke-virtual {v5, v10}, Lcom/lewa/spm/control/SwitchState;->backlightState(Z)V

    .line 183
    :cond_6
    const-string v7, "lkr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Executer  executSavingPowerDiff  mds.brightnessValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessValue:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   inquirState.lightOfScreenValue()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   ms.brightnessValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  ms1.brightnessValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessValue:I

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v8

    if-le v7, v8, :cond_7

    iget v7, v3, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    iget v8, v2, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessValue:I

    if-ge v7, v8, :cond_7

    .line 189
    iget v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessValue:I

    iget v8, v4, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    if-le v7, v8, :cond_c

    iget v7, v4, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    :goto_1
    invoke-virtual {v5, v7}, Lcom/lewa/spm/control/SwitchState;->lightOfScreenValue(I)V

    .line 193
    :cond_7
    iget v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->timeOutValue:I

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lockScreenValue()I

    move-result v8

    if-le v7, v8, :cond_8

    iget v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->timeOutValue:I

    iget v8, v3, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    if-le v7, v8, :cond_8

    .line 195
    iget v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->timeOutValue:I

    iget v8, v4, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    if-le v7, v8, :cond_d

    iget v7, v4, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    :goto_2
    invoke-virtual {v5, v7}, Lcom/lewa/spm/control/SwitchState;->lockScreenValue(I)V

    .line 200
    :cond_8
    iget v7, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    if-nez v7, :cond_e

    .line 209
    :cond_9
    :goto_3
    iget-object v7, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-static {v7, v8}, Lcom/lewa/spm/mode/ModeSettings;->restoreSetting(Landroid/content/Context;I)V

    .line 210
    invoke-static {}, Lcom/lewa/spm/control/Executer;->isDevSwitching()Z

    move-result v7

    if-nez v7, :cond_a

    .line 211
    iget-object v7, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/lewa/spm/control/Executer;->noticeSwitchFinish(Landroid/content/Context;)V

    .line 213
    :cond_a
    return-void

    .line 130
    .end local v0           #aotherMode:I
    .end local v4           #ms1:Lcom/lewa/spm/mode/ModeSettings;
    .end local v6           #version:I
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #aotherMode:I
    goto/16 :goto_0

    .line 189
    .restart local v4       #ms1:Lcom/lewa/spm/mode/ModeSettings;
    .restart local v6       #version:I
    :cond_c
    iget v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessValue:I

    goto :goto_1

    .line 195
    :cond_d
    iget v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->timeOutValue:I

    goto :goto_2

    .line 201
    :cond_e
    iget-boolean v7, v3, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    if-eqz v7, :cond_9

    .line 203
    iget-boolean v7, v2, Lcom/lewa/spm/mode/ModeDevStatus;->flyModeOn:Z

    if-nez v7, :cond_9

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->airplaneState()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 204
    sput-boolean v10, Lcom/lewa/spm/control/Executer;->mflySwithing:Z

    .line 205
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/lewa/spm/control/SwitchState;->airplaneState(Z)V

    goto :goto_3
.end method

.method swithSavingMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 40
    sput-boolean v8, Lcom/lewa/spm/mode/PowerSavingMode;->isExcuting:Z

    .line 41
    new-instance v2, Lcom/lewa/spm/mode/ModeSettings;

    iget-object v5, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-direct {v2, v5, v6}, Lcom/lewa/spm/mode/ModeSettings;-><init>(Landroid/content/Context;I)V

    .line 42
    .local v2, ms:Lcom/lewa/spm/mode/ModeSettings;
    new-instance v0, Lcom/lewa/spm/control/InquirState;

    iget-object v5, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-direct {v0, v5, v6}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 43
    .local v0, inquirState:Lcom/lewa/spm/control/InquirState;
    new-instance v3, Lcom/lewa/spm/control/SwitchState;

    iget-object v5, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-direct {v3, v5, v6}, Lcom/lewa/spm/control/SwitchState;-><init>(Landroid/content/Context;I)V

    .line 44
    .local v3, switchState:Lcom/lewa/spm/control/SwitchState;
    invoke-virtual {v2}, Lcom/lewa/spm/mode/ModeSettings;->getSettings()V

    .line 45
    iget-boolean v5, v2, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    if-eqz v5, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->wifiState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    sput-boolean v8, Lcom/lewa/spm/control/Executer;->mWifiSwithing:Z

    .line 49
    invoke-virtual {v3, v7}, Lcom/lewa/spm/control/SwitchState;->wifiState(Z)V

    .line 52
    :cond_0
    iget-boolean v5, v2, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->gpsState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    invoke-virtual {v3, v7}, Lcom/lewa/spm/control/SwitchState;->gpsState(Z)V

    .line 58
    :cond_1
    iget-boolean v5, v2, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    if-eqz v5, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->bluetoothState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    sput-boolean v8, Lcom/lewa/spm/control/Executer;->mBTSwithing:Z

    .line 62
    invoke-virtual {v3, v7}, Lcom/lewa/spm/control/SwitchState;->bluetoothState(Z)V

    .line 65
    :cond_2
    iget-boolean v5, v2, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    if-eqz v5, :cond_3

    .line 67
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->mobileDataState()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    invoke-virtual {v3, v7}, Lcom/lewa/spm/control/SwitchState;->mobileDataState(Z)V

    .line 71
    :cond_3
    iget-boolean v5, v2, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    if-eqz v5, :cond_4

    .line 73
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->hapticState()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    invoke-virtual {v3, v7}, Lcom/lewa/spm/control/SwitchState;->hapticState(Z)V

    .line 77
    :cond_4
    iget-boolean v5, v2, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    if-eqz v5, :cond_5

    .line 79
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->syncState()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 80
    invoke-virtual {v3, v7}, Lcom/lewa/spm/control/SwitchState;->syncState(Z)V

    .line 83
    :cond_5
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 84
    .local v4, version:I
    const/16 v5, 0x11

    if-ge v4, v5, :cond_6

    .line 85
    iget-boolean v5, v2, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    if-eqz v5, :cond_6

    .line 87
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->backlight()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 88
    invoke-virtual {v3, v7}, Lcom/lewa/spm/control/SwitchState;->backlightState(Z)V

    .line 93
    :cond_6
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v1

    .line 94
    .local v1, lsv:I
    const-string v5, "lkr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executer  swithSavingMode  ms.brightnessValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  lsv="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v5, v2, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    if-le v1, v5, :cond_7

    .line 98
    iget v5, v2, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    invoke-virtual {v3, v5}, Lcom/lewa/spm/control/SwitchState;->lightOfScreenValue(I)V

    .line 100
    :cond_7
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->lockScreenValue()I

    move-result v5

    iget v6, v2, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    if-le v5, v6, :cond_8

    .line 101
    iget v5, v2, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    invoke-virtual {v3, v5}, Lcom/lewa/spm/control/SwitchState;->lockScreenValue(I)V

    .line 104
    :cond_8
    iget v5, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    if-nez v5, :cond_b

    .line 113
    :cond_9
    :goto_0
    iget-object v5, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-static {v5, v6}, Lcom/lewa/spm/mode/ModeSettings;->restoreSetting(Landroid/content/Context;I)V

    .line 114
    invoke-static {}, Lcom/lewa/spm/control/Executer;->isDevSwitching()Z

    move-result v5

    if-nez v5, :cond_a

    .line 115
    iget-object v5, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lewa/spm/control/Executer;->noticeSwitchFinish(Landroid/content/Context;)V

    .line 117
    :cond_a
    return-void

    .line 105
    :cond_b
    iget-boolean v5, v2, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    if-eqz v5, :cond_9

    .line 107
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->airplaneState()Z

    move-result v5

    if-nez v5, :cond_9

    .line 108
    sput-boolean v8, Lcom/lewa/spm/control/Executer;->mflySwithing:Z

    .line 109
    invoke-virtual {v3, v8}, Lcom/lewa/spm/control/SwitchState;->airplaneState(Z)V

    goto :goto_0
.end method

.method swithUserMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 215
    sput-boolean v6, Lcom/lewa/spm/mode/PowerSavingMode;->isExcuting:Z

    .line 216
    new-instance v1, Lcom/lewa/spm/mode/ModeDevStatus;

    iget-object v4, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-direct {v1, v4, v5}, Lcom/lewa/spm/mode/ModeDevStatus;-><init>(Landroid/content/Context;I)V

    .line 217
    .local v1, mds:Lcom/lewa/spm/mode/ModeDevStatus;
    new-instance v0, Lcom/lewa/spm/control/InquirState;

    iget-object v4, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-direct {v0, v4, v5}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 218
    .local v0, inquirState:Lcom/lewa/spm/control/InquirState;
    new-instance v2, Lcom/lewa/spm/control/SwitchState;

    iget-object v4, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/lewa/spm/control/Executer;->mMode:I

    invoke-direct {v2, v4, v5}, Lcom/lewa/spm/control/SwitchState;-><init>(Landroid/content/Context;I)V

    .line 219
    .local v2, switchState:Lcom/lewa/spm/control/SwitchState;
    invoke-virtual {v1}, Lcom/lewa/spm/mode/ModeDevStatus;->getStatus()V

    .line 221
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->wifiState()Z

    move-result v4

    iget-boolean v5, v1, Lcom/lewa/spm/mode/ModeDevStatus;->wifiOn:Z

    if-eq v4, v5, :cond_0

    .line 222
    sput-boolean v6, Lcom/lewa/spm/control/Executer;->mWifiSwithing:Z

    .line 223
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->wifiOn:Z

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->wifiState(Z)V

    .line 227
    :cond_0
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->gpsState()Z

    move-result v4

    iget-boolean v5, v1, Lcom/lewa/spm/mode/ModeDevStatus;->gpsOn:Z

    if-eq v4, v5, :cond_1

    .line 228
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->gpsOn:Z

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->gpsState(Z)V

    .line 231
    :cond_1
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->bluetoothState()Z

    move-result v4

    iget-boolean v5, v1, Lcom/lewa/spm/mode/ModeDevStatus;->bluetoothOn:Z

    if-eq v4, v5, :cond_4

    .line 232
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->bluetoothOn:Z

    if-nez v4, :cond_2

    invoke-static {}, Lcom/lewa/spm/control/Bluetooth;->getState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    :cond_2
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->bluetoothOn:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lewa/spm/control/Bluetooth;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 234
    :cond_3
    sput-boolean v6, Lcom/lewa/spm/control/Executer;->mBTSwithing:Z

    .line 235
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->bluetoothOn:Z

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->bluetoothState(Z)V

    .line 239
    :cond_4
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->mobileDataState()Z

    move-result v4

    iget-boolean v5, v1, Lcom/lewa/spm/mode/ModeDevStatus;->dataOn:Z

    if-eq v4, v5, :cond_5

    .line 240
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->dataOn:Z

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->mobileDataState(Z)V

    .line 243
    :cond_5
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->hapticState()Z

    move-result v4

    iget-boolean v5, v1, Lcom/lewa/spm/mode/ModeDevStatus;->hapticOn:Z

    if-eq v4, v5, :cond_6

    .line 244
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->hapticOn:Z

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->hapticState(Z)V

    .line 247
    :cond_6
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->syncState()Z

    move-result v4

    iget-boolean v5, v1, Lcom/lewa/spm/mode/ModeDevStatus;->autoSyncOn:Z

    if-eq v4, v5, :cond_7

    .line 248
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->autoSyncOn:Z

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->syncState(Z)V

    .line 251
    :cond_7
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 252
    .local v3, version:I
    const/16 v4, 0x11

    if-ge v3, v4, :cond_8

    .line 253
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->backlight()Z

    move-result v4

    iget-boolean v5, v1, Lcom/lewa/spm/mode/ModeDevStatus;->backlightOn:Z

    if-eq v4, v5, :cond_8

    .line 254
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->backlightOn:Z

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->backlightState(Z)V

    .line 261
    :cond_8
    iget v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessValue:I

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->lightOfScreenValue(I)V

    .line 262
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessOn:Z

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->lightOfScreenAutoState(Z)V

    .line 270
    iget v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->timeOutValue:I

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->lockScreenValue(I)V

    .line 272
    invoke-virtual {v0}, Lcom/lewa/spm/control/InquirState;->airplaneState()Z

    move-result v4

    iget-boolean v5, v1, Lcom/lewa/spm/mode/ModeDevStatus;->flyModeOn:Z

    if-eq v4, v5, :cond_9

    .line 273
    sput-boolean v6, Lcom/lewa/spm/control/Executer;->mflySwithing:Z

    .line 274
    iget-boolean v4, v1, Lcom/lewa/spm/mode/ModeDevStatus;->flyModeOn:Z

    invoke-virtual {v2, v4}, Lcom/lewa/spm/control/SwitchState;->airplaneState(Z)V

    .line 276
    :cond_9
    invoke-static {}, Lcom/lewa/spm/control/Executer;->isDevSwitching()Z

    move-result v4

    if-nez v4, :cond_a

    .line 277
    iget-object v4, p0, Lcom/lewa/spm/control/Executer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lewa/spm/control/Executer;->noticeSwitchFinish(Landroid/content/Context;)V

    .line 279
    :cond_a
    return-void
.end method
