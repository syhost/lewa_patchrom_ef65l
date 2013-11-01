.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DisplaySettings$NightModeListener;,
        Lcom/android/settings/DisplaySettings$NightModeColorListener;
    }
.end annotation


# static fields
.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field private static final KEY_BATTERY_STYLE:Ljava/lang/String; = "battery_styles"

.field private static final KEY_BATTERY_LIGHT:Ljava/lang/String; = "battery_light"
.field private static final KEY_ELECTRON_BEAM_ANIMATION_OFF:Ljava/lang/String; = "electron_beam_animation_off"

.field private static final KEY_ELECTRON_BEAM_ANIMATION_ON:Ljava/lang/String; = "electron_beam_animation_on"

.field private static final KEY_ELECTRON_BEAM_CATEGORY_ANIMATION:Ljava/lang/String; = "category_animation_options"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_INADVERTMODE:Ljava/lang/String; = "inadvertmode"

.field private static final KEY_NIGHTMODE:Ljava/lang/String; = "nightmode"

.field private static final KEY_NIGHTMODE_COLOR:Ljava/lang/String; = "nightmodecolor"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"


# instance fields
.field private mAccelerometer:Landroid/preference/SwitchPreference;

.field private mBatteryStyles:[Ljava/lang/String;

.field private mBatteryStylesPref:Landroid/preference/ListPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mElectronBeamAnimationOff:Landroid/preference/SwitchPreference;

.field private mElectronBeamAnimationOn:Landroid/preference/SwitchPreference;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mInadvertMode:Landroid/preference/SwitchPreference;

.field private mNightMode:Landroid/preference/SwitchPreference;

.field private mNightModeColor:Landroid/preference/ListPreference;

.field private final mNightModeColorListener:Lcom/android/settings/DisplaySettings$NightModeColorListener;

.field private final mNightModeListener:Lcom/android/settings/DisplaySettings$NightModeListener;

.field private mNightStyles:[Ljava/lang/String;

.field private mNotificationPulse:Landroid/preference/PreferenceScreen;

.field private mBatteryPulse:Landroid/preference/PreferenceScreen;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 91
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 100
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeColorListener:Lcom/android/settings/DisplaySettings$NightModeColorListener;

    .line 108
    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeListener:Lcom/android/settings/DisplaySettings$NightModeListener;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateNightModeCheckBox()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateNightModeSwitch()V

    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 264
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 265
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 294
    :goto_1
    return-void

    .line 264
    .end local v3           #maxTimeout:J
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 268
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 269
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 270
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 273
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 274
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 275
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 279
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 280
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 285
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    .line 286
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 293
    .end local v9           #userPreference:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method static registerNightModeColorListener(Landroid/content/Context;Lcom/android/settings/DisplaySettings$NightModeColorListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_modes"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/settings/DisplaySettings$NightModeColorListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    return-void
.end method

.method static registerNightModeListener(Landroid/content/Context;Lcom/android/settings/DisplaySettings$NightModeListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nightmode_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/settings/DisplaySettings$NightModeListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    return-void
.end method

.method static unregisterNightModeColorListener(Landroid/content/Context;Lcom/android/settings/DisplaySettings$NightModeColorListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/DisplaySettings$NightModeColorListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method

.method static unregisterNightModeListener(Landroid/content/Context;Lcom/android/settings/DisplaySettings$NightModeListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/DisplaySettings$NightModeListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 142
    return-void
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateNightModeCheckBox()V
    .locals 4

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_modes"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 390
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeColor:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeColor:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mNightStyles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNightModeSwitch()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nightmode_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 398
    .local v0, value:Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNightMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .end local v0           #value:Z
    :cond_1
    move v0, v1

    .line 396
    goto :goto_1
.end method

.method private updateBatteryPulseDescription()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c083c

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c083d

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLightPulseDescription()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c083c

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c083d

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c02ce

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 377
    return-void

    .line 373
    :cond_0
    const v0, 0x7f0c02cf

    goto :goto_0
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateNightModeCheckBox()V

    .line 368
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 369
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 370
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .parameter "currentTimeout"

    .prologue
    const-wide/16 v9, 0x0

    .line 239
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 241
    .local v3, preference:Landroid/preference/ListPreference;
    cmp-long v8, p1, v9

    if-gez v8, :cond_0

    .line 243
    const-string v4, ""

    .line 257
    .local v4, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    return-void

    .line 245
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 246
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 247
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 248
    .local v0, best:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_2

    .line 249
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 250
    .local v5, timeout:J
    cmp-long v8, p1, v5

    if-ltz v8, :cond_1

    cmp-long v8, v5, v9

    if-lez v8, :cond_1

    .line 251
    move v0, v2

    .line 248
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    .end local v5           #timeout:J
    :cond_2
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c02ca

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 299
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 300
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 301
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 302
    add-int/lit8 v4, v0, -0x1

    .line 306
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 304
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 361
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 170
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 173
    .local v4, resolver:Landroid/content/ContentResolver;
    const v7, 0x7f060018

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 176
    const-string v7, "nightmode"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mNightMode:Landroid/preference/SwitchPreference;

    .line 177
    const-string v7, "nightmode_enable"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_2

    move v3, v8

    .line 178
    .local v3, nightValue:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNightMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 179
    const-string v7, "nightmodecolor"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mNightModeColor:Landroid/preference/ListPreference;

    .line 180
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNightModeColor:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    const-string v7, "night_modes"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 182
    .local v0, currentNightValue:I
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNightModeColor:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f080057

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mNightStyles:[Ljava/lang/String;

    .line 184
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNightModeColor:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightStyles:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    const-string v7, "accelerometer"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    .line 187
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_0
    const-string v7, "screensaver"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 195
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1110038

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :cond_1
    const-string v7, "screen_timeout"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 202
    const-string v7, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 204
    .local v1, currentTimeout:J
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 205
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 207
    invoke-direct {p0, v1, v2}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 209
    const-string v7, "font_size"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    .line 210
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    const-string v7, "notification_pulse"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 212
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_30

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x111001f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_31
    
    .line 215
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z


    :cond_30
    :goto_30
    const-string v7, "battery_light"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 157
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_41

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_32

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
 
 
    .line 226
    :cond_41
    :goto_1
    const-string v7, "electron_beam_animation_on"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOn:Landroid/preference/SwitchPreference;

    .line 227
    const-string v7, "electron_beam_animation_off"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOff:Landroid/preference/SwitchPreference;

    .line 228
    const-string v7, "battery_styles"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mBatteryStylesPref:Landroid/preference/ListPreference;

    .line 229
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mBatteryStylesPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080053

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mBatteryStyles:[Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_bar_batery"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 232
    .local v6, value:I
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mBatteryStylesPref:Landroid/preference/ListPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 233
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mBatteryStylesPref:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mBatteryStyles:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    const-string v7, "inadvertmode"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mInadvertMode:Landroid/preference/SwitchPreference;

    .line 236
    return-void

    .end local v0           #currentNightValue:I
    .end local v1           #currentTimeout:J
    .end local v3           #nightValue:Z
    .end local v6           #value:I
    :cond_2
    move v3, v9

    .line 177
    goto/16 :goto_0

    .line 218
    .restart local v0       #currentNightValue:I
    .restart local v1       #currentTimeout:J
    .restart local v3       #nightValue:Z
    :cond_31
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLightPulseDescription()V
    goto :goto_30
    :cond_32
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateBatteryPulseDescription()V

    goto :goto_1

    .line 221
    :catch_0
    move-exception v5

    .line 222
    .local v5, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "DisplaySettings"

    const-string v8, "notification_light_pulse not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5           #snfe:Landroid/provider/Settings$SettingNotFoundException;
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeColorListener:Lcom/android/settings/DisplaySettings$NightModeColorListener;

    invoke-static {v0, v1}, Lcom/android/settings/DisplaySettings;->unregisterNightModeColorListener(Landroid/content/Context;Lcom/android/settings/DisplaySettings$NightModeColorListener;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeListener:Lcom/android/settings/DisplaySettings$NightModeListener;

    invoke-static {v0, v1}, Lcom/android/settings/DisplaySettings;->unregisterNightModeListener(Landroid/content/Context;Lcom/android/settings/DisplaySettings$NightModeListener;)V

    .line 355
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, key:Ljava/lang/String;
    const-string v3, "screen_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 440
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 442
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v2           #value:I
    :cond_0
    :goto_0
    const-string v3, "battery_styles"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 449
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 451
    .restart local v2       #value:I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_batery"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mBatteryStyles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    .end local v2           #value:I
    :cond_1
    :goto_1
    const-string v3, "font_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 460
    :cond_2
    const-string v3, "nightmodecolor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 461
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 462
    .restart local v2       #value:I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "night_modes"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mNightStyles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    .end local v2           #value:I
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 444
    .restart local v2       #value:I
    .restart local p2
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 453
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 413
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_4

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 434
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_2
    return v1

    :cond_1
    move v1, v2

    .line 414
    goto :goto_0

    

    .line 423
    .end local v0           #value:Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mNightMode:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_6

    .line 424
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mNightMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 425
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nightmode_enable"

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 428
    .end local v0           #value:Z
    :cond_6
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mInadvertMode:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mInadvertMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 430
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "inadvertmode_enable"

    if-eqz v0, :cond_7

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 340
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLightPulseDescription()V

    .line 341
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateBatteryPulseDescription()V

    .line 343
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeColorListener:Lcom/android/settings/DisplaySettings$NightModeColorListener;

    invoke-static {v0, v1}, Lcom/android/settings/DisplaySettings;->registerNightModeColorListener(Landroid/content/Context;Lcom/android/settings/DisplaySettings$NightModeColorListener;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeListener:Lcom/android/settings/DisplaySettings$NightModeListener;

    invoke-static {v0, v1}, Lcom/android/settings/DisplaySettings;->registerNightModeListener(Landroid/content/Context;Lcom/android/settings/DisplaySettings$NightModeListener;)V

    .line 341
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    .line 311
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 318
    .local v2, index:I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 322
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f080008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, fontSizeNames:[Ljava/lang/String;
    const v4, 0x7f0c02d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    return-void

    .line 312
    .end local v1           #fontSizeNames:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 405
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
