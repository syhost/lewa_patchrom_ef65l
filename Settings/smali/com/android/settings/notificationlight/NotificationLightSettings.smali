.class public Lcom/android/settings/notificationlight/NotificationLightSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notificationlight/NotificationLightSettings$ViewHolder;,
        Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;,
        Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;,
        Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE:I = 0x1

.field public static final ACTION_TEST:I = 0x0

.field private static final CUSTOM_PREF:Ljava/lang/String; = "custom_enabled"

.field private static final DEFAULT_PREF:Ljava/lang/String; = "default"

.field private static final DIALOG_APPS:I = 0x0

.field private static final MENU_ADD:I = 0x0

.field private static final MISSED_CALL_PREF:Ljava/lang/String; = "missed_call"

.field private static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field private static final NOTIFICATION_LIGHT_PULSE_CALL_COLOR:Ljava/lang/String; = "notification_light_pulse_call_color"

.field private static final NOTIFICATION_LIGHT_PULSE_CALL_LED_OFF:Ljava/lang/String; = "notification_light_pulse_call_led_off"

.field private static final NOTIFICATION_LIGHT_PULSE_CALL_LED_ON:Ljava/lang/String; = "notification_light_pulse_call_led_on"

.field private static final NOTIFICATION_LIGHT_PULSE_CUSTOM_ENABLE:Ljava/lang/String; = "notification_light_pulse_custom_enable"

.field private static final NOTIFICATION_LIGHT_PULSE_CUSTOM_VALUES:Ljava/lang/String; = "notification_light_pulse_custom_values"

.field private static final NOTIFICATION_LIGHT_PULSE_DEFAULT_COLOR:Ljava/lang/String; = "notification_light_pulse_default_color"

.field private static final NOTIFICATION_LIGHT_PULSE_DEFAULT_LED_OFF:Ljava/lang/String; = "notification_light_pulse_default_led_off"

.field private static final NOTIFICATION_LIGHT_PULSE_DEFAULT_LED_ON:Ljava/lang/String; = "notification_light_pulse_default_led_on"

.field private static final NOTIFICATION_LIGHT_PULSE_VMAIL_COLOR:Ljava/lang/String; = "notification_light_pulse_vmail_color"

.field private static final NOTIFICATION_LIGHT_PULSE_VMAIL_LED_OFF:Ljava/lang/String; = "notification_light_pulse_vmail_led_off"

.field private static final NOTIFICATION_LIGHT_PULSE_VMAIL_LED_ON:Ljava/lang/String; = "notification_light_pulse_vmail_led_on"

.field private static final PULSE_PREF:Ljava/lang/String; = "pulse_enabled"

.field private static final TAG:Ljava/lang/String; = "NotificationLightSettings"

.field private static final VOICEMAIL_PREF:Ljava/lang/String; = "voicemail"


# instance fields
.field mAppAdapter:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

.field private mApplicationList:Ljava/lang/String;

.field private mApplications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notificationlight/NotificationLightSettings$Application;",
            ">;"
        }
    .end annotation
.end field

.field private mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

.field private mCustomEnabled:Z

.field private mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mDefaultColor:I

.field private mDefaultLedOff:I

.field private mDefaultLedOn:I

.field private mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

.field private mInstalledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLightEnabled:Z

.field private mMenu:Landroid/view/Menu;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mVoiceCapable:Z

