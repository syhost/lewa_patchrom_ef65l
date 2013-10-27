.class public Lcom/lewa/spm/service/ExecuteSmartMode;
.super Ljava/lang/Object;
.source "ExecuteSmartMode.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    .line 101
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    new-instance v0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    invoke-direct {v0, p0}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030010

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 235
    const v2, 0x7f090059

    const v3, 0x7f02001a

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 261
    new-instance v2, Landroid/content/Intent;

    const-string v3, "SPM_INTTILLI_STATUS_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 263
    const v3, 0x7f09005b

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 264
    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "start_time"

    sget-object v4, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_FROM:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    const-string v3, "com.lewa.spm_preferences"

    const-string v4, "end_time"

    sget-object v5, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_TO:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    const-string v4, "com.lewa.spm_preferences"

    const-string v5, "mode_type_name"

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 273
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 274
    const v0, 0x7f09005c

    const v4, 0x7f07007c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07007e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    const v2, 0x7f09005d

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 278
    const v0, 0x7f09005b

    const v2, 0x7f070080

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 289
    :goto_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 291
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02001a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 295
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lewa/spm/activity/SPMActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    const-string v4, "SPM_ALARM_MODENOTIFICATION"

    const-string v5, "SPM_ALARM_MODENOTIFICATION"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 300
    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 301
    const/16 v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 303
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 304
    invoke-virtual {v0, p4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 306
    return-void

    .line 281
    :cond_0
    const v0, 0x7f09005c

    const v4, 0x7f07007d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07007e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    const v2, 0x7f09005d

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 285
    const v0, 0x7f09005b

    const v2, 0x7f07007f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 105
    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "mode_type_name"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, currMode:I
    if-nez v0, :cond_0

    .line 112
    new-instance v1, Lcom/lewa/spm/service/ExecuteLongMode;

    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/lewa/spm/service/ExecuteLongMode;-><init>(Landroid/content/Context;)V

    .line 113
    .local v1, exe:Lcom/lewa/spm/service/ExecuteLongMode;
    invoke-virtual {v1, v10}, Lcom/lewa/spm/service/ExecuteLongMode;->onPause(Z)V

    .line 118
    .end local v1           #exe:Lcom/lewa/spm/service/ExecuteLongMode;
    :goto_0
    new-instance v2, Lcom/lewa/spm/mode/ModeDevStatus;

    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v10}, Lcom/lewa/spm/mode/ModeDevStatus;-><init>(Landroid/content/Context;I)V

    .line 119
    .local v2, mds:Lcom/lewa/spm/mode/ModeDevStatus;
    invoke-virtual {v2}, Lcom/lewa/spm/mode/ModeDevStatus;->saveStatus()V

    .line 122
    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "before_switch_mode_type_name"

    invoke-virtual {v4, v5, v6, v0}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "mode_type_name"

    invoke-virtual {v4, v5, v6, v10}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    const v7, 0x7f070003

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    const v9, 0x7f070006

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/lewa/spm/util/TransferMode;->consTransferMode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020019

    invoke-static {v4, v5, v6, v7, v8}, Lcom/lewa/spm/service/ExecuteSmartMode;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    new-instance v3, Lcom/lewa/spm/mode/PowerSavingMode;

    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v10}, Lcom/lewa/spm/mode/PowerSavingMode;-><init>(Landroid/content/Context;I)V

    .line 139
    .local v3, psm:Lcom/lewa/spm/mode/PowerSavingMode;
    invoke-virtual {v3}, Lcom/lewa/spm/mode/PowerSavingMode;->execute()V

    .line 140
    return-void

    .line 115
    .end local v2           #mds:Lcom/lewa/spm/mode/ModeDevStatus;
    .end local v3           #psm:Lcom/lewa/spm/mode/PowerSavingMode;
    :cond_0
    new-instance v2, Lcom/lewa/spm/mode/ModeDevStatus;

    iget-object v4, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v0}, Lcom/lewa/spm/mode/ModeDevStatus;-><init>(Landroid/content/Context;I)V

    .line 116
    .restart local v2       #mds:Lcom/lewa/spm/mode/ModeDevStatus;
    invoke-virtual {v2}, Lcom/lewa/spm/mode/ModeDevStatus;->saveStatus()V

    goto :goto_0
