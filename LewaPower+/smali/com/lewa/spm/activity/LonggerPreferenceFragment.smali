.class public Lcom/lewa/spm/activity/LonggerPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "LonggerPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;
    }
.end annotation


# static fields
.field static diffTimeChangeFlag:Z

.field static mBattaryStatus:I

.field static mBatteryChargingFull:Z

.field static mBatteryChargingType:I

.field public static mBatteryLevel:I

.field private static mBatteryLevelStartTime:Ljava/util/Date;

.field static mChargeIgnoreFirst:Z

.field static mChargePlugged:Z

.field static mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

.field static mCheckChangeTimer:Ljava/util/Timer;

.field private static mDulationTime:J

.field static mPluggType:I

.field private static preLevel:I

.field private static preStatus:I


# instance fields
.field currentInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mAnimHandler:Landroid/os/Handler;

.field mBatteryAnim:Landroid/widget/ImageView;

.field mBatteryAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field mBatteryInfoTitleView:Landroid/widget/TextView;

.field mBatteryPercentInfoView:Landroid/widget/TextView;

.field mBatteryRmainView:Landroid/widget/TextView;

.field private mChargingAnimationRunnable:Ljava/lang/Runnable;

.field mChargingInfoView:Landroid/view/View;

.field mCheckChangeHandler:Landroid/os/Handler;

.field mCustomSettings:Landroid/preference/Preference;

.field mFragmentLayout:Landroid/widget/LinearLayout;

.field private mIsLongModeOn:Z

.field mLifeDiffView:Landroid/widget/TextView;

.field mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

