.class Lcom/android/server/am/ActivityManagerService$Injector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isPIMProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .parameter "app"

    .prologue
    .line 185
    const-string v0, "android.process.acore"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static saveThemeResourceLocked(Landroid/content/res/CustomTheme;Z)V
    .locals 2
    .parameter "t"
    .parameter "isDiff"

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    const-string v0, "persist.sys.themeId"

    invoke-virtual {p0}, Landroid/content/res/CustomTheme;->getThemeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "persist.sys.themePackageName"

    invoke-virtual {p0}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method static setThemeResource(Lcom/android/server/am/ActivityManagerService;Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "service"
    .parameter "values"

    .prologue
    .line 197
    iget-object v0, p1, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p1, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    iget-object v0, p1, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-virtual {v0, v2}, Landroid/content/res/CustomTheme;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/am/ActivityManagerService$Injector;->saveThemeResourceLocked(Landroid/content/res/CustomTheme;Z)V

    .line 201
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->fontChanged:I

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "persist.sys.font"

    iget v1, p1, Landroid/content/res/Configuration;->fontChanged:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    return-void

    .line 198
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
