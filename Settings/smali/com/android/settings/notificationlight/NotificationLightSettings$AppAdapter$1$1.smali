.class Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;

.field final synthetic val$item:Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;->this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;

    iput-object p2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;->val$item:Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;->this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->mInstalledApps:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;->val$item:Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 567
    .local v0, index:I
    if-gez v0, :cond_0

    .line 568
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 569
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;->this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->mInstalledApps:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;->val$item:Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1$1;->this$2:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;

    iget-object v1, v1, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter$1;->this$1:Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;

    invoke-virtual {v1}, Lcom/android/settings/notificationlight/NotificationLightSettings$AppAdapter;->notifyDataSetChanged()V

    .line 572
    return-void
.end method
