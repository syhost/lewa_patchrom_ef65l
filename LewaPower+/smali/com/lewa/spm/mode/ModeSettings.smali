.class public Lcom/lewa/spm/mode/ModeSettings;
.super Ljava/lang/Object;
.source "ModeSettings.java"


# static fields
.field public static restore_cause:I


# instance fields
.field public autoSyncSetted:Z

.field public backlightSetted:Z

.field public bluetoothSetted:Z

.field public brightnessSetted:Z

.field public brightnessValue:I

.field public dataSetted:Z

.field public flyModeSetted:Z

.field public gpsSetted:Z

.field public hapticSetted:Z

.field mContex:Landroid/content/Context;

.field public mMode:I

.field public timeOutValue:I

.field public wifiSetted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, -0x1

    sput v0, Lcom/lewa/spm/mode/ModeSettings;->restore_cause:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "ctx"
    .parameter "mode"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lewa/spm/mode/ModeSettings;->mContex:Landroid/content/Context;

    .line 31
    iput p2, p0, Lcom/lewa/spm/mode/ModeSettings;->mMode:I

    .line 32
    iget-object v0, p0, Lcom/lewa/spm/mode/ModeSettings;->mContex:Landroid/content/Context;

    invoke-static {v0}, Lcom/lewa/spm/mode/ModeSettings;->sureInited(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static restoreSetting(Landroid/content/Context;I)V
    .locals 4
    .parameter "ctx"
    .parameter "mode"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 124
    sget v1, Lcom/lewa/spm/mode/ModeSettings;->restore_cause:I

    if-ne v1, v3, :cond_0

    .line 156
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/lewa/spm/mode/ModeSettings;

    invoke-direct {v0, p0, p1}, Lcom/lewa/spm/mode/ModeSettings;-><init>(Landroid/content/Context;I)V

    .line 128
    .local v0, ms:Lcom/lewa/spm/mode/ModeSettings;
    invoke-virtual {v0}, Lcom/lewa/spm/mode/ModeSettings;->getSettings()V

    .line 130
    sget v1, Lcom/lewa/spm/mode/ModeSettings;->restore_cause:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_1
    invoke-virtual {v0}, Lcom/lewa/spm/mode/ModeSettings;->saveSettings()V

    .line 154
    sput v3, Lcom/lewa/spm/mode/ModeSettings;->restore_cause:I

    goto :goto_0

    .line 132
    :pswitch_0
    iput-boolean v2, v0, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    goto :goto_1

    .line 135
    :pswitch_1
    iput-boolean v2, v0, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    goto :goto_1

    .line 138
    :pswitch_2
    iput-boolean v2, v0, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    goto :goto_1

    .line 141
    :pswitch_3
    iput-boolean v2, v0, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    goto :goto_1

    .line 144
    :pswitch_4
    iput-boolean v2, v0, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    goto :goto_1

    .line 147
    :pswitch_5
    iput-boolean v2, v0, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    goto :goto_1

    .line 150
    :pswitch_6
    iput-boolean v2, v0, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    goto :goto_1

    .line 130
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

.method public static saveDefaultSettings(Landroid/content/Context;I)V
    .locals 5
    .parameter "ctx"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    .line 172
    new-instance v1, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    invoke-direct {v1, p0}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    const/4 v0, 0x0

    .line 174
    .local v0, fn:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 175
    const-string v0, "dev_settings_store_long"

    .line 176
    const-string v2, "spm_dev_airplane"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 185
    :goto_0
    const-string v2, "spm_dev_bluetooth"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 188
    const-string v2, "spm_dev_gps"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    const-string v2, "spm_dev_haptic"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 194
    const-string v2, "spm_dev_data"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 197
    const-string v2, "spm_dev_auto_sync"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    const-string v2, "spm_dev_wifi"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 201
    const-string v2, "spm_dev_backlight"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    const-string v2, "spm_dev_brghtiness"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    const-string v2, "spm_dev_brghtiness_value"

    const/16 v3, 0x14

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    const-string v2, "spm_dev_time_out"

    const/16 v3, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    return-void

    .line 180
    :cond_0
    const-string v0, "dev_settings_store_interval"

    .line 181
    const-string v2, "spm_dev_airplane"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private static sureInited(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x1

    .line 159
    new-instance v1, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    invoke-direct {v1, p0}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "mode_setting_inited"

    invoke-virtual {v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 162
    .local v0, inited:Z
    if-nez v0, :cond_0

    .line 163
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lewa/spm/mode/ModeSettings;->saveDefaultSettings(Landroid/content/Context;I)V

    .line 164
    invoke-static {p0, v4}, Lcom/lewa/spm/mode/ModeSettings;->saveDefaultSettings(Landroid/content/Context;I)V

    .line 165
    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "mode_setting_inited"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public getSettings()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, fn:Ljava/lang/String;
    iget v3, p0, Lcom/lewa/spm/mode/ModeSettings;->mMode:I

    if-ne v3, v4, :cond_0

    .line 87
    const-string v0, "dev_settings_store_out"

    .line 93
    :goto_0
    new-instance v2, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    iget-object v3, p0, Lcom/lewa/spm/mode/ModeSettings;->mContex:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 94
    .local v2, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    new-instance v1, Lcom/lewa/spm/control/InquirState;

    iget-object v3, p0, Lcom/lewa/spm/mode/ModeSettings;->mContex:Landroid/content/Context;

    invoke-direct {v1, v3, v4}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 95
    .local v1, inquireState:Lcom/lewa/spm/control/InquirState;
    const-string v3, "spm_dev_airplane"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    .line 96
    const-string v3, "spm_dev_bluetooth"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    .line 97
    const-string v3, "spm_dev_gps"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    .line 98
    const-string v3, "spm_dev_haptic"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    .line 99
    const-string v3, "spm_dev_data"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    .line 100
    const-string v3, "spm_dev_auto_sync"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    .line 101
    const-string v3, "spm_dev_wifi"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    .line 102
    const-string v3, "spm_dev_backlight"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    .line 103
    const-string v3, "spm_dev_brghtiness"

    invoke-virtual {v2, v0, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->brightnessSetted:Z

    .line 104
    const-string v3, "spm_dev_brghtiness_value"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    .line 105
    const-string v3, "spm_dev_time_out"

    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lockScreenValue()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    .line 106
    return-void

    .line 88
    .end local v1           #inquireState:Lcom/lewa/spm/control/InquirState;
    .end local v2           #saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    :cond_0
    iget v3, p0, Lcom/lewa/spm/mode/ModeSettings;->mMode:I

    if-nez v3, :cond_1

    .line 89
    const-string v0, "dev_settings_store_long"

    goto/16 :goto_0

    .line 91
    :cond_1
    const-string v0, "dev_settings_store_interval"

    goto/16 :goto_0
.end method

.method public saveSettings()V
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, fn:Ljava/lang/String;
    iget v2, p0, Lcom/lewa/spm/mode/ModeSettings;->mMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 43
    const-string v0, "dev_settings_store_out"

    .line 49
    :goto_0
    new-instance v1, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    iget-object v2, p0, Lcom/lewa/spm/mode/ModeSettings;->mContex:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    const-string v2, "spm_dev_airplane"

    iget-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 53
    const-string v2, "spm_dev_bluetooth"

    iget-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    const-string v2, "spm_dev_gps"

    iget-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 59
    const-string v2, "spm_dev_haptic"

    iget-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    const-string v2, "spm_dev_data"

    iget-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 65
    const-string v2, "spm_dev_auto_sync"

    iget-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 67
    const-string v2, "spm_dev_wifi"

    iget-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 69
    const-string v2, "spm_dev_backlight"

    iget-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 72
    const-string v2, "spm_dev_brghtiness"

    iget-boolean v3, p0, Lcom/lewa/spm/mode/ModeSettings;->brightnessSetted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    const-string v2, "spm_dev_brghtiness_value"

    iget v3, p0, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    const-string v2, "spm_dev_time_out"

    iget v3, p0, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    return-void

    .line 44
    .end local v1           #saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    :cond_0
    iget v2, p0, Lcom/lewa/spm/mode/ModeSettings;->mMode:I

    if-nez v2, :cond_1

    .line 45
    const-string v0, "dev_settings_store_long"

    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "dev_settings_store_interval"

    goto/16 :goto_0
.end method
