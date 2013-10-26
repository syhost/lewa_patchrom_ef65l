.class Landroid/app/ApplicationPackageManager$Injector;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static registerUmengAnalytic(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 1
    .parameter "packageName"
    .parameter "pi"

    .prologue
    .line 73
    if-eqz p0, :cond_2

    iget-boolean v0, p1, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-nez v0, :cond_0

    const-string v0, "com.lewa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    :cond_1
    const-string/jumbo v0, "ro.lewa.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 77
    :cond_2
    return-void
.end method
