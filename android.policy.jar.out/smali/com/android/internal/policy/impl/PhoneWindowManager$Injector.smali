.class Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLewaViewLayer(II)I
    .locals 3
    .parameter "type"
    .parameter "defaultLayer"

    .prologue
    .line 207
    packed-switch p0, :pswitch_data_0

    .line 213
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown window type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local p1
    :goto_0
    return p1

    .line 209
    .restart local p1
    :pswitch_0
    const/16 p1, 0x1b

    goto :goto_0

    .line 211
    :pswitch_1
    const/16 p1, 0x1c

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0xbb5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static isCameraActive(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 183
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 187
    .local v1, activity:Landroid/app/ActivityManager;
    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 189
    .local v2, task:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.camera.CameraLauncher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 190
    .local v0, CameraTask:Z
    if-ne v0, v3, :cond_0

    .line 193
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method static isShowGlobalActionsDialog(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .locals 1
    .parameter "phoneWindowMgr"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$Injector;->isCameraActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCameraPowerShutter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
