.class Lcom/android/settings/notificationlight/NotificationLightSettings$1;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notificationlight/NotificationLightSettings;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

.field final synthetic val$tView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationlight/NotificationLightSettings;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$1;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    iput-object p2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$1;->val$tView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$1;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$1;->val$tView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/notificationlight/NotificationLightSettings;->removeCustomApplication(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->access$000(Lcom/android/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V

    .line 384
    return-void
.end method