.field modeLongCP:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    sput-object v3, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    .line 117
    sput-object v3, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    .line 118
    sput-boolean v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->diffTimeChangeFlag:Z

    .line 124
    sput v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    .line 125
    sput-boolean v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingFull:Z

    .line 128
    const/4 v0, -0x1

    sput v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mPluggType:I

    .line 129
    sput-boolean v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargePlugged:Z

    .line 130
    sput-boolean v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargeIgnoreFirst:Z

    .line 134
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mDulationTime:J

    .line 136
    sput v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->preLevel:I

    .line 137
    const/4 v0, 0x1

    sput v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->preStatus:I

    .line 138
    sput-object v3, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevelStartTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mIsLongModeOn:Z

    .line 140
    new-instance v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;-><init>(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->currentInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 670
    new-instance v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment$3;-><init>(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeHandler:Landroid/os/Handler;

    .line 730
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mAnimHandler:Landroid/os/Handler;

    .line 734
    new-instance v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$4;

    invoke-direct {v0, p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment$4;-><init>(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargingAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 91
    sget-wide v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mDulationTime:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    sput-wide p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mDulationTime:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showRemainingTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/lewa/spm/activity/LonggerPreferenceFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showChargingTime(I)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Date;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevelStartTime:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    sput-object p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevelStartTime:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lewa/spm/activity/LonggerPreferenceFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getChargingType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->preLevel:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    sput p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->preLevel:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->preStatus:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    sput p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->preStatus:I

    return p0
.end method

.method static synthetic access$700(Lcom/lewa/spm/activity/LonggerPreferenceFragment;ILjava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->updateDateBasedOnChargingMode(ILjava/lang/String;J)V

    return-void
.end method

.method private getChargingType(I)I
    .locals 1
    .parameter "plug"

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, currentState:I
    packed-switch p1, :pswitch_data_0

    .line 566
    :goto_0
    return v0

    .line 560
    :pswitch_0
    const/4 v0, 0x1

    .line 561
    goto :goto_0

    .line 563
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powermanager_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mIsLongModeOn:Z

    .line 415
    iget-boolean v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mIsLongModeOn:Z

    if-eqz v1, :cond_1

    .line 416
    const/4 v0, 0x0

    .line 428
    .local v0, mode:I
    :goto_1
    iget-object v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "mode_type_name"

    invoke-virtual {v1, v2, v3, v0}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 431
    return-void

    .end local v0           #mode:I
    :cond_0
    move v1, v2

    .line 413
    goto :goto_0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "mode_type_name"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #mode:I
    goto :goto_1
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mFragmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryPercentInfoView:Landroid/widget/TextView;

    .line 437
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mFragmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryInfoTitleView:Landroid/widget/TextView;

    .line 439
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mFragmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryRmainView:Landroid/widget/TextView;

    .line 441
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mFragmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargingInfoView:Landroid/view/View;

    .line 442
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargingInfoView:Landroid/view/View;

    new-instance v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment$2;-><init>(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mFragmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mLifeDiffView:Landroid/widget/TextView;

    .line 454
    const-string v0, "spm_mode_long"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->modeLongCP:Landroid/preference/SwitchPreference;

    .line 455
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->modeLongCP:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mIsLongModeOn:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 456
    const-string v0, "set_spm_mode_standby"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCustomSettings:Landroid/preference/Preference;

    .line 457
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->modeLongCP:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 458
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCustomSettings:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 459
    return-void
.end method

.method private registeReceiver()V
    .locals 3

    .prologue
    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 547
    .local v0, currentIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v1, "spm_excute_finish_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "spm_dev_switch_finish_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->currentInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 554
    return-void
.end method

.method private showChargingTime(I)V
    .locals 14
    .parameter "level"

    .prologue
    const-wide/16 v12, 0x3c

    const-wide/16 v10, 0x0

    const/16 v9, 0x64

    .line 496
    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 544
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mLifeDiffView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryRmainView:Landroid/widget/TextView;

    const v7, -0xff97c8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mFragmentLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f09000a

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnim:Landroid/widget/ImageView;

    .line 503
    new-instance v0, Lcom/lewa/spm/charging/ChargingAnimation;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/lewa/spm/charging/ChargingAnimation;-><init>(Landroid/content/Context;)V

    .line 504
    .local v0, anim:Lcom/lewa/spm/charging/ChargingAnimation;
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnim:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->clearAnimation()V

    .line 505
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryInfoTitleView:Landroid/widget/TextView;

    const v7, 0x7f07005a

    invoke-virtual {p0, v7}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    if-ne p1, v9, :cond_1

    .line 510
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnim:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    :cond_1
    sget v6, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBattaryStatus:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    if-ne p1, v9, :cond_2

    .line 515
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryRmainView:Landroid/widget/TextView;

    const v7, 0x7f07005b

    invoke-virtual {p0, v7}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 517
    :cond_2
    if-ne p1, v9, :cond_3

    .line 519
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryRmainView:Landroid/widget/TextView;

    const v7, 0x7f070081

    invoke-virtual {p0, v7}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 526
    :cond_3
    sget-wide v6, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mDulationTime:J

    div-long v1, v6, v12

    .line 527
    .local v1, hour:J
    sget-wide v6, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mDulationTime:J

    rem-long v3, v6, v12

    .line 528
    .local v3, min:J
    const-string v5, ""

    .line 529
    .local v5, timeTemp:Ljava/lang/String;
    cmp-long v6, v1, v10

    if-lez v6, :cond_4

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f070016

    invoke-virtual {p0, v7}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 532
    :cond_4
    cmp-long v6, v3, v10

    if-lez v6, :cond_5

    .line 533
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f070017

    invoke-virtual {p0, v7}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 535
    :cond_5
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryRmainView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    if-eq p1, v9, :cond_6

    .line 537
    invoke-virtual {v0, p1}, Lcom/lewa/spm/charging/ChargingAnimation;->getAnimationBaseOnLevel(I)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v6

    iput-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 539
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnim:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    :cond_6
    iget-object v6, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mAnimHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargingAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private showRemainingTime()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x3c

    .line 462
    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_0

    .line 493
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v7, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v8, "com.lewa.spm_preferences"

    const-string v9, "mode_type_name"

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 476
    .local v5, mode:I
    const-string v6, ""

    .line 478
    .local v6, timeStr:Ljava/lang/String;
    sget-wide v7, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mDulationTime:J

    div-long v1, v7, v11

    .line 479
    .local v1, h:J
    sget-wide v7, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mDulationTime:J

    rem-long v3, v7, v11

    .line 480
    .local v3, m:J
    const-string v7, "lkr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showRemainingTime mBatteryResumeTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mDulationTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f070016

    invoke-virtual {p0, v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 484
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f070017

    invoke-virtual {p0, v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 486
    iget-object v7, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mFragmentLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f09000a

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnim:Landroid/widget/ImageView;

    .line 487
    new-instance v0, Lcom/lewa/spm/charging/ChargingAnimation;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/lewa/spm/charging/ChargingAnimation;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, anim:Lcom/lewa/spm/charging/ChargingAnimation;
    iget-object v7, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnim:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->clearAnimation()V

    .line 489
    iget-object v7, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryInfoTitleView:Landroid/widget/TextView;

    const v8, 0x7f070059

    invoke-virtual {p0, v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v7, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryRmainView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v7, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnim:Landroid/widget/ImageView;

    sget v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    invoke-virtual {v0, v8}, Lcom/lewa/spm/charging/ChargingAnimation;->getDrawableBasedOnLevel(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private updateDateBasedOnChargingMode(ILjava/lang/String;J)V
    .locals 9
    .parameter "type"
    .parameter "level"
    .parameter "time"

    .prologue
    const/4 v5, 0x0

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, count:I
    const-wide/16 v1, 0x0

    .line 574
    .local v1, oldTime:J
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 575
    iget-object v3, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "battery_ac_charging_info"

    invoke-virtual {v3, v4, p2, p3, p4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 579
    iget-object v3, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "battery_ac_charging_count_info"

    invoke-virtual {v3, v4, p2, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 583
    if-gez v0, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 586
    :cond_0
    iget-object v3, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "battery_ac_charging_info"

    int-to-long v5, v0

    mul-long/2addr v5, v1

    add-long/2addr v5, p3

    add-int/lit8 v7, v0, 0x1

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 590
    iget-object v3, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "battery_ac_charging_count_info"

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v4, p2, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 615
    :cond_1
    :goto_0
    return-void

    .line 594
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 595
    iget-object v3, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "battery_usb_charging_info"

    invoke-virtual {v3, v4, p2, p3, p4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 599
    iget-object v3, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "battery_usb_charging_count_info"

    invoke-virtual {v3, v4, p2, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 603
    if-gez v0, :cond_3

    .line 604
    const/4 v0, 0x0

    .line 606
    :cond_3
    iget-object v3, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "battery_usb_charging_info"

    int-to-long v5, v0

    mul-long/2addr v5, v1

    add-long/2addr v5, p3

    add-int/lit8 v7, v0, 0x1

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, p2, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 610
    iget-object v3, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "battery_usb_charging_count_info"

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v4, p2, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 383
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 322
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->addPreferencesFromResource(I)V

    .line 324
    new-instance v0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    .line 352
    invoke-direct {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->initMode()V

    .line 359
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 366
    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mFragmentLayout:Landroid/widget/LinearLayout;

    .line 368
    invoke-direct {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->initUI()V

    .line 369
    invoke-direct {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->registeReceiver()V

    .line 371
    sget v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    if-nez v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showRemainingTime()V

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mFragmentLayout:Landroid/widget/LinearLayout;

    return-object v0

    .line 375
    :cond_0
    sget v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showChargingTime(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->currentInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    sget-object v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    if-eqz v0, :cond_0

    .line 399
    sget-object v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    invoke-virtual {v0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->quit()V

    .line 400
    sget-object v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    invoke-virtual {v0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->cancel()Z

    .line 401
    sput-object v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    .line 403
    :cond_0
    sget-object v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 404
    sget-object v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 405
    sget-object v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 406
    sput-object v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    .line 408
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 409
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 618
    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 621
    const/4 v3, 0x0

    .line 650
    .end local p2
    :cond_0
    :goto_0
    return v3

    .line 623
    .restart local p2
    :cond_1
    sget-boolean v4, Lcom/lewa/spm/mode/PowerSavingMode;->isExcuting:Z

    if-nez v4, :cond_0

    .line 628
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 631
    .local v2, value:Z
    new-instance v1, Lcom/lewa/spm/service/ExecuteLongMode;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/lewa/spm/service/ExecuteLongMode;-><init>(Landroid/content/Context;)V

    .line 632
    .local v1, runLongMode:Lcom/lewa/spm/service/ExecuteLongMode;
    iget-object v4, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "mode_type_name"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 636
    .local v0, mode:I
    if-eqz v2, :cond_2

    .line 637
    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v1}, Lcom/lewa/spm/service/ExecuteLongMode;->onCreate()V

    goto :goto_0

    .line 642
    :cond_2
    if-eq v0, v7, :cond_0

    .line 645
    if-nez v0, :cond_0

    .line 648
    invoke-virtual {v1}, Lcom/lewa/spm/service/ExecuteLongMode;->onDestroy()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 666
    :goto_0
    return v0

    .line 658
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "set_spm_mode_standby"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 660
    const-string v2, "name"

    const v3, 0x7f070022

    invoke-virtual {p0, v3}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const-string v2, "position"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    invoke-virtual {p0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/lewa/spm/activity/UserDefinedModeActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 664
    invoke-virtual {p0, v1, v0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 666
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 392
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 393
    return-void
.end method
