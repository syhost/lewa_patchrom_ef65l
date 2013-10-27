.class public Lcom/lewa/spm/service/TimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeReceiver.java"


# static fields
.field private static mBatteryLowAlertDialog:Landroid/app/AlertDialog;


# instance fields
.field end_time:Ljava/lang/String;

.field private mBatteryLevel:I

.field private mCalculateChargingTime:Lcom/lewa/spm/charging/CalculateChargingTime;

.field mContext:Landroid/content/Context;

.field nm:Landroid/app/NotificationManager;

.field start_time:Ljava/lang/String;

.field tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLevel:I

    .line 60
    iput-object v1, p0, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private closeBatteryLowDialog()V
    .locals 1

    .prologue
    .line 839
    sget-object v0, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 840
    sget-object v0, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 841
    const/4 v0, 0x0

    sput-object v0, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    .line 843
    :cond_0
    return-void
.end method

.method private enterOrExitSmartModeByTime()V
    .locals 8

    .prologue
    .line 405
    new-instance v4, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 406
    .local v4, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "inttelligent_mode_checked"

    invoke-virtual {v4, v5, v6}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 409
    .local v3, modeChecked:Z
    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "mode_type_name"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 413
    .local v0, currMode:I
    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "start_time"

    const-string v7, "23:00"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    .line 416
    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "end_time"

    const-string v7, "07:00"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    .line 420
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    iget-object v6, p0, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/lewa/spm/mode/PowerSavingMode;->isShowOrNotByTimeCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 422
    .local v2, inInterval:Z
    if-eqz v3, :cond_1

    .line 423
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelStartAlarm(Landroid/content/Context;)V

    .line 424
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelEndAlarm(Landroid/content/Context;)V

    .line 425
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 426
    if-nez v2, :cond_0

    .line 427
    new-instance v1, Lcom/lewa/spm/service/ExecuteSmartMode;

    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 428
    .local v1, exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/lewa/spm/service/ExecuteSmartMode;->onDestroy(Z)V

    .line 436
    .end local v1           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/lewa/spm/mode/PowSavingAlarm;->setStartTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/lewa/spm/mode/PowSavingAlarm;->setEndTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    :cond_1
    return-void

    .line 431
    :cond_2
    if-eqz v2, :cond_0

    .line 432
    new-instance v1, Lcom/lewa/spm/service/ExecuteSmartMode;

    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 433
    .restart local v1       #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    invoke-virtual {v1}, Lcom/lewa/spm/service/ExecuteSmartMode;->onCreate()V

    goto :goto_0
.end method

