.class public Lcom/lewa/spm/util/CalcUtils;
.super Ljava/lang/Object;
.source "CalcUtils.java"


# static fields
.field private static _instance:Lcom/lewa/spm/util/CalcUtils;


# instance fields
.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mContext:Landroid/content/Context;

.field mStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/lewa/spm/util/CalcUtils;->_instance:Lcom/lewa/spm/util/CalcUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/lewa/spm/util/CalcUtils;->mContext:Landroid/content/Context;

    .line 64
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/util/CalcUtils;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 66
    invoke-direct {p0}, Lcom/lewa/spm/util/CalcUtils;->load()V

    .line 67
    return-void
.end method

.method private getBatteryCapacity()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x802

    return v0
.end method

.method private getInModeSavingPowerConsume(I)D
    .locals 18
    .parameter "mode"

    .prologue
    .line 188
    new-instance v6, Lcom/lewa/spm/control/InquirState;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lewa/spm/util/CalcUtils;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-direct {v6, v10, v0}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 189
    .local v6, iqr:Lcom/lewa/spm/control/InquirState;
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBatteryCapacity()I

    move-result v3

    .line 190
    .local v3, batteryCapacity:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getIdleConsume()I

    move-result v5

    .line 191
    .local v5, idleConsume:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getFlyConsume()I

    move-result v4

    .line 192
    .local v4, flyConsume:I
    int-to-double v1, v5

    .line 194
    .local v1, allConsume:D
    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->mobileDataState()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 197
    const-wide v10, 0x3f8e573ac901e574L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getDataConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 200
    :cond_0
    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->wifiState()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getWifiOnConsume()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v1, v10

    .line 203
    const-wide v10, 0x3fb4b66dc33f6aceL

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getWifiActiveConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 206
    :cond_1
    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->bluetoothState()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBluetoothOnConsume()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v1, v10

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBluetoothActiveConsume()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v1, v10

    .line 211
    :cond_2
    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->gpsState()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 212
    const-wide v10, 0x3f8e573ac901e574L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getGPSActiveConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 216
    :cond_3
    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->hapticState()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 217
    const-wide v10, 0x3f50624dd2f1a9fcL

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getHapticActiveConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 220
    :cond_4
    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->syncState()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 221
    const-wide v10, 0x3f8e573ac901e574L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getDataConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4014

    div-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 224
    :cond_5
    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v7

    .line 225
    .local v7, lsv:I
    const-wide v10, 0x3fb5555555555555L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getScreenConsume()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getTotalLevelSummary()I

    move-result v14

    mul-int/2addr v14, v7

    int-to-double v14, v14

    const-wide v16, 0x406c200000000000L

    div-double v14, v14, v16

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 227
    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->airplaneState()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 228
    const-wide v10, 0x3fe5555555555555L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getIdleConsume()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getFlyConsume()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-double v12, v12

    mul-double/2addr v10, v12

    sub-double/2addr v1, v10

    .line 231
    :cond_6
    const-wide/16 v10, 0x0

    cmpg-double v10, v1, v10

    if-gtz v10, :cond_7

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getFlyConsume()I

    move-result v10

    int-to-double v1, v10

    .line 234
    :cond_7
    int-to-double v10, v3

    div-double/2addr v10, v1

    const-wide/high16 v12, 0x404e

    mul-double/2addr v10, v12

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBatteryLevel()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059

    div-double v8, v10, v12

    .line 236
    .local v8, result:D
    return-wide v8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;
    .locals 1
    .parameter "paramContext"

    .prologue
    .line 70
    sget-object v0, Lcom/lewa/spm/util/CalcUtils;->_instance:Lcom/lewa/spm/util/CalcUtils;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/lewa/spm/util/CalcUtils;

    invoke-direct {v0, p0}, Lcom/lewa/spm/util/CalcUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lewa/spm/util/CalcUtils;->_instance:Lcom/lewa/spm/util/CalcUtils;

    .line 72
    :cond_0
    sget-object v0, Lcom/lewa/spm/util/CalcUtils;->_instance:Lcom/lewa/spm/util/CalcUtils;

    return-object v0
.end method

