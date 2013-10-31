.class Lcom/android/settings/notificationlight/ApplicationLightPreference$2;
.super Ljava/lang/Object;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notificationlight/ApplicationLightPreference;->editPreferenceValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notificationlight/ApplicationLightPreference;

.field final synthetic val$d:Lcom/android/settings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;Lcom/android/settings/notificationlight/LightSettingsDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;->this$0:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    iput-object p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;->val$d:Lcom/android/settings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;->val$d:Lcom/android/settings/notificationlight/LightSettingsDialog;

    invoke-virtual {v2}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v1

    .line 217
    .local v1, onTime:I
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;->val$d:Lcom/android/settings/notificationlight/LightSettingsDialog;

    invoke-virtual {v2}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v0

    .line 219
    .local v0, offTime:I
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;->this$0:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;->val$d:Lcom/android/settings/notificationlight/LightSettingsDialog;

    invoke-virtual {v3}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v3

    const/high16 v4, -0x100

    sub-int/2addr v3, v4

    #calls: Lcom/android/settings/notificationlight/ApplicationLightPreference;->showTestDialog(III)V
    invoke-static {v2, v3, v1, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->access$500(Lcom/android/settings/notificationlight/ApplicationLightPreference;III)V

    .line 220
    return-void
.end method
