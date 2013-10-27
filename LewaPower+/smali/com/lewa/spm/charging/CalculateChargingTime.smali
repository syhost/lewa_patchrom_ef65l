.class public Lcom/lewa/spm/charging/CalculateChargingTime;
.super Ljava/lang/Object;
.source "CalculateChargingTime.java"


# static fields
.field private static sCalculateChargingTime:Lcom/lewa/spm/charging/CalculateChargingTime;


# instance fields
.field private mBatteryDurationTime:J

.field private mBatteryLevel:I

.field private mBatteryLevelStartTime:J

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mLastBatteryLevel:I

.field private mLastPlugType:I

.field private mPlugType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const-wide/16 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mInitialized:Z

    .line 69
    iput-wide v1, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevelStartTime:J

    .line 70
    iput-wide v1, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryDurationTime:J

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mLastPlugType:I

    .line 89
    iput-object p1, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public static Instance(Landroid/content/Context;)Lcom/lewa/spm/charging/CalculateChargingTime;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 81
    sget-object v0, Lcom/lewa/spm/charging/CalculateChargingTime;->sCalculateChargingTime:Lcom/lewa/spm/charging/CalculateChargingTime;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/lewa/spm/charging/CalculateChargingTime;

    invoke-direct {v0, p0}, Lcom/lewa/spm/charging/CalculateChargingTime;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lewa/spm/charging/CalculateChargingTime;->sCalculateChargingTime:Lcom/lewa/spm/charging/CalculateChargingTime;

    .line 84
    :cond_0
    sget-object v0, Lcom/lewa/spm/charging/CalculateChargingTime;->sCalculateChargingTime:Lcom/lewa/spm/charging/CalculateChargingTime;

    return-object v0
.end method

.method private saveAc()V
    .locals 5

    .prologue
    .line 205
    iget-object v3, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, str:Ljava/lang/String;
    const-string v3, "\\s*|\t|\r|\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 211
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 213
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    iget-object v3, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powerchargingval_ac"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    return-void
.end method

.method private saveUsb()V
    .locals 5

    .prologue
    .line 222
    iget-object v3, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, str:Ljava/lang/String;
    const-string v3, "\\s*|\t|\r|\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 228
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 230
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    iget-object v3, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powerchargingval_usb"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    return-void
.end method

.method private updateTimeBasedOnChargingMode(IIJ)V
    .locals 13
    .parameter "type"
    .parameter "level"
    .parameter "time"

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, count:I
    const-wide/16 v5, 0x0

    .line 313
    .local v5, oldTime:J
    const/4 v8, 0x0

    .line 315
    .local v8, spName:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 317
    const-string v8, "powerchargingval_ac"

    .line 324
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 326
    .local v2, i:I
    const/16 v9, 0x65

    new-array v4, v9, [J

    .line 328
    .local v4, level_time:[J
    iget-object v9, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, arr:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 335
    const/16 v9, 0x2c

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 337
    .local v3, idx:I
    const/4 v7, 0x0

    .line 339
    .local v7, pre_idx:I
    :goto_1
    if-ltz v3, :cond_2

    .line 341
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    aput-wide v9, v4, v2

    .line 343
    add-int/lit8 v7, v3, 0x1

    .line 345
    const/16 v9, 0x2c

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 319
    .end local v0           #arr:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #idx:I
    .end local v4           #level_time:[J
    .end local v7           #pre_idx:I
    :cond_1
    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    .line 321
    const-string v8, "powerchargingval_usb"

    goto :goto_0

    .line 350
    .restart local v0       #arr:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #idx:I
    .restart local v4       #level_time:[J
    .restart local v7       #pre_idx:I
    :cond_2
    aget-wide v9, v4, p2

    add-long v9, v9, p3

    const-wide/16 v11, 0x2

    div-long/2addr v9, v11

    aput-wide v9, v4, p2

    .line 352
    const-string v0, ""

    .line 354
    const/4 v2, 0x0

    :goto_2
    const/16 v9, 0x64

    if-ge v2, v9, :cond_3

    .line 356
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v4, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 360
    :cond_3
    iget-object v9, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v8, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    .end local v3           #idx:I
    .end local v7           #pre_idx:I
    :cond_4
    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 119
    iget-boolean v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mInitialized:Z

    if-nez v4, :cond_2

    .line 120
    iget-object v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powerchargingval_inited"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v1, v3

    .line 123
    .local v1, inited:Z
    :cond_0
    if-nez v1, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/lewa/spm/charging/CalculateChargingTime;->saveAc()V

    .line 125
    invoke-direct {p0}, Lcom/lewa/spm/charging/CalculateChargingTime;->saveUsb()V

    .line 126
    iget-object v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powerchargingval_inited"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    :cond_1
    iput-boolean v3, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mInitialized:Z

    .line 133
    .end local v1           #inited:Z
    :cond_2
    iget v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevel:I

    if-nez v4, :cond_3

    .line 134
    sget-object v4, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    invoke-static {v4}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevel:I

    .line 138
    :cond_3
    sget-object v4, Lcom/lewa/spm/util/BatteryInfo;->acOnline:Ljava/lang/String;

    invoke-static {v4}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, acOn:I
    sget-object v4, Lcom/lewa/spm/util/BatteryInfo;->usbOnline:Ljava/lang/String;

    invoke-static {v4}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 142
    .local v2, usbOn:I
    if-ne v0, v3, :cond_4

    .line 143
    iput v3, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mPlugType:I

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_4
    if-ne v2, v3, :cond_5

    .line 145
    const/4 v3, 0x2

    iput v3, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mPlugType:I

    goto :goto_0

    .line 147
    :cond_5
    const/4 v3, -0x1

    iput v3, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mPlugType:I

    goto :goto_0
.end method

.method public setBatteryInfo(II)V
    .locals 10
    .parameter "plugType"
    .parameter "batterylevel"

    .prologue
    const-wide/16 v8, 0x0

    .line 93
    iget v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mPlugType:I

    iput v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mLastPlugType:I

    .line 94
    iget v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevel:I

    iput v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mLastBatteryLevel:I

    .line 95
    iput p1, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mPlugType:I

    .line 96
    iput p2, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevel:I

    .line 97
    iget v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mLastPlugType:I

    iget v5, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mPlugType:I

    if-eq v4, v5, :cond_0

    .line 98
    iput-wide v8, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevelStartTime:J

    .line 100
    :cond_0
    iget v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mPlugType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mPlugType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 103
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 104
    .local v0, currDate:J
    iget v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mLastBatteryLevel:I

    iget v5, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevel:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_3

    .line 105
    iget-wide v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevelStartTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    .line 106
    iget-wide v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevelStartTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 107
    .local v2, diff:J
    cmp-long v4, v2, v8

    if-lez v4, :cond_2

    const-wide/16 v4, 0x1c20

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 108
    iget v4, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mPlugType:I

    iget v5, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mLastBatteryLevel:I

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/lewa/spm/charging/CalculateChargingTime;->updateTimeBasedOnChargingMode(IIJ)V

    .line 113
    .end local v2           #diff:J
    :cond_2
    iput-wide v0, p0, Lcom/lewa/spm/charging/CalculateChargingTime;->mBatteryLevelStartTime:J

    .line 116
    .end local v0           #currDate:J
    :cond_3
    return-void
.end method
