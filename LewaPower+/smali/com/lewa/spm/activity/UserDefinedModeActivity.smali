.class public Lcom/lewa/spm/activity/UserDefinedModeActivity;
.super Landroid/preference/PreferenceActivity;
.source "UserDefinedModeActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field adjustSeekBar:Landroid/widget/SeekBar;

.field airPlaneCP:Landroid/preference/CheckBoxPreference;

.field autoSyncCP:Landroid/preference/CheckBoxPreference;

.field backLightCP:Landroid/preference/CheckBoxPreference;

.field blueToothCP:Landroid/preference/CheckBoxPreference;

.field brightnessPrference:Landroid/preference/Preference;

.field dataCP:Landroid/preference/CheckBoxPreference;

.field gpsCP:Landroid/preference/CheckBoxPreference;

.field hapticCP:Landroid/preference/CheckBoxPreference;

.field longRuleAction:Ljava/lang/String;

.field longRuleName:Ljava/lang/String;

.field mAutoBrightness:Z

.field mAutoSync:Z

.field mBT:Z

.field mBacklight:Z

.field mBrightnessValue:I

.field mCloseCat:Landroid/preference/PreferenceCategory;

.field mData:Z

.field mFlyMode:Z

.field mGps:Z

.field mHaptic:Z

.field mMode:I

.field mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

.field mOldAutoBrightness:Z

.field mOldBrightnessValue:I

.field mOpenCat:Landroid/preference/PreferenceCategory;

.field mScreenLockValue:I

.field mSetmaxCat:Landroid/preference/PreferenceCategory;

.field mWifi:Z

.field preferencegrp:Landroid/preference/PreferenceGroup;

.field saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

.field sleepRuleAction:Ljava/lang/String;

.field sleepRuleName:Ljava/lang/String;

.field switchState:Lcom/lewa/spm/control/SwitchState;

.field timeOutLP:Landroid/preference/ListPreference;

.field wifiCP:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    .line 105
    iput v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBrightnessValue:I

    .line 107
    iput v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mOldBrightnessValue:I

    .line 113
    const-string v0, "com.lewa.spm_notification_sleep_mode_rule"

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->sleepRuleAction:Ljava/lang/String;

    .line 114
    const-string v0, "com.lewa.spm_notification_long_mode_rule"

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->longRuleAction:Ljava/lang/String;

    .line 115
    const-string v0, "longRule"

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->longRuleName:Ljava/lang/String;

    .line 116
    const-string v0, "sleepRule"

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->sleepRuleName:Ljava/lang/String;

    return-void
.end method

