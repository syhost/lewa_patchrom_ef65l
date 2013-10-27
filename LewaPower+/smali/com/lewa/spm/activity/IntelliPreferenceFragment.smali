.class public Lcom/lewa/spm/activity/IntelliPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "IntelliPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field end_time:Ljava/lang/String;

.field mBatteryCalibrate:Landroid/preference/Preference;

.field mBatteryLevel:I

.field mBedTimeCheck:Landroid/preference/SwitchPreference;

.field mInTheTimeMode:Landroid/preference/Preference;

.field mLowBatteryWarnigLevelView:Landroid/preference/ListPreference;

.field mSetTime:Landroid/preference/Preference;

.field mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

.field receiver:Landroid/content/BroadcastReceiver;

.field start_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mBatteryLevel:I

    .line 78
    iput-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->start_time:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->end_time:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment$1;-><init>(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V

    iput-object v0, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->showIfEnterDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/lewa/spm/activity/IntelliPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->setAlarm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->createCalibrateBatterySuccessDialog()V

    return-void
.end method

.method private createCalibrateBatterySuccessDialog()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->showCalibrateBatteryDialog(I)V

    .line 336
    return-void
.end method

.method private doBatteryCalibrate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    iget v0, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mBatteryLevel:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-direct {p0, v2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->showCalibrateBatteryDialog(I)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 5

    .prologue
    .line 123
    const-string v2, "sleep_sp"

    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mBedTimeCheck:Landroid/preference/SwitchPreference;

    .line 124
    const-string v2, "set_time"

    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSetTime:Landroid/preference/Preference;

    .line 125
    const-string v2, "time_frame_mode"

    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mInTheTimeMode:Landroid/preference/Preference;

    .line 126
    const-string v2, "spm_battery_calibration"

    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mBatteryCalibrate:Landroid/preference/Preference;

    .line 127
    const-string v2, "spm_battery_low_warning"

    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mLowBatteryWarnigLevelView:Landroid/preference/ListPreference;

    .line 128
    invoke-direct {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->readDataFromSharedPreference()V

    .line 129
    iget-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSetTime:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mInTheTimeMode:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mBatteryCalibrate:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mLowBatteryWarnigLevelView:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powerlowwarningval"

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, lbwl:I
    iget-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mLowBatteryWarnigLevelView:Landroid/preference/ListPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mLowBatteryWarnigLevelView:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mBedTimeCheck:Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;

    invoke-direct {v3, p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;-><init>(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    return-void
.end method

.method private readDataFromSharedPreference()V
    .locals 5

    .prologue
    .line 209
    iget-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "inttelligent_mode_checked"

    invoke-virtual {v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 212
    .local v0, modeChecked:Z
    iget-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "start_time"

    sget-object v4, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_FROM:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->start_time:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "end_time"

    sget-object v4, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_TO:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->end_time:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mBedTimeCheck:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 221
    iget-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSetTime:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->start_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->end_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, currentIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "spm_time_setting_save"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method private setAlarm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "start_time"
    .parameter "end_time"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelStartAlarm(Landroid/content/Context;)V

    .line 380
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/spm/mode/PowSavingAlarm;->setStartTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelEndAlarm(Landroid/content/Context;)V

    .line 382
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lewa/spm/mode/PowSavingAlarm;->setEndTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private showCalibrateBatteryDialog(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 289
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 291
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 292
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 293
    const v1, 0x7f07004a

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lewa/spm/activity/IntelliPreferenceFragment$3;

    invoke-direct {v2, p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment$3;-><init>(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 323
    return-void

    .line 300
    :cond_0
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 301
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lewa/spm/activity/IntelliPreferenceFragment$4;

    invoke-direct {v2, p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment$4;-><init>(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lewa/spm/activity/IntelliPreferenceFragment$5;

    invoke-direct {v2, p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment$5;-><init>(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showIfEnterDialog()V
    .locals 3

    .prologue
    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 343
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;

    invoke-direct {v2, p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;-><init>(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lewa/spm/activity/IntelliPreferenceFragment$7;

    invoke-direct {v2, p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment$7;-><init>(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 376
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->addPreferencesFromResource(I)V

    .line 105
    new-instance v0, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    .line 106
    invoke-direct {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->initUI()V

    .line 107
    invoke-direct {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->registerReceiver()V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 388
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "spm_battery_low_warning"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mLowBatteryWarnigLevelView:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 254
    .local v3, values:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mLowBatteryWarnigLevelView:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 256
    .local v2, val:I
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powerlowwarningval"

    const/16 v6, 0xf

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 258
    .local v0, oldlbwl:I
    if-eq v0, v2, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powerlowwarningval"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "blwtipped"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 266
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070076

    invoke-virtual {p0, v5}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mLowBatteryWarnigLevelView:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    .end local v0           #oldlbwl:I
    .end local v1           #str:Ljava/lang/String;
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 233
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/lewa/spm/activity/TimeSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 246
    :cond_0
    :goto_0
    return v3

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_frame_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    const-string v1, "name"

    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "position"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/lewa/spm/activity/UserDefinedModeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 242
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spm_battery_calibration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->doBatteryCalibrate()V

    goto :goto_0
.end method