.field private mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 633
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->removeCustomApplication(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->addCustomApplication(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notificationlight/NotificationLightSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addCustomApplication(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplications:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;

    .line 275
    .local v0, app:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;

    .end local v0           #app:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    iget v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 277
    .restart local v0       #app:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplications:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->saveApplicationList(Z)V

    .line 279
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshCustomApplications()V

    .line 281
    :cond_0
    return-void
.end method

.method private parseApplicationList()Z
    .locals 9

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_light_pulse_custom_values"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, baseString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationList:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 295
    const/4 v7, 0x0

    .line 314
    :goto_0
    return v7

    .line 298
    :cond_0
    iput-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationList:Ljava/lang/String;

    .line 299
    iget-object v7, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplications:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 301
    if-eqz v3, :cond_3

    .line 302
    const-string v7, "\\|"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, array:[Ljava/lang/String;
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v5, v1, v4

    .line 304
    .local v5, item:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 303
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 307
    :cond_2
    invoke-static {v5}, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->fromString(Ljava/lang/String;)Lcom/android/settings/notificationlight/NotificationLightSettings$Application;

    move-result-object v0

    .line 308
    .local v0, app:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    if-eqz v0, :cond_1

    .line 309
    iget-object v7, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplications:Ljava/util/Map;

    iget-object v8, v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 314
    .end local v0           #app:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #array:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #item:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private refreshCustomApplications()V
    .locals 14

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 212
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->parseApplicationList()Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 218
    .local v12, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 219
    .local v11, pm:Landroid/content/pm/PackageManager;
    const-string v2, "applications_list"

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 221
    .local v6, appList:Landroid/preference/PreferenceGroup;
    if-eqz v6, :cond_0

    .line 222
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 225
    .local v13, prefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/CharSequence;Lcom/android/settings/notificationlight/ApplicationLightPreference;>;"
    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 227
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplications:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;

    .line 229
    .local v7, i:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    :try_start_0
    iget-object v2, v7, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->name:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v11, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 230
    .local v9, info:Landroid/content/pm/PackageInfo;
    new-instance v0, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    iget-object v2, v7, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->color:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v7, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->timeon:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v7, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnLongClickListener;III)V

    .line 232
    .local v0, pref:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 234
    .local v10, label:Ljava/lang/CharSequence;
    iget-object v2, v7, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setKey(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v10}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v11}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v2, v7, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setPersistent(Z)V

    .line 240
    invoke-virtual {v0, p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    invoke-interface {v13, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v0           #pref:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    .end local v9           #info:Landroid/content/pm/PackageInfo;
    .end local v10           #label:Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 248
    .end local v7           #i:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    :cond_2
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 249
    .restart local v0       #pref:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private refreshDefault()V
    .locals 17

    .prologue
    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 151
    .local v9, resolver:Landroid/content/ContentResolver;
    const-string v15, "notification_light_pulse_default_color"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 152
    .local v5, color:I
    const-string v15, "notification_light_pulse_default_led_on"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 153
    .local v11, timeOn:I
    const-string v15, "notification_light_pulse_default_led_off"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 154
    .local v10, timeOff:I
    const-string v15, "notification_light_pulse"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    .line 155
    const-string v15, "notification_light_pulse_custom_enable"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    .line 158
    const-string v15, "notification_light_pulse_call_color"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 159
    .local v2, callColor:I
    const-string v15, "notification_light_pulse_call_led_on"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 160
    .local v4, callTimeOn:I
    const-string v15, "notification_light_pulse_call_led_off"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 161
    .local v3, callTimeOff:I
    const-string v15, "notification_light_pulse_vmail_color"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 162
    .local v12, vmailColor:I
    const-string v15, "notification_light_pulse_vmail_led_on"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 163
    .local v14, vmailTimeOn:I
    const-string v15, "notification_light_pulse_vmail_led_off"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 165
    .local v13, vmailTimeOff:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 166
    .local v8, prefSet:Landroid/preference/PreferenceScreen;
    const-string v15, "general_section"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 167
    .local v6, generalPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v6, :cond_0

    .line 170
    const-string v15, "pulse_enabled"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 171
    .local v1, cPref:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    invoke-virtual {v1, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v15, "default"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v15, v5, v11, v10}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    const-string v15, "custom_enabled"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    .end local v1           #cPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    const-string v15, "phone_list"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 188
    .local v7, phonePrefs:Landroid/preference/PreferenceGroup;
    if-eqz v7, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoiceCapable:Z

    if-nez v15, :cond_4

    .line 193
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    :cond_1
    :goto_2
    return-void

    .line 154
    .end local v2           #callColor:I
    .end local v3           #callTimeOff:I
    .end local v4           #callTimeOn:I
    .end local v6           #generalPrefs:Landroid/preference/PreferenceGroup;
    .end local v7           #phonePrefs:Landroid/preference/PreferenceGroup;
    .end local v8           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v12           #vmailColor:I
    .end local v13           #vmailTimeOff:I
    .end local v14           #vmailTimeOn:I
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 155
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 195
    .restart local v2       #callColor:I
    .restart local v3       #callTimeOff:I
    .restart local v4       #callTimeOn:I
    .restart local v6       #generalPrefs:Landroid/preference/PreferenceGroup;
    .restart local v7       #phonePrefs:Landroid/preference/PreferenceGroup;
    .restart local v8       #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v12       #vmailColor:I
    .restart local v13       #vmailTimeOff:I
    .restart local v14       #vmailTimeOn:I
    :cond_4
    const-string v15, "missed_call"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v15, v2, v4, v3}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    const-string v15, "voicemail"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v15, v12, v14, v13}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2
.end method

.method private removeCustomApplication(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplications:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->saveApplicationList(Z)V

    .line 286
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshCustomApplications()V

    .line 288
    :cond_0
    return-void
.end method

.method private saveApplicationList(Z)V
    .locals 6
    .parameter "preferencesUpdated"

    .prologue
    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v2, settings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplications:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;

    .line 320
    .local v0, app:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    invoke-virtual {v0}, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    .end local v0           #app:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    :cond_0
    const-string v4, "|"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, value:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 324
    iput-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationList:Ljava/lang/String;

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse_custom_values"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 328
    return-void
.end method

.method private setCustomEnabled()V
    .locals 5

    .prologue
    .line 256
    iget-boolean v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 259
    .local v1, enabled:Ljava/lang/Boolean;
    iget-boolean v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 261
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 266
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "applications_list"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 267
    .local v0, appList:Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 269
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    .line 271
    :cond_1
    return-void

    .line 256
    .end local v0           #appList:Landroid/preference/PreferenceGroup;
    .end local v1           #enabled:Ljava/lang/Boolean;
    .end local v2           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v2, 0x7f06005f

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->addPreferencesFromResource(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x1060063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 119
    const v2, 0x10e001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 121
    const v2, 0x10e001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mInstalledApps:Ljava/util/List;

    .line 129
    new-instance v2, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iget-object v5, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mInstalledApps:Ljava/util/List;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;-><init>(Lcom/android/settings/notificationlight/NotificationLightSettings;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mAppAdapter:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    .line 130
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mAppAdapter:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    invoke-virtual {v2}, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->update()V

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplications:Ljava/util/Map;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoiceCapable:Z

    .line 138
    invoke-virtual {p0, v3}, Lcom/android/settings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    .line 139
    return-void

    :cond_0
    move v2, v4

    .line 135
    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 440
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 462
    const/4 v1, 0x0

    .line 464
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 444
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 445
    .local v2, list:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mAppAdapter:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 447
    const v3, 0x7f0c0857

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 451
    .restart local v1       #dialog:Landroid/app/Dialog;
    new-instance v3, Lcom/android/settings/notificationlight/NotificationLightSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/notificationlight/NotificationLightSettings$2;-><init>(Lcom/android/settings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 419
    iput-object p1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    .line 420
    iget-object v0, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c0858

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 423
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, tView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 376
    const v2, 0x7f0c0847

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 377
    const v2, 0x7f0c0848

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 378
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 379
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/notificationlight/NotificationLightSettings$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/notificationlight/NotificationLightSettings$1;-><init>(Lcom/android/settings/notificationlight/NotificationLightSettings;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 388
    const/4 v2, 0x1

    .line 391
    .end local v1           #tView:Landroid/widget/TextView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 432
    :goto_0
    return v0

    .line 429
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->showDialog(I)V

    .line 430
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 395
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, key:Ljava/lang/String;
    const-string v4, "pulse_enabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse"

    iget-boolean v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    iget-boolean v4, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 402
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 403
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->setCustomEnabled()V

    .line 414
    :goto_0
    return v3

    .line 404
    .restart local p2
    :cond_1
    const-string v4, "custom_enabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 405
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse_custom_enable"

    iget-boolean v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    if-eqz v6, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->setCustomEnabled()V

    goto :goto_0

    .restart local p2
    :cond_3
    move-object v1, p1

    .line 410
    check-cast v1, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 411
    .local v1, tPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v1}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getOnValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getOffValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/settings/notificationlight/NotificationLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshCustomApplications()V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->setCustomEnabled()V

    .line 147
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .parameter "application"
    .parameter "color"
    .parameter "timeon"
    .parameter "timeoff"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 341
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    const-string v2, "notification_light_pulse_default_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    const-string v2, "notification_light_pulse_default_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    const-string v2, "notification_light_pulse_default_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string v2, "missed_call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    const-string v2, "notification_light_pulse_call_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    const-string v2, "notification_light_pulse_call_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    const-string v2, "notification_light_pulse_call_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 353
    :cond_2
    const-string v2, "voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 354
    const-string v2, "notification_light_pulse_vmail_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    const-string v2, "notification_light_pulse_vmail_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    const-string v2, "notification_light_pulse_vmail_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 362
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplications:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;

    .line 363
    .local v0, app:Lcom/android/settings/notificationlight/NotificationLightSettings$Application;
    if-eqz v0, :cond_0

    .line 364
    iput-object p2, v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->color:Ljava/lang/Integer;

    .line 365
    iput-object p3, v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->timeon:Ljava/lang/Integer;

    .line 366
    iput-object p4, v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Application;->timeoff:Ljava/lang/Integer;

    .line 367
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->saveApplicationList(Z)V

    goto :goto_0
.end method