.method private createBrightnessDialog()V
    .locals 7

    .prologue
    .line 412
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 414
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030003

    const v4, 0x7f090005

    invoke-virtual {p0, v4}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 416
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f090008

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->adjustSeekBar:Landroid/widget/SeekBar;

    .line 419
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->adjustSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBrightnessValue:I

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 421
    new-instance v3, Lcom/lewa/spm/activity/UserDefinedModeActivity$1;

    invoke-direct {v3, p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity$1;-><init>(Lcom/lewa/spm/activity/UserDefinedModeActivity;)V

    .line 443
    .local v3, seekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->adjustSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 445
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 447
    const v4, 0x7f070011

    invoke-virtual {p0, v4}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07004b

    invoke-virtual {p0, v5}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lewa/spm/activity/UserDefinedModeActivity$3;

    invoke-direct {v6, p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity$3;-><init>(Lcom/lewa/spm/activity/UserDefinedModeActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07004f

    invoke-virtual {p0, v5}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lewa/spm/activity/UserDefinedModeActivity$2;

    invoke-direct {v6, p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity$2;-><init>(Lcom/lewa/spm/activity/UserDefinedModeActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 465
    return-void
.end method


# virtual methods
.method public getSettings()V
    .locals 2

    .prologue
    .line 485
    iget v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    if-nez v1, :cond_1

    .line 489
    :goto_0
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->wifiCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mWifi:Z

    .line 491
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->gpsCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mGps:Z

    .line 493
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->blueToothCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBT:Z

    .line 495
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->dataCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mData:Z

    .line 497
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->hapticCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mHaptic:Z

    .line 499
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->autoSyncCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mAutoSync:Z

    .line 501
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 502
    .local v0, version:I
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->backLightCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBacklight:Z

    .line 506
    :cond_0
    return-void

    .line 486
    .end local v0           #version:I
    :cond_1
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->airPlaneCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mFlyMode:Z

    goto :goto_0
.end method

.method public initUI()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "spm_custom_settings_closing"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->preferencegrp:Landroid/preference/PreferenceGroup;

    .line 231
    iget v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    const-string v0, "spm_custom_settings_openning"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mOpenCat:Landroid/preference/PreferenceCategory;

    .line 233
    const-string v0, "spm_custom_settings_closing"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mCloseCat:Landroid/preference/PreferenceCategory;

    .line 234
    const-string v0, "spm_custom_settings_setting_max"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mSetmaxCat:Landroid/preference/PreferenceCategory;

    .line 235
    iget-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mOpenCat:Landroid/preference/PreferenceCategory;

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 236
    iget-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mCloseCat:Landroid/preference/PreferenceCategory;

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 237
    iget-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mSetmaxCat:Landroid/preference/PreferenceCategory;

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 241
    :cond_0
    iget v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    if-nez v0, :cond_1

    .line 244
    :goto_0
    const-string v0, "spm_dev_wifi"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->wifiCP:Landroid/preference/CheckBoxPreference;

    .line 245
    const-string v0, "spm_dev_gps"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->gpsCP:Landroid/preference/CheckBoxPreference;

    .line 246
    const-string v0, "spm_dev_bluetooth"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->blueToothCP:Landroid/preference/CheckBoxPreference;

    .line 247
    const-string v0, "spm_dev_data"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->dataCP:Landroid/preference/CheckBoxPreference;

    .line 248
    const-string v0, "spm_dev_haptic"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->hapticCP:Landroid/preference/CheckBoxPreference;

    .line 249
    const-string v0, "spm_dev_sync"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->autoSyncCP:Landroid/preference/CheckBoxPreference;

    .line 250
    const-string v0, "spm_dev_backlight"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->backLightCP:Landroid/preference/CheckBoxPreference;

    .line 253
    const-string v0, "spm_dev_brghtiness"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->brightnessPrference:Landroid/preference/Preference;

    .line 254
    const-string v0, "spm_dev_time_out"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    .line 256
    invoke-virtual {p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->setInitValue()V

    .line 261
    iget-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->brightnessPrference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    return-void

    .line 242
    :cond_1
    const-string v0, "spm_dev_airplane"

    invoke-virtual {p0, v0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->airPlaneCP:Landroid/preference/CheckBoxPreference;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "position"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    .line 123
    iget v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    if-nez v3, :cond_2

    .line 124
    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->addPreferencesFromResource(I)V

    .line 128
    :goto_0
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 132
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 133
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 135
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v3, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    invoke-direct {v3, p0}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    .line 142
    new-instance v3, Lcom/lewa/spm/mode/ModeSettings;

    iget v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    invoke-direct {v3, p0, v4}, Lcom/lewa/spm/mode/ModeSettings;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    .line 143
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    invoke-virtual {v3}, Lcom/lewa/spm/mode/ModeSettings;->getSettings()V

    .line 145
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v3, v3, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mFlyMode:Z

    .line 146
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v3, v3, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mWifi:Z

    .line 147
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v3, v3, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mGps:Z

    .line 148
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v3, v3, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBT:Z

    .line 149
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v3, v3, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mData:Z

    .line 150
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v3, v3, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mHaptic:Z

    .line 151
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v3, v3, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mAutoSync:Z

    .line 152
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v3, v3, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBacklight:Z

    .line 154
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v3, v3, Lcom/lewa/spm/mode/ModeSettings;->brightnessSetted:Z

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mAutoBrightness:Z

    .line 155
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget v3, v3, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    iput v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBrightnessValue:I

    .line 156
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget v3, v3, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    iput v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mScreenLockValue:I

    .line 158
    invoke-virtual {p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->initUI()V

    .line 160
    new-instance v3, Lcom/lewa/spm/control/SwitchState;

    iget v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    invoke-direct {v3, p0, v4}, Lcom/lewa/spm/control/SwitchState;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->switchState:Lcom/lewa/spm/control/SwitchState;

    .line 161
    new-instance v1, Lcom/lewa/spm/control/InquirState;

    iget v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    invoke-direct {v1, p0, v3}, Lcom/lewa/spm/control/InquirState;-><init>(Landroid/content/Context;I)V

    .line 162
    .local v1, inquire:Lcom/lewa/spm/control/InquirState;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "S5830"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenAutoState()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mOldAutoBrightness:Z

    .line 165
    :cond_1
    invoke-virtual {v1}, Lcom/lewa/spm/control/InquirState;->lightOfScreenValue()I

    move-result v3

    iput v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mOldBrightnessValue:I

    .line 166
    return-void

    .line 126
    .end local v0           #bar:Landroid/app/ActionBar;
    .end local v1           #inquire:Lcom/lewa/spm/control/InquirState;
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 174
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 175
    const/4 v0, 0x2

    const v1, 0x7f07004f

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 179
    const v0, 0x7f070051

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 190
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v2, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 224
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 193
    :pswitch_0
    invoke-virtual {p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->getSettings()V

    .line 195
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mFlyMode:Z

    iput-boolean v5, v4, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    .line 196
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mWifi:Z

    iput-boolean v5, v4, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    .line 197
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mGps:Z

    iput-boolean v5, v4, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    .line 198
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBT:Z

    iput-boolean v5, v4, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    .line 199
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mData:Z

    iput-boolean v5, v4, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    .line 200
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mHaptic:Z

    iput-boolean v5, v4, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    .line 201
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mAutoSync:Z

    iput-boolean v5, v4, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    .line 202
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mAutoBrightness:Z

    iput-boolean v5, v4, Lcom/lewa/spm/mode/ModeSettings;->brightnessSetted:Z

    .line 203
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBrightnessValue:I

    iput v5, v4, Lcom/lewa/spm/mode/ModeSettings;->brightnessValue:I

    .line 204
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mScreenLockValue:I

    iput v5, v4, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    .line 205
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBacklight:Z

    iput-boolean v5, v4, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    .line 207
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    invoke-virtual {v4}, Lcom/lewa/spm/mode/ModeSettings;->saveSettings()V

    .line 209
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "mode_type_name"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, currMode:I
    iget v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    if-ne v0, v4, :cond_0

    .line 214
    new-instance v1, Lcom/lewa/spm/control/Executer;

    iget v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    invoke-direct {v1, p0, v4}, Lcom/lewa/spm/control/Executer;-><init>(Landroid/content/Context;I)V

    .line 215
    .local v1, execute:Lcom/lewa/spm/control/Executer;
    invoke-virtual {v1}, Lcom/lewa/spm/control/Executer;->executSavingPower()V

    .line 217
    .end local v1           #execute:Lcom/lewa/spm/control/Executer;
    :cond_0
    invoke-virtual {p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->finish()V

    goto :goto_0

    .line 220
    .end local v0           #currMode:I
    :pswitch_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->setResult(ILandroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->finish()V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "spm_dev_time_out"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 473
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 474
    .local v2, values:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 476
    .local v1, idx:I
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mScreenLockValue:I

    .line 477
    iget-object v3, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #idx:I
    .end local v2           #values:[Ljava/lang/CharSequence;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spm_dev_brghtiness"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/lewa/spm/activity/UserDefinedModeActivity;->createBrightnessDialog()V

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitValue()V
    .locals 7

    .prologue
    .line 270
    iget v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mMode:I

    if-nez v4, :cond_1

    .line 273
    :goto_0
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->wifiCP:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, v5, Lcom/lewa/spm/mode/ModeSettings;->wifiSetted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 274
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->gpsCP:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, v5, Lcom/lewa/spm/mode/ModeSettings;->gpsSetted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 275
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->blueToothCP:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, v5, Lcom/lewa/spm/mode/ModeSettings;->bluetoothSetted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->dataCP:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, v5, Lcom/lewa/spm/mode/ModeSettings;->dataSetted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->hapticCP:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, v5, Lcom/lewa/spm/mode/ModeSettings;->hapticSetted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->autoSyncCP:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, v5, Lcom/lewa/spm/mode/ModeSettings;->autoSyncSetted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 280
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 281
    .local v3, version:I
    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    .line 282
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->backLightCP:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, v5, Lcom/lewa/spm/mode/ModeSettings;->backlightSetted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    :goto_1
    iget v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBrightnessValue:I

    .line 287
    .local v0, bright:I
    const/16 v4, 0x14

    if-ge v0, v4, :cond_0

    .line 288
    const/16 v0, 0x14

    .line 290
    :cond_0
    mul-int/lit8 v4, v0, 0x64

    div-int/lit16 v0, v4, 0xe1

    .line 291
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->brightnessPrference:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 294
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 295
    .local v2, values:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget v6, v6, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 296
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->timeOutLP:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget v6, v6, Lcom/lewa/spm/mode/ModeSettings;->timeOutValue:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    return-void

    .line 271
    .end local v0           #bright:I
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #values:[Ljava/lang/CharSequence;
    .end local v3           #version:I
    :cond_1
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->airPlaneCP:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mModeSettings:Lcom/lewa/spm/mode/ModeSettings;

    iget-boolean v5, v5, Lcom/lewa/spm/mode/ModeSettings;->flyModeSetted:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 284
    .restart local v3       #version:I
    :cond_2
    iget-object v4, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->preferencegrp:Landroid/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->backLightCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method