.method private getSavingPowerConsume(I)D
    .locals 19
    .parameter "mode"

    .prologue
    .line 131
    new-instance v8, Lcom/lewa/spm/mode/ModeSettings;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lewa/spm/util/CalcUtils;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-direct {v8, v11, v0}, Lcom/lewa/spm/mode/ModeSettings;-><init>(Landroid/content/Context;I)V

    .line 132
    .local v8, ms:Lcom/lewa/spm/mode/ModeSettings;
    invoke-virtual {v8}, Lcom/lewa/spm/mode/ModeSettings;->getSettings()V

    .line 133
    new-instance v7, Lcom/lewa/spm/mode/ModeDevStatus;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lewa/spm/util/CalcUtils;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-direct {v7, v11, v0}, Lcom/lewa/spm/mode/ModeDevStatus;-><init>(Landroid/content/Context;I)V

    .line 134
    .local v7, mds:Lcom/lewa/spm/mode/ModeDevStatus;
    invoke-virtual {v7}, Lcom/lewa/spm/mode/ModeDevStatus;->getStatus()V

    .line 135
    new-instance v6, Lcom/lewa/spm/control/InquirState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lewa/spm/util/CalcUtils;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-direct {v6, v11, v0}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 136
    .local v6, iqr:Lcom/lewa/spm/control/InquirState;
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBatteryCapacity()I

    move-result v3

    .line 137
    .local v3, batteryCapacity:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getIdleConsume()I

    move-result v5

    .line 138
    .local v5, idleConsume:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getFlyConsume()I

    move-result v4

    .line 139
    .local v4, flyConsume:I
    int-to-double v1, v5

    .line 142
    .local v1, allConsume:D
    iget-boolean v11, v8, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    if-nez v11, :cond_0

    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->mobileDataState()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 145
    const-wide v11, 0x3f8e573ac901e574L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getDataConsume()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 148
    :cond_0
    iget-boolean v11, v8, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    if-nez v11, :cond_1

    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->wifiState()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getWifiOnConsume()I

    move-result v11

    int-to-double v11, v11

    add-double/2addr v1, v11

    .line 151
    const-wide v11, 0x3fb4b66dc33f6aceL

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getWifiActiveConsume()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 154
    :cond_1
    iget-boolean v11, v8, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    if-nez v11, :cond_2

    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->bluetoothState()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBluetoothOnConsume()I

    move-result v11

    int-to-double v11, v11

    add-double/2addr v1, v11

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBluetoothActiveConsume()I

    move-result v11

    int-to-double v11, v11

    add-double/2addr v1, v11

    .line 159
    :cond_2
    iget-boolean v11, v8, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    if-nez v11, :cond_3

    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->gpsState()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 160
    const-wide v11, 0x3f8e573ac901e574L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getGPSActiveConsume()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 164
    :cond_3
    iget-boolean v11, v8, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    if-nez v11, :cond_4

    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->hapticState()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 165
    const-wide v11, 0x3f50624dd2f1a9fcL

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getHapticActiveConsume()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 168
    :cond_4
    iget-boolean v11, v8, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    if-nez v11, :cond_5

    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->syncState()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 169
    const-wide v11, 0x3f8e573ac901e574L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getDataConsume()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4014

    div-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 173
    :cond_5
    const-wide v11, 0x3fb5555555555555L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getScreenConsume()I

    move-result v13

    int-to-double v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getTotalLevelSummary()I

    move-result v15

    iget v0, v7, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessValue:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    int-to-double v15, v15

    const-wide v17, 0x406c200000000000L

    div-double v15, v15, v17

    add-double/2addr v13, v15

    mul-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 175
    iget-boolean v11, v8, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    invoke-virtual {v6}, Lcom/lewa/spm/control/InquirState;->airplaneState()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 176
    :cond_6
    const-wide v11, 0x3fe5555555555555L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getIdleConsume()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getFlyConsume()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-double v13, v13

    mul-double/2addr v11, v13

    sub-double/2addr v1, v11

    .line 179
    :cond_7
    const-wide/16 v11, 0x0

    cmpg-double v11, v1, v11

    if-gtz v11, :cond_8

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getFlyConsume()I

    move-result v11

    int-to-double v1, v11

    .line 182
    :cond_8
    int-to-double v11, v3

    div-double/2addr v11, v1

    const-wide/high16 v13, 0x404e

    mul-double/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBatteryLevel()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4059

    div-double v9, v11, v13

    .line 184
    .local v9, result:D
    return-wide v9
.end method

