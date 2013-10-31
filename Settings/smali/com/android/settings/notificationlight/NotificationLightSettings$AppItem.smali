.class Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notificationlight/NotificationLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationlight/NotificationLightSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;->this$0:Lcom/android/settings/notificationlight/NotificationLightSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 531
    check-cast p1, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;->compareTo(Lcom/android/settings/notificationlight/NotificationLightSettings$AppItem;)I

    move-result v0

    return v0
.end method