.method private getChargingType(I)I
    .locals 1
    .parameter "plug"

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, currentState:I
    packed-switch p1, :pswitch_data_0

    .line 452
    :goto_0
    return v0

    .line 446
    :pswitch_0
    const/4 v0, 0x1

    .line 447
    goto :goto_0

    .line 449
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showBatteryLowDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 763
    new-instance v3, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 764
    .local v3, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "mode_type_name"

    const/4 v7, -0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 767
    .local v1, currMode:I
    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "blwtipped"

    invoke-virtual {v3, v5, v6}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 771
    .local v4, tipped:Z
    sget-object v5, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    if-eqz v4, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "blwtipped"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 778
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powermanager_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 780
    invoke-direct {p0}, Lcom/lewa/spm/service/TimeReceiver;->showInLongBatteryLowDialog()V

    goto :goto_0

    .line 783
    :cond_2
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powerlowwarningval"

    const/16 v7, 0xf

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 786
    .local v2, lowv:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 787
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f070077

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 788
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f070078

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const v7, 0x7f070079

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 791
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f07004c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lewa/spm/service/TimeReceiver$1;

    invoke-direct {v6, p0}, Lcom/lewa/spm/service/TimeReceiver$1;-><init>(Lcom/lewa/spm/service/TimeReceiver;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 802
    iget-object v5, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f07004d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lewa/spm/service/TimeReceiver$2;

    invoke-direct {v6, p0}, Lcom/lewa/spm/service/TimeReceiver$2;-><init>(Lcom/lewa/spm/service/TimeReceiver;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 811
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    .line 812
    sget-object v5, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 813
    sget-object v5, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 814
    sget-object v5, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private showInLongBatteryLowDialog()V
    .locals 5

    .prologue
    .line 817
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 818
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 819
    iget-object v2, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powerlowwarningval"

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 821
    .local v1, lowv:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const v4, 0x7f07007a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const v4, 0x7f07007b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 824
    iget-object v2, p0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f07004b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lewa/spm/service/TimeReceiver$3;

    invoke-direct {v3, p0}, Lcom/lewa/spm/service/TimeReceiver$3;-><init>(Lcom/lewa/spm/service/TimeReceiver;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 833
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    .line 834
    sget-object v2, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 835
    sget-object v2, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 836
    sget-object v2, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 837
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 35
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 77
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/lewa/spm/charging/CalculateChargingTime;->Instance(Landroid/content/Context;)Lcom/lewa/spm/charging/CalculateChargingTime;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->mCalculateChargingTime:Lcom/lewa/spm/charging/CalculateChargingTime;

    .line 80
    new-instance v26, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    .line 81
    .local v26, saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v30, "notification"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/NotificationManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->nm:Landroid/app/NotificationManager;

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, action:Ljava/lang/String;
    const-string v29, "android.intent.action.SYNC"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v29, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 88
    const-string v29, "state"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 94
    .local v16, isOn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/control/Executer;->setDevSwitchOver(Landroid/content/Context;I)V

    goto :goto_0

    .line 96
    .end local v16           #isOn:Z
    :cond_2
    const-string v29, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 97
    const-string v29, "wifi_state"

    const/16 v30, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 99
    .local v28, status:I
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 102
    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/control/Executer;->setDevSwitchOver(Landroid/content/Context;I)V

    goto :goto_0

    .line 105
    :cond_3
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/control/Executer;->setDevSwitchOver(Landroid/content/Context;I)V

    goto :goto_0

    .line 108
    .end local v28           #status:I
    :cond_4
    const-string v29, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 110
    const-string v29, "android.bluetooth.adapter.extra.STATE"

    const/16 v30, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 112
    .restart local v28       #status:I
    const/16 v29, 0xc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/control/Executer;->setDevSwitchOver(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 115
    :cond_5
    const/16 v29, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/control/Executer;->setDevSwitchOver(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 128
    .end local v28           #status:I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "com.lewa.powermanager.action"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 129
    sget-boolean v29, Lcom/lewa/spm/mode/PowerSavingMode;->isExcuting:Z

    if-nez v29, :cond_0

    .line 132
    const-string v29, "lkr"

    const-string v30, "TimeReceiver---- ExecuteLongMode "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v25, Lcom/lewa/spm/service/ExecuteLongMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/lewa/spm/service/ExecuteLongMode;-><init>(Landroid/content/Context;)V

    .line 134
    .local v25, runLongMode:Lcom/lewa/spm/service/ExecuteLongMode;
    const-string v29, "powerstate"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 136
    .local v17, itfunzState:I
    packed-switch v17, :pswitch_data_0

    .line 152
    :goto_1
    new-instance v14, Landroid/content/Intent;

    const-string v29, "com.lewa.spm_notification_toast_action"

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v14, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 138
    .end local v14           #i:Landroid/content/Intent;
    :pswitch_0
    invoke-virtual/range {v25 .. v25}, Lcom/lewa/spm/service/ExecuteLongMode;->onCreate()V

    goto :goto_1

    .line 141
    :pswitch_1
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "mode_type_name"

    const/16 v31, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    .line 144
    .local v22, mode:I
    const/16 v29, -0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 147
    invoke-virtual/range {v25 .. v25}, Lcom/lewa/spm/service/ExecuteLongMode;->onDestroy()V

    goto :goto_1

    .line 155
    .end local v17           #itfunzState:I
    .end local v22           #mode:I
    .end local v25           #runLongMode:Lcom/lewa/spm/service/ExecuteLongMode;
    :cond_7
    const-string v29, "SPM_INTTILLI_STATUS_ACTION"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 156
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "mode_type_name"

    const/16 v31, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 159
    .local v9, currMode:I
    new-instance v13, Lcom/lewa/spm/service/ExecuteSmartMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 160
    .local v13, exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v9, v0, :cond_8

    .line 161
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/lewa/spm/service/ExecuteSmartMode;->onDestroy(Z)V

    .line 165
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f070004

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f070003

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f070006

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/lewa/spm/util/TransferMode;->consTransferMode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const v33, 0x7f020019

    invoke-static/range {v29 .. v33}, Lcom/lewa/spm/service/ExecuteSmartMode;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 163
    :cond_8
    invoke-virtual {v13}, Lcom/lewa/spm/service/ExecuteSmartMode;->onCreate()V

    goto :goto_2

    .line 172
    .end local v9           #currMode:I
    .end local v13           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 173
    const/16 v19, 0x0

    .line 174
    .local v19, mBatteryChargingType:I
    const/16 v21, -0x1

    .line 176
    .local v21, mPluggType:I
    const-string v29, "level"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLevel:I

    .line 177
    const-string v29, "plugged"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mCalculateChargingTime:Lcom/lewa/spm/charging/CalculateChargingTime;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLevel:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/charging/CalculateChargingTime;->setBatteryInfo(II)V

    .line 182
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/lewa/spm/service/TimeReceiver;->getChargingType(I)I

    move-result v19

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "powerlowwarningval"

    const/16 v31, 0xf

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 186
    .local v18, lbwl:I
    sget-object v29, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 188
    .local v20, mBatteryLevel:I
    move/from16 v0, v20

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 189
    if-eqz v19, :cond_c

    .line 190
    sget-object v29, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    if-eqz v29, :cond_a

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/service/TimeReceiver;->closeBatteryLowDialog()V

    .line 193
    :cond_a
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "blwtipped"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 203
    :cond_b
    :goto_3
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "power_plugged_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 197
    :cond_c
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "blwtipped"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_b

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/service/TimeReceiver;->showBatteryLowDialog()V

    goto :goto_3

    .line 206
    .end local v18           #lbwl:I
    .end local v19           #mBatteryChargingType:I
    .end local v20           #mBatteryLevel:I
    .end local v21           #mPluggType:I
    :cond_d
    const-string v29, "android.intent.action.ACTION_POWER_CONNECTED"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "powerlowwarningval"

    const/16 v31, 0xf

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 209
    .restart local v18       #lbwl:I
    sget-object v29, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 211
    .restart local v20       #mBatteryLevel:I
    move/from16 v0, v20

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 214
    sget-object v29, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLowAlertDialog:Landroid/app/AlertDialog;

    if-eqz v29, :cond_e

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/service/TimeReceiver;->closeBatteryLowDialog()V

    .line 217
    :cond_e
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "blwtipped"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 221
    .end local v18           #lbwl:I
    .end local v20           #mBatteryLevel:I
    :cond_f
    const-string v29, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "powerlowwarningval"

    const/16 v31, 0xf

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 224
    .restart local v18       #lbwl:I
    sget-object v29, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 226
    .restart local v20       #mBatteryLevel:I
    move/from16 v0, v20

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 229
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "blwtipped"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_0

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/service/TimeReceiver;->showBatteryLowDialog()V

    goto/16 :goto_0

    .line 234
    .end local v18           #lbwl:I
    .end local v20           #mBatteryLevel:I
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "android.intent.action.BATTERY_LOW"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 235
    const-string v29, "lkr"

    const-string v30, "TimerReceiver ACTION_BATTERY_LOW"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "phone"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->tm:Landroid/telephony/TelephonyManager;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v29

    if-eqz v29, :cond_11

    const/4 v8, 0x1

    .line 239
    .local v8, calling:Z
    :goto_4
    if-nez v8, :cond_0

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/service/TimeReceiver;->showBatteryLowDialog()V

    goto/16 :goto_0

    .line 238
    .end local v8           #calling:Z
    :cond_11
    const/4 v8, 0x0

    goto :goto_4

    .line 243
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "android.intent.action.BATTERY_OKAY"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 244
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "blwtipped"

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/service/TimeReceiver;->closeBatteryLowDialog()V

    goto/16 :goto_0

    .line 248
    :cond_13
    const-string v29, "android.intent.action.TIME_SET"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/service/TimeReceiver;->enterOrExitSmartModeByTime()V

    goto/16 :goto_0

    .line 250
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "com.lewa.spm_action_start_alarm"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "phone"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->tm:Landroid/telephony/TelephonyManager;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v29

    if-eqz v29, :cond_15

    const/4 v8, 0x1

    .line 255
    .restart local v8       #calling:Z
    :goto_5
    if-nez v8, :cond_0

    .line 258
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "inttelligent_mode_checked"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 261
    .local v23, modeChecked:Z
    const-string v29, "start_alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 264
    .local v27, start_alarm:Ljava/lang/String;
    if-eqz v27, :cond_0

    const/16 v29, 0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 265
    const-string v29, "start_alarm"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 267
    new-instance v13, Lcom/lewa/spm/service/ExecuteSmartMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 268
    .restart local v13       #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    invoke-virtual {v13}, Lcom/lewa/spm/service/ExecuteSmartMode;->onCreate()V

    goto/16 :goto_0

    .line 254
    .end local v8           #calling:Z
    .end local v13           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    .end local v23           #modeChecked:Z
    .end local v27           #start_alarm:Ljava/lang/String;
    :cond_15
    const/4 v8, 0x0

    goto :goto_5

    .line 274
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "com.lewa.spm_action_end_alarm"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 278
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "inttelligent_mode_checked"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 281
    .restart local v23       #modeChecked:Z
    const-string v29, "end_alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 283
    .local v11, end_alarm:Ljava/lang/String;
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "before_switch_mode_type_name"

    const/16 v31, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 286
    .local v4, PreMode:I
    if-eqz v11, :cond_18

    const/16 v29, 0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 287
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "mode_type_name"

    const/16 v31, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 290
    .restart local v9       #currMode:I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v9, v0, :cond_17

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v30, "notification"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/NotificationManager;

    .line 293
    .local v24, nm:Landroid/app/NotificationManager;
    const v29, 0x7f020019

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 296
    .end local v24           #nm:Landroid/app/NotificationManager;
    :cond_17
    new-instance v13, Lcom/lewa/spm/service/ExecuteSmartMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 297
    .restart local v13       #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/lewa/spm/service/ExecuteSmartMode;->onDestroy(Z)V

    .line 299
    .end local v9           #currMode:I
    .end local v13           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    :cond_18
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "enteryintilligentmodeontime"

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 302
    .end local v4           #PreMode:I
    .end local v11           #end_alarm:Ljava/lang/String;
    .end local v23           #modeChecked:Z
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "android.intent.action.PHONE_STATE"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string v30, "phone"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->tm:Landroid/telephony/TelephonyManager;

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v29

    if-eqz v29, :cond_1a

    const/4 v8, 0x1

    .line 306
    .restart local v8       #calling:Z
    :goto_6
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v8, v0, :cond_1b

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/lewa/spm/service/TimeReceiver;->closeBatteryLowDialog()V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelStartAlarm(Landroid/content/Context;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelEndAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 305
    .end local v8           #calling:Z
    :cond_1a
    const/4 v8, 0x0

    goto :goto_6

    .line 311
    .restart local v8       #calling:Z
    :cond_1b
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "inttelligent_mode_checked"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 314
    .restart local v23       #modeChecked:Z
    if-eqz v23, :cond_0

    .line 318
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "mode_type_name"

    const/16 v31, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    .line 321
    .restart local v22       #mode:I
    const/16 v29, 0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 324
    invoke-static {}, Lcom/lewa/spm/util/TimeUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    .line 325
    .local v10, currentTime:Ljava/lang/String;
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "start_time"

    const-string v31, "23:00"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    .line 328
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "end_time"

    const-string v31, "07:00"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelStartAlarm(Landroid/content/Context;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelEndAlarm(Landroid/content/Context;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v10}, Lcom/lewa/spm/mode/PowerSavingMode;->isInTimeInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_1d

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/mode/PowSavingAlarm;->setStartTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "enteryintilligentmodeontime"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 342
    .local v12, entry:Z
    if-eqz v12, :cond_1c

    .line 343
    new-instance v13, Lcom/lewa/spm/service/ExecuteSmartMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 344
    .restart local v13       #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    invoke-virtual {v13}, Lcom/lewa/spm/service/ExecuteSmartMode;->onCreate()V

    .line 349
    .end local v12           #entry:Z
    .end local v13           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    :cond_1c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/mode/PowSavingAlarm;->setEndTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/mode/PowSavingAlarm;->setStartTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 353
    .end local v8           #calling:Z
    .end local v10           #currentTime:Ljava/lang/String;
    .end local v22           #mode:I
    .end local v23           #modeChecked:Z
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "com.lewa.action.BATTERY_ALMOST_FULL"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 355
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 356
    .local v6, almostFullTime:J
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "almost_full_start_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 360
    .end local v6           #almostFullTime:J
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mCalculateChargingTime:Lcom/lewa/spm/charging/CalculateChargingTime;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/lewa/spm/charging/CalculateChargingTime;->init()V

    .line 362
    sget-object v29, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/lewa/spm/util/BatteryInfo;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLevel:I

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mCalculateChargingTime:Lcom/lewa/spm/charging/CalculateChargingTime;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mBatteryLevel:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Lcom/lewa/spm/charging/CalculateChargingTime;->setBatteryInfo(II)V

    .line 365
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "inttelligent_mode_checked"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 368
    .restart local v23       #modeChecked:Z
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "mode_type_name"

    const/16 v31, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 372
    .restart local v9       #currMode:I
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "start_time"

    const-string v31, "23:00"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    .line 375
    const-string v29, "com.lewa.spm_preferences"

    const-string v30, "end_time"

    const-string v31, "07:00"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/mode/PowerSavingMode;->isShowOrNotByTimeCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 380
    .local v15, inInterval:Z
    const/16 v29, 0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 381
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v9, v0, :cond_21

    .line 382
    if-eqz v15, :cond_20

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f070004

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f070003

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f070006

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/lewa/spm/util/TransferMode;->consTransferMode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const v33, 0x7f020019

    invoke-static/range {v29 .. v33}, Lcom/lewa/spm/service/ExecuteSmartMode;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 397
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->start_time:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/mode/PowSavingAlarm;->setStartTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->end_time:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/lewa/spm/mode/PowSavingAlarm;->setEndTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :cond_20
    new-instance v13, Lcom/lewa/spm/service/ExecuteSmartMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 392
    .restart local v13       #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/lewa/spm/service/ExecuteSmartMode;->onDestroy(Z)V

    goto :goto_8

    .line 395
    .end local v13           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/spm/service/TimeReceiver;->nm:Landroid/app/NotificationManager;

    move-object/from16 v29, v0

    const v30, 0x7f020019

    invoke-virtual/range {v29 .. v30}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_8

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
