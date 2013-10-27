.class public Lcom/lewa/spm/control/Brightness;
.super Lcom/lewa/spm/control/SelectControl;
.source "Brightness.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "mContext"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/lewa/spm/control/SelectControl;-><init>(ILandroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v2, 0x11

    .line 26
    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v2, :cond_2

    .line 33
    :try_start_1
    const-class v1, Landroid/os/IPowerManager;

    const-string v2, "setBacklightBrightness"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/lewa/spm/control/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    :cond_1
    :goto_1
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    goto :goto_1

    .line 40
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v1, v2, :cond_3

    .line 44
    :try_start_3
    const-class v1, Landroid/os/IPowerManager;

    const-string v2, "setTemporaryScreenBrightnessSettingOverride"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 46
    :catch_2
    move-exception v0

    .line 48
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/UnknownError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method public change(Z)V
    .locals 4
    .parameter "closeOrOpen"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/lewa/spm/control/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    :goto_0
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/lewa/spm/control/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 76
    return-void

    .line 70
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/lewa/spm/control/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public getAdjustValue()I
    .locals 4

    .prologue
    .line 92
    const/16 v1, 0x14

    .line 94
    .local v1, nowBrightnessValue:I
    :try_start_0
    iget-object v2, p0, Lcom/lewa/spm/control/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isOnOff()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, automicBrightness:Z
    :try_start_0
    iget-object v3, p0, Lcom/lewa/spm/control/Brightness;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    move v0, v2

    .line 87
    :goto_0
    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
