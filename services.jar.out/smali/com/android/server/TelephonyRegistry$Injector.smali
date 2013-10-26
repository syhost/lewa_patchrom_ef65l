.class Lcom/android/server/TelephonyRegistry$Injector;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPermission(ILcom/android/server/TelephonyRegistry;)Z
    .locals 4
    .parameter "events"
    .parameter "telephonyRegistry"

    .prologue
    .line 62
    and-int/lit16 v0, p0, 0xec

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x40

    invoke-static {v0, v1, v2, v3}, Llewa/content/PermissionHelper;->checkPermission(Landroid/content/Context;III)Z

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 64
    :cond_0
    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_2

    .line 65
    :cond_1
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/high16 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Llewa/content/PermissionHelper;->checkPermission(Landroid/content/Context;III)Z

    move-result v0

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