.method private getUserPowerConsume()D
    .locals 18

    .prologue
    .line 240
    new-instance v7, Lcom/lewa/spm/mode/ModeDevStatus;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lewa/spm/util/CalcUtils;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-direct {v7, v10, v11}, Lcom/lewa/spm/mode/ModeDevStatus;-><init>(Landroid/content/Context;I)V

    .line 241
    .local v7, mds:Lcom/lewa/spm/mode/ModeDevStatus;
    invoke-virtual {v7}, Lcom/lewa/spm/mode/ModeDevStatus;->getStatus()V

    .line 242
    new-instance v6, Lcom/lewa/spm/control/InquirState;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lewa/spm/util/CalcUtils;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-direct {v6, v10, v11}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 243
    .local v6, iqr:Lcom/lewa/spm/control/InquirState;
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBatteryCapacity()I

    move-result v3

    .line 244
    .local v3, batteryCapacity:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getIdleConsume()I

    move-result v5

    .line 245
    .local v5, idleConsume:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getFlyConsume()I

    move-result v4

    .line 246
    .local v4, flyConsume:I
    int-to-double v1, v5

    .line 248
    .local v1, allConsume:D
    iget-boolean v10, v7, Lcom/lewa/spm/mode/ModeDevStatus;->dataOn:Z

    if-eqz v10, :cond_0

    .line 250
    const-wide v10, 0x3f8e573ac901e574L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getDataConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 253
    :cond_0
    iget-boolean v10, v7, Lcom/lewa/spm/mode/ModeDevStatus;->wifiOn:Z

    if-eqz v10, :cond_1

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getWifiOnConsume()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v1, v10

    .line 256
    const-wide v10, 0x3fb4b66dc33f6aceL

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getWifiActiveConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 259
    :cond_1
    iget-boolean v10, v7, Lcom/lewa/spm/mode/ModeDevStatus;->bluetoothOn:Z

    if-eqz v10, :cond_2

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBluetoothOnConsume()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v1, v10

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBluetoothActiveConsume()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v1, v10

    .line 264
    :cond_2
    iget-boolean v10, v7, Lcom/lewa/spm/mode/ModeDevStatus;->gpsOn:Z

    if-eqz v10, :cond_3

    .line 265
    const-wide v10, 0x3f8e573ac901e574L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getGPSActiveConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 268
    :cond_3
    iget-boolean v10, v7, Lcom/lewa/spm/mode/ModeDevStatus;->hapticOn:Z

    if-eqz v10, :cond_4

    .line 269
    const-wide v10, 0x3f50624dd2f1a9fcL

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getHapticActiveConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 272
    :cond_4
    iget-boolean v10, v7, Lcom/lewa/spm/mode/ModeDevStatus;->autoSyncOn:Z

    if-eqz v10, :cond_5

    .line 274
    const-wide v10, 0x3f8e573ac901e574L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getDataConsume()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4014

    div-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 277
    :cond_5
    const-wide v10, 0x3fb5555555555555L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getScreenConsume()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getTotalLevelSummary()I

    move-result v14

    iget v15, v7, Lcom/lewa/spm/mode/ModeDevStatus;->brightnessValue:I

    mul-int/2addr v14, v15

    int-to-double v14, v14

    const-wide v16, 0x406c200000000000L

    div-double v14, v14, v16

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v1, v10

    .line 280
    iget-boolean v10, v7, Lcom/lewa/spm/mode/ModeDevStatus;->flyModeOn:Z

    if-eqz v10, :cond_6

    .line 281
    const-wide v10, 0x3fe5555555555555L

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getIdleConsume()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getFlyConsume()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-double v12, v12

    mul-double/2addr v10, v12

    sub-double/2addr v1, v10

    .line 284
    :cond_6
    const-wide/16 v10, 0x0

    cmpg-double v10, v1, v10

    if-gtz v10, :cond_7

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getFlyConsume()I

    move-result v10

    int-to-double v1, v10

    .line 287
    :cond_7
    int-to-double v10, v3

    div-double/2addr v10, v1

    const-wide/high16 v12, 0x404e

    mul-double/2addr v10, v12

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/spm/util/CalcUtils;->getBatteryLevel()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059

    div-double v8, v10, v12

    .line 289
    .local v8, result:D
    return-wide v8
.end method

.method private load()V
    .locals 5

    .prologue
    .line 77
    :try_start_0
    iget-object v3, p0, Lcom/lewa/spm/util/CalcUtils;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 78
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 79
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/lewa/spm/util/CalcUtils;->mStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 83
    iget-object v3, p0, Lcom/lewa/spm/util/CalcUtils;->mStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0           #data:[B
    .end local v2           #parcel:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "CalcUtils"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public Lift(IZ)D
    .locals 2
    .parameter "mode"
    .parameter "isInSavingMode"

    .prologue
    .line 294
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/lewa/spm/util/CalcUtils;->getUserPowerConsume()D

    move-result-wide v0

    .line 300
    :goto_0
    return-wide v0

    .line 297
    :cond_0
    if-eqz p2, :cond_1

    .line 298
    invoke-direct {p0, p1}, Lcom/lewa/spm/util/CalcUtils;->getInModeSavingPowerConsume(I)D

    move-result-wide v0

    goto :goto_0

    .line 300
    :cond_1
    invoke-direct {p0, p1}, Lcom/lewa/spm/util/CalcUtils;->getSavingPowerConsume(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method getBatteryLevel()I
    .locals 2

    .prologue
    .line 127
    sget-object v1, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    invoke-static {v1}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, level:I
    return v0
.end method

.method getBluetoothActiveConsume()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method getBluetoothOnConsume()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method getDataConsume()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x96

    return v0
.end method

.method getFlyConsume()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x7

    return v0
.end method

.method getGPSActiveConsume()I
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x37

    return v0
.end method

.method getHapticActiveConsume()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x96

    return v0
.end method

.method public getHoursFromTime(DD)I
    .locals 2
    .parameter "time"
    .parameter "battLevel"

    .prologue
    .line 307
    mul-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method getIdleConsume()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x20

    return v0
.end method

.method public getMinutesFromString(DD)I
    .locals 2
    .parameter "time"
    .parameter "battLevel"

    .prologue
    .line 311
    mul-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method getScreenConsume()I
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0xc8

    return v0
.end method

.method getTotalLevelSummary()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0xa0

    return v0
.end method

.method getWifiActiveConsume()I
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x96

    return v0
.end method

.method getWifiOnConsume()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method
