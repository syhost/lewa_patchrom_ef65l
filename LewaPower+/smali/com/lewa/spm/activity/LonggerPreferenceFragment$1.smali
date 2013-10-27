.class Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LonggerPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/spm/activity/LonggerPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 143
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    invoke-virtual {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    new-instance v9, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    invoke-direct {v9, p1}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, action:Ljava/lang/String;
    const-string v8, "spm_excute_finish_action"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 150
    const-string v8, "spm_excute_finish_name"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 152
    .local v2, check:Z
    const-string v8, "long_s_t_d"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, diff:Ljava/lang/String;
    const-string v8, "TIME_DIFF_LONG"

    const-wide/16 v9, 0x0

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 154
    .local v6, diffLong:J
    if-eqz v4, :cond_3

    .line 155
    sget-object v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    if-nez v8, :cond_2

    .line 156
    const/4 v8, 0x1

    sput-boolean v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->diffTimeChangeFlag:Z

    .line 157
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    sput-object v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    .line 158
    new-instance v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    iget-object v9, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    invoke-direct {v8, v9}, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;-><init>(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V

    sput-object v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    .line 159
    sget-object v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    sget-object v9, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 161
    :cond_2
    sget v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    if-nez v8, :cond_4

    .line 162
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mLifeDiffView:Landroid/widget/TextView;

    const v9, -0xff97c8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryRmainView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    invoke-static {v6, v7}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$002(J)J

    .line 182
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    #calls: Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showRemainingTime()V
    invoke-static {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$100(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V

    .line 183
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mLifeDiffView:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->modeLongCP:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 185
    :cond_4
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    sget v9, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    #calls: Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showChargingTime(I)V
    invoke-static {v8, v9}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$200(Lcom/lewa/spm/activity/LonggerPreferenceFragment;I)V

    goto :goto_1

    .line 191
    .end local v2           #check:Z
    .end local v4           #diff:Ljava/lang/String;
    .end local v6           #diffLong:J
    :cond_5
    const-string v8, "spm_dev_switch_finish_action"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 193
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->modeLongCP:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 194
    :cond_6
    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 195
    const/4 v8, 0x0

    sput-boolean v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingFull:Z

    .line 196
    const/4 v8, 0x1

    sput-boolean v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargePlugged:Z

    .line 197
    const/4 v8, 0x1

    sput-boolean v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargeIgnoreFirst:Z

    goto/16 :goto_0

    .line 199
    :cond_7
    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 200
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$302(Ljava/util/Date;)Ljava/util/Date;

    .line 201
    const/4 v8, 0x0

    sput-boolean v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargeIgnoreFirst:Z

    .line 202
    const/4 v8, 0x0

    sput-boolean v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingFull:Z

    .line 203
    const/4 v8, 0x0

    sput-boolean v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mChargePlugged:Z

    .line 204
    const/4 v8, -0x1

    sput v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mPluggType:I

    .line 206
    const/4 v8, 0x3

    sput v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBattaryStatus:I

    .line 207
    const/4 v8, 0x0

    sput v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    .line 208
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v9, "com.lewa.spm_preferences"

    const-string v10, "power_plugged_type"

    sget v11, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v9, "com.lewa.spm_preferences"

    const-string v10, "charge_status"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    #calls: Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showRemainingTime()V
    invoke-static {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$100(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V

    goto/16 :goto_0

    .line 216
    :cond_8
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 218
    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    .line 220
    const-string v8, "status"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBattaryStatus:I

    .line 223
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v9, "com.lewa.spm_preferences"

    const-string v10, "level"

    sget v11, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v9, "com.lewa.spm_preferences"

    const-string v10, "charge_status"

    sget v11, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBattaryStatus:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    const-string v8, "plugged"

    sget v9, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mPluggType:I

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mPluggType:I

    .line 244
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    sget v9, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mPluggType:I

    #calls: Lcom/lewa/spm/activity/LonggerPreferenceFragment;->getChargingType(I)I
    invoke-static {v8, v9}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$400(Lcom/lewa/spm/activity/LonggerPreferenceFragment;I)I

    move-result v8

    sput v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    .line 245
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v9, "com.lewa.spm_preferences"

    const-string v10, "power_plugged_type"

    sget v11, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    const-string v8, "batteryInfo"

    invoke-static {}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$000()J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$002(J)J

    .line 265
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v9, "com.lewa.spm_preferences"

    const-string v10, "application_inited"

    invoke-virtual {v8, v9, v10}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 267
    .local v1, appInited:Z
    if-nez v1, :cond_9

    .line 268
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    invoke-virtual {v8}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveChargingHistory()V

    .line 270
    :cond_9
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v8, v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryPercentInfoView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/lewa/spm/util/Constants;->INTEL_POWER_VALUE_SIGN:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    sget v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    if-nez v8, :cond_a

    .line 274
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    #calls: Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showRemainingTime()V
    invoke-static {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$100(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V

    goto/16 :goto_0

    .line 277
    :cond_a
    sget v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBattaryStatus:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_c

    .line 278
    const/4 v8, 0x1

    sput-boolean v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingFull:Z

    .line 284
    :goto_2
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    sget v9, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    #calls: Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showChargingTime(I)V
    invoke-static {v8, v9}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$200(Lcom/lewa/spm/activity/LonggerPreferenceFragment;I)V

    .line 287
    invoke-static {}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$500()I

    move-result v8

    sget v9, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    if-ne v8, v9, :cond_b

    invoke-static {}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$600()I

    move-result v8

    sget v9, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBattaryStatus:I

    if-eq v8, v9, :cond_0

    sget v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBattaryStatus:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_0

    .line 291
    :cond_b
    invoke-static {}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$300()Ljava/util/Date;

    move-result-object v8

    if-nez v8, :cond_d

    .line 292
    sget v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    invoke-static {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$502(I)I

    .line 293
    sget v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBattaryStatus:I

    invoke-static {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$602(I)I

    .line 294
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$302(Ljava/util/Date;)Ljava/util/Date;

    goto/16 :goto_0

    .line 280
    :cond_c
    const/4 v8, 0x0

    sput-boolean v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingFull:Z

    goto :goto_2

    .line 297
    :cond_d
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 298
    .local v3, currDate:Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$300()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 299
    .local v4, diff:J
    iget-object v8, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$1;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    sget v9, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    invoke-static {}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$500()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/lewa/spm/activity/LonggerPreferenceFragment;->updateDateBasedOnChargingMode(ILjava/lang/String;J)V
    invoke-static {v8, v9, v10, v4, v5}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$700(Lcom/lewa/spm/activity/LonggerPreferenceFragment;ILjava/lang/String;J)V

    .line 302
    invoke-static {v3}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$302(Ljava/util/Date;)Ljava/util/Date;

    .line 303
    sget v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    invoke-static {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$502(I)I

    .line 304
    sget v8, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBattaryStatus:I

    invoke-static {v8}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$602(I)I

    goto/16 :goto_0
.end method
