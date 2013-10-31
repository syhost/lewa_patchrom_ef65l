.class Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iput-object p2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 555
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iget-object v4, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->mInstalledApps:Ljava/util/List;

    monitor-enter v4

    .line 556
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iget-object v3, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->mInstalledApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 557
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iget-object v3, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->mInstalledAppInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 558
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;

    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iget-object v3, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    invoke-direct {v2, v3}, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;-><init>(Lcom/android/settings/notificationlight/NotificationLightSettings;)V

    .line 559
    .local v2, item:Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iget-object v3, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/notificationlight/NotificationLightSettings;->access$200(Lcom/android/settings/notificationlight/NotificationLightSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;->title:Ljava/lang/CharSequence;

    .line 560
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iget-object v3, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    #getter for: Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/notificationlight/NotificationLightSettings;->access$200(Lcom/android/settings/notificationlight/NotificationLightSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 561
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;->packageName:Ljava/lang/String;

    .line 562
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;-><init>(Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 575
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #item:Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    return-void
.end method
