.class Lcom/android/server/LocationManagerService$Injector;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPermission(Ljava/lang/String;Lcom/android/server/LocationManagerService;)Z
    .locals 4
    .parameter "provider"
    .parameter "service"

    .prologue
    .line 2582
    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/high16 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Llewa/content/PermissionHelper;->checkPermission(Landroid/content/Context;III)Z

    move-result v0

    return v0
.end method
