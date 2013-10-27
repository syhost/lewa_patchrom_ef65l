.class public Lcom/lewa/spm/mode/ModeDevStatus;
.super Ljava/lang/Object;
.source "ModeDevStatus.java"


# instance fields
.field public autoSyncOn:Z

.field public backlightOn:Z

.field public bluetoothOn:Z

.field public brightnessOn:Z

.field public brightnessValue:I

.field public dataOn:Z

.field public flyModeOn:Z

.field public gpsOn:Z

.field public hapticOn:Z

.field mContex:Landroid/content/Context;

.field public mMode:I

.field public timeOutValue:I

.field public wifiOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "ctx"
    .parameter "mode"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mContex:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mMode:I

    .line 33
    return-void
.end method

.method private saveSavingModeStatus()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, fn:Ljava/lang/String;
    iget v6, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mMode:I

    if-nez v6, :cond_8

    .line 68
    const-string v0, "dev_status_store_long"

    .line 72
    :goto_0
    new-instance v1, Lcom/lewa/spm/control/InquirState;

    iget-object v6, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mContex:Landroid/content/Context;

    iget v7, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mMode:I

    invoke-direct {v1, v6, v7}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v1, iqr:Lcom/lewa/spm/control/InquirState;
    new-instance v3, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    iget-object v6, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mContex:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 74
    .local v3, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    new-instance v2, Lcom/lewa/spm/mode/ModeSettings;

    iget-object v6, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mContex:Landroid/content/Context;

    iget v7, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mMode:I

    invoke-direct {v2, v6, v7}, Lcom/lewa/spm/mode/ModeSettings;-><init>(Landroid/content/Context;I)V

    .line 75
    .local v2, ms:Lcom/lewa/spm/mode/ModeSettings;
    invoke-virtual {v2}, Lcom/lewa/spm/mode/ModeSettings;->getSettings()V

    .line 77
    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    if-nez v6, :cond_0

    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    if-nez v6, :cond_9

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->airplaneState()Z

    move-result v6

    if-nez v6, :cond_9

    .line 78
    :cond_0
    const-string v6, "spm_dev_airplane"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    :goto_1
    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    if-nez v6, :cond_1

    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    if-nez v6, :cond_a

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->mobileDataState()Z

    move-result v6

    if-nez v6, :cond_a

    .line 84
    :cond_1
    const-string v6, "spm_dev_data"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 89
    :goto_2
    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    if-nez v6, :cond_2

    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    if-nez v6, :cond_b

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->wifiState()Z

    move-result v6

    if-nez v6, :cond_b

    .line 90
    :cond_2
    const-string v6, "spm_dev_wifi"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    :goto_3
    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    if-nez v6, :cond_3

    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    if-nez v6, :cond_c

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->bluetoothState()Z

    move-result v6

    if-nez v6, :cond_c

    .line 96
    :cond_3
    const-string v6, "spm_dev_bluetooth"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 101
    :goto_4
    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    if-nez v6, :cond_4

    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    if-nez v6, :cond_d

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->gpsState()Z

    move-result v6

    if-nez v6, :cond_d

    .line 102
    :cond_4
    const-string v6, "spm_dev_gps"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    :goto_5
    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    if-nez v6, :cond_5

    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    if-nez v6, :cond_e

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->hapticState()Z

    move-result v6

    if-nez v6, :cond_e

    .line 108
    :cond_5
    const-string v6, "spm_dev_haptic"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 113
    :goto_6
    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    if-nez v6, :cond_6

    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    if-nez v6, :cond_f

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->syncState()Z

    move-result v6

    if-nez v6, :cond_f

    .line 114
    :cond_6
    const-string v6, "spm_dev_auto_sync"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 119
    :goto_7
    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    if-nez v6, :cond_7

    iget-boolean v6, v2, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    if-nez v6, :cond_10

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->backlight()Z

    move-result v6

    if-nez v6, :cond_10

    .line 120
    :cond_7
    const-string v6, "spm_dev_backlight"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 125
    :goto_8
    const-string v6, "spm_dev_brghtiness"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenAutoState()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 126
    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v6

    iget v7, v2, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    if-ge v6, v7, :cond_11

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v4

    .line 127
    .local v4, screenLevel:I
    :goto_9
    const-string v6, "spm_dev_brghtiness_value"

    invoke-virtual {v3, v0, v6, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lockScreenValue()I

    move-result v6

    iget v7, v2, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    if-ge v6, v7, :cond_12

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lockScreenValue()I

    move-result v5

    .line 130
    .local v5, timeout:I
    :goto_a
    const-string v6, "spm_dev_time_out"

    invoke-virtual {v3, v0, v6, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    return-void

    .line 70
    .end local v1           #iqr:Lcom/lewa/spm/control/InquirState;
    .end local v2           #ms:Lcom/lewa/spm/mode/ModeSettings;
    .end local v3           #saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    .end local v4           #screenLevel:I
    .end local v5           #timeout:I
    :cond_8
    const-string v0, "dev_status_store_interval"

    goto/16 :goto_0

    .line 80
    .restart local v1       #iqr:Lcom/lewa/spm/control/InquirState;
    .restart local v2       #ms:Lcom/lewa/spm/mode/ModeSettings;
    .restart local v3       #saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    :cond_9
    const-string v6, "spm_dev_airplane"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 86
    :cond_a
    const-string v6, "spm_dev_data"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 92
    :cond_b
    const-string v6, "spm_dev_wifi"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 98
    :cond_c
    const-string v6, "spm_dev_bluetooth"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_4

    .line 104
    :cond_d
    const-string v6, "spm_dev_gps"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    .line 110
    :cond_e
    const-string v6, "spm_dev_haptic"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 116
    :cond_f
    const-string v6, "spm_dev_auto_sync"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 122
    :cond_10
    const-string v6, "spm_dev_backlight"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v0, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 126
    :cond_11
    iget v4, v2, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    goto :goto_9

    .line 129
    .restart local v4       #screenLevel:I
    :cond_12
    iget v5, v2, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    goto :goto_a
.end method


# virtual methods
.method public getStatus()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, fn:Ljava/lang/String;
    iget v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mMode:I

    if-ne v3, v4, :cond_0

    .line 136
    const-string v0, "dev_status_store_out"

    .line 142
    :goto_0
    new-instance v2, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    iget-object v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mContex:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 143
    .local v2, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    new-instance v1, Lcom/lewa/spm/control/InquirState;

    iget-object v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mContex:Landroid/content/Context;

    invoke-direct {v1, v3, v4}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 144
    .local v1, inquireState:Lcom/lewa/spm/control/InquirState;
    const-string v3, "spm_dev_airplane"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->flyModeOn:Z

    .line 145
    const-string v3, "spm_dev_bluetooth"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->bluetoothOn:Z

    .line 146
    const-string v3, "spm_dev_gps"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->gpsOn:Z

    .line 147
    const-string v3, "spm_dev_haptic"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->hapticOn:Z

    .line 148
    const-string v3, "spm_dev_data"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->dataOn:Z

    .line 149
    const-string v3, "spm_dev_auto_sync"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->autoSyncOn:Z

    .line 150
    const-string v3, "spm_dev_wifi"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->wifiOn:Z

    .line 151
    const-string v3, "spm_dev_backlight"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->backlightOn:Z

    .line 152
    const-string v3, "spm_dev_brghtiness"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessOn:Z

    .line 153
    const-string v3, "spm_dev_brghtiness_value"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessValue:I

    .line 156
    const-string v3, "spm_dev_time_out"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lockScreenValue()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->timeOutValue:I

    .line 159
    return-void

    .line 137
    .end local v1           #inquireState:Lcom/lewa/spm/control/InquirState;
    .end local v2           #saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    :cond_0
    iget v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mMode:I

    if-nez v3, :cond_1

    .line 138
    const-string v0, "dev_status_store_long"

    goto/16 :goto_0

    .line 140
    :cond_1
    const-string v0, "dev_status_store_interval"

    goto/16 :goto_0
.end method

.method public saveStatus()V
    .locals 5

    .prologue
    .line 42
    iget v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/lewa/spm/mode/ModeDevStatus;->saveSavingModeStatus()V

    .line 63
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v2, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    iget-object v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mContex:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 46
    .local v2, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    new-instance v1, Lcom/lewa/spm/control/InquirState;

    iget-object v3, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mContex:Landroid/content/Context;

    iget v4, p0, Lcom/lewa/spm/mode/ModeDevStatus;->mMode:I

    invoke-direct {v1, v3, v4}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 47
    .local v1, inquireState:Lcom/lewa/spm/control/InquirState;
    const-string v0, "dev_status_store_out"

    .line 49
    .local v0, fn:Ljava/lang/String;
    const-string v3, "spm_dev_airplane"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->airplaneState()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50
    const-string v3, "spm_dev_bluetooth"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->bluetoothState()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    const-string v3, "spm_dev_gps"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->gpsState()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    const-string v3, "spm_dev_haptic"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->hapticState()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 53
    const-string v3, "spm_dev_data"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->mobileDataState()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 54
    const-string v3, "spm_dev_auto_sync"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->syncState()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 55
    const-string v3, "spm_dev_wifi"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->wifiState()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 57
    const-string v3, "spm_dev_backlight"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->backlight()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 58
    const-string v3, "spm_dev_brghtiness"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenAutoState()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 59
    const-string v3, "spm_dev_brghtiness_value"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    const-string v3, "spm_dev_time_out"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lockScreenValue()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
