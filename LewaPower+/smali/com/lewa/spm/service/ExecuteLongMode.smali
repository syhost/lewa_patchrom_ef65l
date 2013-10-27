.class public Lcom/lewa/spm/service/ExecuteLongMode;
.super Ljava/lang/Object;
.source "ExecuteLongMode.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    .line 60
    return-void
.end method

.method public static closeSettingsWhileNotIn(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powermanager_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lcom/lewa/spm/service/ExecuteLongMode;->notifyLongModeChange(Landroid/content/Context;ZLjava/lang/String;J)V

    .line 331
    return-void
.end method

.method public static notifyLongModeChange(Landroid/content/Context;ZLjava/lang/String;J)V
    .locals 2
    .parameter "ctx"
    .parameter "check"
    .parameter "diff"
    .parameter "timeTobe"

    .prologue
    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "spm_excute_finish_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, excuteFinish:Landroid/content/Intent;
    const-string v1, "spm_excute_finish_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    const-string v1, "long_s_t_d"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "TIME_DIFF_LONG"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 15

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, toastStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "mode_type_name"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 70
    .local v11, preMode:I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_2

    .line 72
    new-instance v10, Lcom/lewa/spm/mode/ModeDevStatus;

    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0, v11}, Lcom/lewa/spm/mode/ModeDevStatus;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v10, mds:Lcom/lewa/spm/mode/ModeDevStatus;
    invoke-virtual {v10}, Lcom/lewa/spm/mode/ModeDevStatus;->saveStatus()V

    .line 80
    .end local v10           #mds:Lcom/lewa/spm/mode/ModeDevStatus;
    :goto_0
    new-instance v10, Lcom/lewa/spm/mode/ModeDevStatus;

    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, Lcom/lewa/spm/mode/ModeDevStatus;-><init>(Landroid/content/Context;I)V

    .line 81
    .restart local v10       #mds:Lcom/lewa/spm/mode/ModeDevStatus;
    invoke-virtual {v10}, Lcom/lewa/spm/mode/ModeDevStatus;->saveStatus()V

    .line 83
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Lcom/lewa/spm/util/CalcUtils;->Lift(IZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 87
    .local v12, preRemain:Ljava/lang/Double;
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powermanager_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/util/CalcUtils;->Lift(IZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 94
    .local v6, currRemain:Ljava/lang/Double;
    sget-object v0, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 97
    .local v5, mBatteryLevel:I
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/lewa/spm/util/TimeUtils;->calcLifeChangeDiff(Landroid/content/Context;DDI)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, diffTime:Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 116
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "before_switch_mode_type_name"

    invoke-virtual {v0, v1, v2, v11}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "mode_type_name"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    new-instance v13, Lcom/lewa/spm/mode/PowerSavingMode;

    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v13, v0, v1}, Lcom/lewa/spm/mode/PowerSavingMode;-><init>(Landroid/content/Context;I)V

    .line 125
    .local v13, psm:Lcom/lewa/spm/mode/PowerSavingMode;
    invoke-virtual {v13}, Lcom/lewa/spm/mode/PowerSavingMode;->execute()V

    .line 128
    const/4 v9, 0x0

    .line 129
    .local v9, mBatteryChargingType:I
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "power_plugged_type"

    invoke-virtual {v0, v1, v2, v9}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 132
    if-nez v9, :cond_1

    .line 133
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e8

    invoke-static {v0, v14, v1}, Llewa/widget/LewaToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Llewa/widget/LewaToast;

    move-result-object v0

    invoke-virtual {v0}, Llewa/widget/LewaToast;->show()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v0, v1, v7, v2, v3}, Lcom/lewa/spm/service/ExecuteLongMode;->notifyLongModeChange(Landroid/content/Context;ZLjava/lang/String;J)V

    .line 137
    return-void

    .line 76
    .end local v5           #mBatteryLevel:I
    .end local v6           #currRemain:Ljava/lang/Double;
    .end local v7           #diffTime:Ljava/lang/String;
    .end local v9           #mBatteryChargingType:I
    .end local v10           #mds:Lcom/lewa/spm/mode/ModeDevStatus;
    .end local v12           #preRemain:Ljava/lang/Double;
    .end local v13           #psm:Lcom/lewa/spm/mode/PowerSavingMode;
    :cond_2
    new-instance v8, Lcom/lewa/spm/service/ExecuteSmartMode;

    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 77
    .local v8, exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    invoke-virtual {v8}, Lcom/lewa/spm/service/ExecuteSmartMode;->onPause()V

    goto/16 :goto_0

    .line 103
    .end local v8           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    .restart local v5       #mBatteryLevel:I
    .restart local v6       #currRemain:Ljava/lang/Double;
    .restart local v7       #diffTime:Ljava/lang/String;
    .restart local v10       #mds:Lcom/lewa/spm/mode/ModeDevStatus;
    .restart local v12       #preRemain:Ljava/lang/Double;
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 108
    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 273
    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "before_switch_mode_type_name"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 277
    .local v3, tobeMode:I
    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "mode_type_name"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, currMode:I
    if-ne v0, v7, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-ne v0, v8, :cond_2

    .line 285
    if-eq v3, v7, :cond_0

    .line 288
    invoke-virtual {p0, v8}, Lcom/lewa/spm/service/ExecuteLongMode;->onPause(Z)V

    .line 289
    new-instance v2, Lcom/lewa/spm/mode/PowerSavingMode;

    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v9}, Lcom/lewa/spm/mode/PowerSavingMode;-><init>(Landroid/content/Context;I)V

    .line 291
    .local v2, psm:Lcom/lewa/spm/mode/PowerSavingMode;
    invoke-virtual {v2}, Lcom/lewa/spm/mode/PowerSavingMode;->executeDiff()V

    .line 292
    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "before_switch_mode_type_name"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 297
    .end local v2           #psm:Lcom/lewa/spm/mode/PowerSavingMode;
    :cond_2
    if-ne v3, v8, :cond_3

    .line 298
    invoke-virtual {p0, v8}, Lcom/lewa/spm/service/ExecuteLongMode;->onPause(Z)V

    .line 299
    new-instance v1, Lcom/lewa/spm/service/ExecuteSmartMode;

    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 300
    .local v1, exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    invoke-virtual {v1}, Lcom/lewa/spm/service/ExecuteSmartMode;->onResume()V

    goto :goto_0

    .line 302
    .end local v1           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    :cond_3
    invoke-virtual {p0, v9}, Lcom/lewa/spm/service/ExecuteLongMode;->onPause(Z)V

    .line 303
    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "before_switch_mode_type_name"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "mode_type_name"

    invoke-virtual {v4, v5, v6, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    new-instance v2, Lcom/lewa/spm/mode/PowerSavingMode;

    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/lewa/spm/mode/PowerSavingMode;-><init>(Landroid/content/Context;I)V

    .line 310
    .restart local v2       #psm:Lcom/lewa/spm/mode/PowerSavingMode;
    invoke-virtual {v2}, Lcom/lewa/spm/mode/PowerSavingMode;->execute()V

    goto :goto_0
.end method

.method public onPause(Z)V
    .locals 14
    .parameter "isAnotherSavingMode"

    .prologue
    const/4 v13, 0x0

    .line 142
    sget-object v0, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 146
    .local v5, mBatteryLevel:I
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 148
    .local v11, toastStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "mode_type_name"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 153
    .local v6, currMode:I
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v13, v1}, Lcom/lewa/spm/util/CalcUtils;->Lift(IZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 159
    .local v10, preRemain:Ljava/lang/Double;
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powermanager_mode_on"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    const/4 v12, 0x1

    .line 164
    .local v12, tobeMode:I
    if-nez p1, :cond_0

    .line 165
    const/4 v12, -0x1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lcom/lewa/spm/util/CalcUtils;->Lift(IZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 170
    .local v7, currRemain:Ljava/lang/Double;
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/lewa/spm/util/TimeUtils;->calcLifeChangeDiff(Landroid/content/Context;DDI)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, diffTime:Ljava/lang/String;
    const/4 v9, 0x0

    .line 189
    .local v9, mBatteryChargingType:I
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "power_plugged_type"

    invoke-virtual {v0, v1, v2, v9}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 193
    if-nez v9, :cond_1

    .line 194
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e8

    invoke-static {v0, v11, v1}, Llewa/widget/LewaToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Llewa/widget/LewaToast;

    move-result-object v0

    invoke-virtual {v0}, Llewa/widget/LewaToast;->show()V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v0, v13, v8, v1, v2}, Lcom/lewa/spm/service/ExecuteLongMode;->notifyLongModeChange(Landroid/content/Context;ZLjava/lang/String;J)V

    .line 197
    return-void
.end method

.method public onResume()V
    .locals 14

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powermanager_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v9, 0x1

    .line 206
    .local v9, in:Z
    :goto_0
    if-eqz v9, :cond_1

    .line 269
    :goto_1
    return-void

    .line 204
    .end local v9           #in:Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 209
    .restart local v9       #in:Z
    :cond_1
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 211
    .local v13, toastStr:Ljava/lang/String;
    const/4 v11, 0x1

    .line 213
    .local v11, preMode:I
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v11, v1}, Lcom/lewa/spm/util/CalcUtils;->Lift(IZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 216
    .local v12, preRemain:Ljava/lang/Double;
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powermanager_mode_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/util/CalcUtils;->Lift(IZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 222
    .local v6, currRemain:Ljava/lang/Double;
    sget-object v0, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    invoke-static {v0}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 225
    .local v5, mBatteryLevel:I
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/lewa/spm/util/TimeUtils;->calcLifeChangeDiff(Landroid/content/Context;DDI)Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, diffTime:Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 245
    :cond_2
    :goto_2
    const/4 v10, 0x0

    .line 246
    .local v10, mBatteryChargingType:I
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "power_plugged_type"

    invoke-virtual {v0, v1, v2, v10}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 249
    if-nez v10, :cond_3

    .line 250
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e8

    invoke-static {v0, v13, v1}, Llewa/widget/LewaToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Llewa/widget/LewaToast;

    move-result-object v0

    invoke-virtual {v0}, Llewa/widget/LewaToast;->show()V

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "mode_type_name"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "before_switch_mode_type_name"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    new-instance v8, Lcom/lewa/spm/control/Executer;

    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v8, v0, v1}, Lcom/lewa/spm/control/Executer;-><init>(Landroid/content/Context;I)V

    .line 264
    .local v8, execute:Lcom/lewa/spm/control/Executer;
    invoke-virtual {v8}, Lcom/lewa/spm/control/Executer;->executSavingPowerDiff()V

    .line 267
    iget-object v0, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v0, v1, v7, v2, v3}, Lcom/lewa/spm/service/ExecuteLongMode;->notifyLongModeChange(Landroid/content/Context;ZLjava/lang/String;J)V

    goto/16 :goto_1

    .line 234
    .end local v8           #execute:Lcom/lewa/spm/control/Executer;
    .end local v10           #mBatteryChargingType:I
    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 239
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteLongMode;->mContext:Landroid/content/Context;

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2
.end method
