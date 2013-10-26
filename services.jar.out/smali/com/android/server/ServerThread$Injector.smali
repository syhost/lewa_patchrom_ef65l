.class Lcom/android/server/ServerThread$Injector;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static registerReceivers(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lewa.intent.action.APP_LAUNCH_FAILURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "com.lewa.intent.action.APP_LAUNCH_FAILURE_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "com.lewa.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 105
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/android/server/AppsLaunchFailureReceiver;

    invoke-direct {v1}, Lcom/android/server/AppsLaunchFailureReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method static registerServices(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    :try_start_0
    const-string v1, "SystemServer"

    const-string v2, "AssetRedirectionManager Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "assetredirection"

    new-instance v2, Lcom/android/server/AssetRedirectionManagerService;

    invoke-direct {v2, p0}, Lcom/android/server/AssetRedirectionManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    :try_start_1
    const-string v1, "SystemServer"

    const-string v2, "IconManager Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "iconmanager"

    new-instance v2, Lcom/lewa/server/IconManagerService;

    invoke-direct {v2, p0}, Lcom/lewa/server/IconManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "SystemServer"

    const-string v2, "Failure starting AssetRedirectionManager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 93
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 94
    .restart local v0       #e:Ljava/lang/Throwable;
    const-string v1, "SystemServer"

    const-string v2, "Failure starting IconManager Service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
