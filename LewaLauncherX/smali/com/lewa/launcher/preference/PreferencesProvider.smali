.class public final Lcom/lewa/launcher/preference/PreferencesProvider;
.super Ljava/lang/Object;
.source "PreferencesProvider.java"


# static fields
.field public static final CHANGED:Ljava/lang/String; = "prefs_changed"

.field public static final DEFAULT_SCREEN:I = 0x0

.field public static final DEFAULT_SCREEN_LAYOUT:Ljava/lang/String; = "4|4"

.field public static final LARGE_SCREEN_LAYOUT:Ljava/lang/String; = "4|5"

.field public static final MARKET_EDITION:Z = true

.field public static final MAX_SCREEN_COUNT:I = 0x64

.field public static final MIN_SCREEN_COUNT:I = 0x1

.field public static final RESET_HOTSEATS:Ljava/lang/String; = "is_reset_hotseats"

.field private static bFirstRun:Ljava/lang/Boolean;

.field private static sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellCountX(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 58
    const-string v0, "4|4"

    .line 59
    .local v0, defVal:Ljava/lang/String;
    invoke-static {p0}, Lcom/lewa/launcher/LauncherApplication;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const-string v0, "4|5"

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_screen_layout"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, values:[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 66
    :goto_0
    return v3

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public static getCellCountY(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 71
    const-string v0, "4|4"

    .line 72
    .local v0, defVal:Ljava/lang/String;
    invoke-static {p0}, Lcom/lewa/launcher/LauncherApplication;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    const-string v0, "4|5"

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_screen_layout"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, values:[Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 76
    :goto_0
    return v3

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public static getDefaultScreen(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_screen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getScreenCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "screen_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getScrollWallpaper(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallpaper_scrolling"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lcom/lewa/launcher/preference/PreferencesProvider;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 25
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/lewa/launcher/preference/PreferencesProvider;->sp:Landroid/content/SharedPreferences;

    .line 27
    :cond_0
    sget-object v0, Lcom/lewa/launcher/preference/PreferencesProvider;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getSwipeUpDown(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "action_updown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTransitionEffect(Landroid/content/Context;)Lcom/lewa/launcher/Workspace$TransitionEffect;
    .locals 4
    .parameter "context"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, def:Ljava/lang/String;
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_key_effects"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, val:Ljava/lang/String;
    invoke-static {v1}, Lcom/lewa/launcher/Workspace$TransitionEffect;->valueOf(Ljava/lang/String;)Lcom/lewa/launcher/Workspace$TransitionEffect;

    move-result-object v2

    return-object v2
.end method

.method public static isFirstRun(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 31
    sget-object v1, Lcom/lewa/launcher/preference/PreferencesProvider;->bFirstRun:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 32
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "first_run"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/lewa/launcher/preference/PreferencesProvider;->bFirstRun:Ljava/lang/Boolean;

    .line 34
    sget-object v1, Lcom/lewa/launcher/preference/PreferencesProvider;->bFirstRun:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "first_run"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    sget-object v1, Lcom/lewa/launcher/preference/PreferencesProvider;->bFirstRun:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static isSupportShake(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shake_arrange_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setDefaultScreen(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "screen"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_screen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method public static setScreenCount(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "screenCount"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/lewa/launcher/preference/PreferencesProvider;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screen_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method