.end method

.method public onDestroy(Z)V
    .locals 10
    .parameter "exitTemporary"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 184
    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v6, "com.lewa.spm_preferences"

    const-string v7, "before_switch_mode_type_name"

    invoke-virtual {v5, v6, v7, v8}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 187
    .local v3, preMode:I
    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v6, "com.lewa.spm_preferences"

    const-string v7, "mode_type_name"

    invoke-virtual {v5, v6, v7, v8}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, currMode:I
    if-ne v0, v8, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    if-nez v0, :cond_2

    .line 194
    if-eq v3, v8, :cond_0

    .line 197
    new-instance v4, Lcom/lewa/spm/mode/PowerSavingMode;

    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v9}, Lcom/lewa/spm/mode/PowerSavingMode;-><init>(Landroid/content/Context;I)V

    .line 199
    .local v4, psm:Lcom/lewa/spm/mode/PowerSavingMode;
    invoke-virtual {v4}, Lcom/lewa/spm/mode/PowerSavingMode;->executeDiff()V

    .line 200
    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v6, "com.lewa.spm_preferences"

    const-string v7, "before_switch_mode_type_name"

    invoke-virtual {v5, v6, v7, v8}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 205
    .end local v4           #psm:Lcom/lewa/spm/mode/PowerSavingMode;
    :cond_2
    if-nez p1, :cond_3

    .line 206
    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 208
    .local v2, nm:Landroid/app/NotificationManager;
    const v5, 0x7f020019

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 210
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_3
    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v6, "com.lewa.spm_preferences"

    const-string v7, "before_switch_mode_type_name"

    invoke-virtual {v5, v6, v7, v8}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    if-eq v3, v8, :cond_4

    if-ne v3, v9, :cond_5

    .line 215
    :cond_4
    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v6, "com.lewa.spm_preferences"

    const-string v7, "mode_type_name"

    invoke-virtual {v5, v6, v7, v8}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    new-instance v4, Lcom/lewa/spm/mode/PowerSavingMode;

    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8}, Lcom/lewa/spm/mode/PowerSavingMode;-><init>(Landroid/content/Context;I)V

    .line 220
    .restart local v4       #psm:Lcom/lewa/spm/mode/PowerSavingMode;
    invoke-virtual {v4}, Lcom/lewa/spm/mode/PowerSavingMode;->execute()V

    .line 221
    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lewa/spm/service/ExecuteLongMode;->closeSettingsWhileNotIn(Landroid/content/Context;)V

    goto :goto_0

    .line 223
    .end local v4           #psm:Lcom/lewa/spm/mode/PowerSavingMode;
    :cond_5
    new-instance v1, Lcom/lewa/spm/service/ExecuteLongMode;

    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/lewa/spm/service/ExecuteLongMode;-><init>(Landroid/content/Context;)V

    .line 224
    .local v1, exe:Lcom/lewa/spm/service/ExecuteLongMode;
    invoke-virtual {v1}, Lcom/lewa/spm/service/ExecuteLongMode;->onResume()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 144
    iget-object v2, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 147
    .local v1, nm:Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v3, "com.lewa.spm_preferences"

    const-string v4, "mode_type_name"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, currMode:I
    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 160
    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "before_switch_mode_type_name"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "mode_type_name"

    invoke-virtual {v1, v2, v3, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    new-instance v0, Lcom/lewa/spm/control/Executer;

    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Executer;-><init>(Landroid/content/Context;I)V

    .line 168
    .local v0, execute:Lcom/lewa/spm/control/Executer;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Executer;->executSavingPowerDiff()V

    .line 171
    iget-object v1, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    const v6, 0x7f070006

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lewa/spm/service/ExecuteSmartMode;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/lewa/spm/util/TransferMode;->consTransferMode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020019

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lewa/spm/service/ExecuteSmartMode;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    return-void
.end method
