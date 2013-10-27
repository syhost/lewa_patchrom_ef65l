.class Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;
.super Ljava/lang/Object;
.source "IntelliPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/spm/activity/IntelliPreferenceFragment;->initUI()V
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
    .line 146
    iput-object p1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 151
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v3, v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "com.lewa.spm_preferences"

    const-string v5, "enteryintilligentmodeontime"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 154
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v3, v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "com.lewa.spm_preferences"

    const-string v5, "inttelligent_mode_checked"

    invoke-virtual {v3, v4, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v8

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-virtual {v3}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-virtual {v4}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 161
    .local v2, notifyMgr:Landroid/app/NotificationManager;
    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 162
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-virtual {v3}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelStartAlarm(Landroid/content/Context;)V

    .line 163
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-virtual {v3}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelEndAlarm(Landroid/content/Context;)V

    .line 164
    new-instance v1, Lcom/lewa/spm/service/ExecuteSmartMode;

    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-virtual {v3}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 165
    .local v1, exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    invoke-virtual {v1, v7}, Lcom/lewa/spm/service/ExecuteSmartMode;->onDestroy(Z)V

    .line 166
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v3, v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "com.lewa.spm_preferences"

    const-string v5, "inttelligent_mode_checked"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 170
    .end local v1           #exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    .end local v2           #notifyMgr:Landroid/app/NotificationManager;
    :cond_2
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v3, v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "com.lewa.spm_preferences"

    const-string v5, "inttelligent_mode_checked"

    invoke-virtual {v3, v4, v5}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v3, v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "com.lewa.spm_preferences"

    const-string v5, "inttelligent_mode_checked"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 178
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v4, v4, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "start_time"

    sget-object v7, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_FROM:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->start_time:Ljava/lang/String;

    .line 182
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v4, v4, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v5, "com.lewa.spm_preferences"

    const-string v6, "end_time"

    sget-object v7, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_TO:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->end_time:Ljava/lang/String;

    .line 191
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v3, v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->start_time:Ljava/lang/String;

    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v4, v4, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->end_time:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lewa/spm/mode/PowerSavingMode;->isShowOrNotByTimeCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 193
    .local v0, bInInterval:Z
    if-eqz v0, :cond_3

    .line 194
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    #calls: Lcom/lewa/spm/activity/IntelliPreferenceFragment;->showIfEnterDialog()V
    invoke-static {v3}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->access$000(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V

    goto/16 :goto_0

    .line 196
    :cond_3
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v3, v3, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v4, "com.lewa.spm_preferences"

    const-string v5, "enteryintilligentmodeontime"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    iget-object v3, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v4, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v4, v4, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->start_time:Ljava/lang/String;

    iget-object v5, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v5, v5, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->end_time:Ljava/lang/String;

    #calls: Lcom/lewa/spm/activity/IntelliPreferenceFragment;->setAlarm(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->access$100(Lcom/lewa/spm/activity/IntelliPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
