.class Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;
.super Ljava/lang/Object;
.source "IntelliPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/spm/activity/IntelliPreferenceFragment;->showIfEnterDialog()V
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
    .line 344
    iput-object p1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 349
    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-virtual {v4}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-virtual {v5}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 350
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 351
    .local v0, calling:Z
    :goto_0
    if-eq v0, v3, :cond_0

    .line 352
    new-instance v1, Lcom/lewa/spm/service/ExecuteSmartMode;

    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-virtual {v4}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    invoke-virtual {v1}, Lcom/lewa/spm/service/ExecuteSmartMode;->onCreate()V

    .line 354
    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v5, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v5, v5, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->start_time:Ljava/lang/String;

    iget-object v6, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v6, v6, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->end_time:Ljava/lang/String;

    #calls: Lcom/lewa/spm/activity/IntelliPreferenceFragment;->setAlarm(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->access$100(Lcom/lewa/spm/activity/IntelliPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .end local v1           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    :cond_0
    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$6;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v4, v4, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "enteryintilligentmodeontime"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 360
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 361
    return-void

    .line 350
    .end local v0           #calling:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
