.class Lcom/lewa/spm/activity/IntelliPreferenceFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "IntelliPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/spm/activity/IntelliPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mBatteryLevel:I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "spm_time_setting_save"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, result_code:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v1, v1, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSetTime:Landroid/preference/Preference;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
