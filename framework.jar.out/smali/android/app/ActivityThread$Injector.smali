.class Landroid/app/ActivityThread$Injector;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static FreeCanvasCaches(I)V
    .locals 2
    .parameter "configDiff"

    .prologue
    .line 286
    const/high16 v1, 0x8

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 287
    .local v0, hasFontConfigChange:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 290
    :cond_0
    return-void

    .line 286
    .end local v0           #hasFontConfigChange:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;ILandroid/content/res/Resources;Landroid/content/res/CompatibilityInfo;Landroid/util/DisplayMetrics;)V
    .locals 3
    .parameter "config"
    .parameter "changes"
    .parameter "r"
    .parameter "compat"
    .parameter "dm"

    .prologue
    .line 271
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 272
    .local v1, themeChanged:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 274
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->hasThemeSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-static {v0}, Landroid/app/ActivityThread$Injector;->detachThemeAssets(Landroid/content/res/AssetManager;)V

    .line 276
    iget-object v2, p0, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-virtual {v2}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p0, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-static {v0, v2}, Landroid/app/ActivityThread$Injector;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/CustomTheme;)Z

    .line 281
    .end local v0           #am:Landroid/content/res/AssetManager;
    :cond_0
    invoke-virtual {p2, p0, p4, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 282
    invoke-static {v1, p2}, Landroid/app/ActivityThread$Injector;->updateStringCache(ZLandroid/content/res/Resources;)V

    .line 283
    return-void

    .line 271
    .end local v1           #themeChanged:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static attachTheme(Landroid/app/ActivityThread;Landroid/content/res/AssetManager;Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .parameter "activityThread"
    .parameter "assets"
    .parameter "compInfo"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 244
    .local v0, config:Landroid/content/res/Configuration;
    iget-boolean v1, p2, Landroid/content/res/CompatibilityInfo;->isThemeable:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 245
    iget-object v1, v0, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-static {v1}, Landroid/content/res/CustomTheme;->getBootTheme(Landroid/content/Context;)Landroid/content/res/CustomTheme;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    .line 249
    :cond_0
    iget-object v1, v0, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-virtual {v1}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    iget-object v1, v0, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-static {p1, v1}, Landroid/app/ActivityThread$Injector;->attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/CustomTheme;)Z

    .line 254
    :cond_1
    return-void
.end method

.method static attachThemeAssets(Landroid/content/res/AssetManager;Landroid/content/res/CustomTheme;)Z
    .locals 7
    .parameter "assets"
    .parameter "theme"

    .prologue
    const/4 v6, 0x0

    .line 176
    invoke-static {}, Landroid/app/ActivityThread;->getAssetRedirectionManager()Lcom/android/internal/app/IAssetRedirectionManager;

    move-result-object v1

    .line 177
    .local v1, rm:Lcom/android/internal/app/IAssetRedirectionManager;
    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v6

    .line 180
    :cond_1
    const/4 v0, 0x0

    .line 182
    .local v0, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->themeInfos:[Landroid/content/pm/ThemeInfo;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static detachThemeAssets(Landroid/content/res/AssetManager;)V
    .locals 3
    .parameter "assets"

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getThemePackageName()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, themePackageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getThemeCookie()I

    move-result v0

    .line 260
    .local v0, themeCookie:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, v1, v0}, Landroid/content/res/AssetManager;->detachThemePath(Ljava/lang/String;I)Z

    .line 263
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->setThemePackageName(Ljava/lang/String;)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->setThemeCookie(I)V

    .line 265
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->clearRedirections()V

    .line 267
    :cond_0
    return-void
.end method

.method static refreashResources(Ljava/util/ArrayList;II)Landroid/content/ComponentCallbacks2;
    .locals 3
    .parameter
    .parameter "i"
    .parameter "diff"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks2;",
            ">;II)",
            "Landroid/content/ComponentCallbacks2;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentCallbacks2;

    .line 316
    .local v0, cb:Landroid/content/ComponentCallbacks2;
    const v2, 0x8000

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    .line 317
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 318
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 319
    .local v1, context:Landroid/content/Context;
    instance-of v2, v1, Landroid/app/ContextImpl;

    if-eqz v2, :cond_0

    .line 320
    check-cast v1, Landroid/app/ContextImpl;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/ContextImpl;->refreshResourcesIfNecessary()V

    .line 324
    :cond_0
    return-object v0
.end method

.method static sendFailureBroadcast(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/Exception;)V
    .locals 5
    .parameter "activityThread"
    .parameter "r"
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 299
    instance-of v3, p2, Landroid/view/InflateException;

    if-nez v3, :cond_0

    instance-of v3, p2, Landroid/content/res/Resources$NotFoundException;

    if-eqz v3, :cond_3

    .line 300
    :cond_0
    const-string v3, "ActivityThread"

    const-string v4, "Failed to inflate"

    invoke-static {v3, v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, pkg:Ljava/lang/String;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lewa.intent.action.APP_LAUNCH_FAILURE"

    if-eqz v1, :cond_2

    const-string/jumbo v4, "package"

    invoke-static {v4, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_2
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 307
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ContextImpl;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pkg:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method static updateStringCache(ZLandroid/content/res/Resources;)V
    .locals 0
    .parameter "themeChanged"
    .parameter "r"

    .prologue
    .line 293
    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/content/res/Resources;->updateStringCache()V

    .line 296
    :cond_0
    return-void
.end method
