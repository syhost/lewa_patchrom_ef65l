.class Lcom/android/server/NotificationManagerService$Injector;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkBlockCall(Ljava/lang/String;Lcom/android/server/NotificationManagerService;)Z
    .locals 2
    .parameter "pkg"
    .parameter "service"

    .prologue
    .line 136
    iget-object v1, p1, Lcom/android/server/NotificationManagerService;->mBlacklist:Ljava/util/Map;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p1, Lcom/android/server/NotificationManagerService;->mBlacklist:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    monitor-exit v1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isInCall(Lcom/android/server/NotificationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "service"
    .parameter "pkg"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    if-nez v0, :cond_0

    const-string v0, "com.lewa.PIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setDelay(Lcom/android/server/NotificationManagerService$ToastRecord;ZJ)V
    .locals 3
    .parameter "r"
    .parameter "immediate"
    .parameter "delay"

    .prologue
    const/16 v2, 0x3a98

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-wide/16 p2, 0x0

    .line 133
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 123
    const-wide/16 p2, 0xdac

    goto :goto_0

    .line 124
    :cond_1
    iget v0, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    if-nez v0, :cond_2

    .line 125
    const-wide/16 p2, 0x7d0

    goto :goto_0

    .line 126
    :cond_2
    iget v0, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    if-le v0, v2, :cond_3

    .line 127
    const-wide/16 p2, 0x3a98

    goto :goto_0

    .line 128
    :cond_3
    iget v0, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    if-gt v0, v2, :cond_4

    .line 129
    iget v0, p0, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    int-to-long p2, v0

    goto :goto_0

    .line 131
    :cond_4
    const-wide/16 p2, 0x7d0

    goto :goto_0
.end method
