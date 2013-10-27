.class public Lcom/lewa/spm/activity/TimeSetting;
.super Landroid/preference/PreferenceActivity;
.source "TimeSetting.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field classfy:I

.field end_time:Ljava/lang/String;

.field hour:I

.field mBedTimeEndTime:Landroid/preference/Preference;

.field mBedTimeStartTime:Landroid/preference/Preference;

.field minute:I

.field saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

.field start_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/spm/activity/TimeSetting;->classfy:I

    .line 47
    iput-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lewa/spm/activity/TimeSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lewa/spm/activity/TimeSetting;->excuteAndSetAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/lewa/spm/activity/TimeSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lewa/spm/activity/TimeSetting;->notifyChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/lewa/spm/activity/TimeSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lewa/spm/activity/TimeSetting;->exitAndSetAlarm()V

    return-void
.end method

.method private excuteAndSetAlarm()V
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/lewa/spm/service/ExecuteSmartMode;

    invoke-direct {v0, p0}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    invoke-virtual {v0}, Lcom/lewa/spm/service/ExecuteSmartMode;->onCreate()V

    .line 345
    invoke-direct {p0}, Lcom/lewa/spm/activity/TimeSetting;->notifyChange()V

    .line 346
    return-void
.end method

.method private exitAndSetAlarm()V
    .locals 2

    .prologue
    .line 349
    new-instance v0, Lcom/lewa/spm/service/ExecuteSmartMode;

    invoke-direct {v0, p0}, Lcom/lewa/spm/service/ExecuteSmartMode;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, exe:Lcom/lewa/spm/service/ExecuteSmartMode;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lewa/spm/service/ExecuteSmartMode;->onDestroy(Z)V

    .line 351
    invoke-direct {p0}, Lcom/lewa/spm/activity/TimeSetting;->notifyChange()V

    .line 352
    return-void
.end method

.method private fullTimeShow(I)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 226
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ifIsInTheTimeshowDialog(Z)V
    .locals 3
    .parameter "inInterval"

    .prologue
    .line 291
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 293
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 295
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lewa/spm/activity/TimeSetting$1;

    invoke-direct {v2, p0}, Lcom/lewa/spm/activity/TimeSetting$1;-><init>(Lcom/lewa/spm/activity/TimeSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lewa/spm/activity/TimeSetting$2;

    invoke-direct {v2, p0}, Lcom/lewa/spm/activity/TimeSetting$2;-><init>(Lcom/lewa/spm/activity/TimeSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 340
    return-void

    .line 316
    :cond_0
    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 317
    const v1, 0x7f07006c

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 318
    const v1, 0x7f07004b

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lewa/spm/activity/TimeSetting$3;

    invoke-direct {v2, p0}, Lcom/lewa/spm/activity/TimeSetting$3;-><init>(Lcom/lewa/spm/activity/TimeSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 328
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lewa/spm/activity/TimeSetting$4;

    invoke-direct {v2, p0}, Lcom/lewa/spm/activity/TimeSetting$4;-><init>(Lcom/lewa/spm/activity/TimeSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private notifyChange()V
    .locals 5

    .prologue
    .line 355
    invoke-static {p0}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelStartAlarm(Landroid/content/Context;)V

    .line 356
    iget-object v2, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/lewa/spm/mode/PowSavingAlarm;->setStartTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    invoke-static {p0}, Lcom/lewa/spm/mode/PowSavingAlarm;->cancelEndAlarm(Landroid/content/Context;)V

    .line 358
    iget-object v2, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/lewa/spm/mode/PowSavingAlarm;->setEndTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    new-instance v1, Landroid/content/Intent;

    const-string v2, "spm_time_setting_save"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "result_code"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    const-string v2, "result"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 365
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->addPreferencesFromResource(I)V

    .line 54
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/lewa/spm/activity/TimeSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, bar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 57
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 59
    :cond_0
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v1, Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    invoke-direct {v1, p0}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    .line 61
    const-string v1, "start_time"

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeStartTime:Landroid/preference/Preference;

    .line 62
    const-string v1, "end_time"

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/TimeSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeEndTime:Landroid/preference/Preference;

    .line 65
    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "start_time"

    sget-object v4, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_FROM:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v2, "com.lewa.spm_preferences"

    const-string v3, "end_time"

    sget-object v4, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_TO:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeStartTime:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeEndTime:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeStartTime:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeEndTime:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 199
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 191
    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    iget v3, p0, Lcom/lewa/spm/activity/TimeSetting;->hour:I

    iget v4, p0, Lcom/lewa/spm/activity/TimeSetting;->minute:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 194
    :pswitch_1
    new-instance v0, Landroid/app/TimePickerDialog;

    iget v3, p0, Lcom/lewa/spm/activity/TimeSetting;->hour:I

    iget v4, p0, Lcom/lewa/spm/activity/TimeSetting;->minute:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 96
    const/4 v0, 0x2

    const v1, 0x7f07004f

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    const v0, 0x7f070051

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 103
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    .line 111
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v4, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 114
    :pswitch_0
    iget-object v7, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    iget-object v8, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/lewa/spm/mode/PowerSavingMode;->isShowOrNotByTimeCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 116
    .local v3, inInterval:Z
    iget-object v7, p0, Lcom/lewa/spm/activity/TimeSetting;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v8, "com.lewa.spm_preferences"

    const-string v9, "start_time"

    iget-object v10, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v7, p0, Lcom/lewa/spm/activity/TimeSetting;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v8, "com.lewa.spm_preferences"

    const-string v9, "end_time"

    iget-object v10, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v7, p0, Lcom/lewa/spm/activity/TimeSetting;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v8, "com.lewa.spm_preferences"

    const-string v9, "inttelligent_mode_checked"

    invoke-virtual {v7, v8, v9}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 124
    .local v5, isChecked:Z
    iget-object v7, p0, Lcom/lewa/spm/activity/TimeSetting;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v8, "com.lewa.spm_preferences"

    const-string v9, "mode_type_name"

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, currMOde:I
    if-nez v5, :cond_0

    .line 128
    new-instance v2, Landroid/content/Intent;

    const-string v7, "spm_time_setting_save"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, b:Landroid/os/Bundle;
    const-string v7, "result_code"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v7, "result"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/TimeSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/lewa/spm/activity/TimeSetting;->finish()V

    goto :goto_0

    .line 138
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    if-eqz v3, :cond_2

    .line 139
    if-ne v1, v6, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/lewa/spm/activity/TimeSetting;->notifyChange()V

    .line 141
    invoke-virtual {p0}, Lcom/lewa/spm/activity/TimeSetting;->finish()V

    goto/16 :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, v6}, Lcom/lewa/spm/activity/TimeSetting;->ifIsInTheTimeshowDialog(Z)V

    goto/16 :goto_0

    .line 146
    :cond_2
    if-ne v1, v6, :cond_3

    .line 147
    invoke-direct {p0, v11}, Lcom/lewa/spm/activity/TimeSetting;->ifIsInTheTimeshowDialog(Z)V

    goto/16 :goto_0

    .line 149
    :cond_3
    invoke-direct {p0}, Lcom/lewa/spm/activity/TimeSetting;->notifyChange()V

    .line 150
    invoke-virtual {p0}, Lcom/lewa/spm/activity/TimeSetting;->finish()V

    goto/16 :goto_0

    .line 155
    .end local v1           #currMOde:I
    .end local v3           #inInterval:Z
    .end local v5           #isChecked:Z
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "spm_time_setting_save"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v2       #i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v7, "result_code"

    invoke-virtual {v0, v7, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/TimeSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Lcom/lewa/spm/activity/TimeSetting;->finish()V

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "pref"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iput v2, p0, Lcom/lewa/spm/activity/TimeSetting;->classfy:I

    .line 171
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeStartTime:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lewa/spm/activity/TimeSetting;->hour:I

    .line 173
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeStartTime:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lewa/spm/activity/TimeSetting;->minute:I

    .line 175
    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/TimeSetting;->showDialog(I)V

    .line 184
    :cond_0
    :goto_0
    return v2

    .line 176
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "end_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iput v3, p0, Lcom/lewa/spm/activity/TimeSetting;->classfy:I

    .line 178
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeEndTime:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lewa/spm/activity/TimeSetting;->hour:I

    .line 180
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeEndTime:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lewa/spm/activity/TimeSetting;->minute:I

    .line 182
    invoke-virtual {p0, v3}, Lcom/lewa/spm/activity/TimeSetting;->showDialog(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "start_time"

    sget-object v3, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_FROM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->saveValue:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "end_time"

    sget-object v3, Lcom/lewa/spm/util/Constants;->INTEL_TIME_DEF_TO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeStartTime:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeEndTime:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, setTimeTemple:Ljava/lang/String;
    iput p2, p0, Lcom/lewa/spm/activity/TimeSetting;->hour:I

    .line 206
    iput p3, p0, Lcom/lewa/spm/activity/TimeSetting;->minute:I

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lewa/spm/activity/TimeSetting;->hour:I

    invoke-direct {p0, v2}, Lcom/lewa/spm/activity/TimeSetting;->fullTimeShow(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lewa/spm/util/Constants;->INTEL_TIME_SIGN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lewa/spm/activity/TimeSetting;->minute:I

    invoke-direct {p0, v2}, Lcom/lewa/spm/activity/TimeSetting;->fullTimeShow(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    iget v1, p0, Lcom/lewa/spm/activity/TimeSetting;->classfy:I

    packed-switch v1, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeStartTime:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    iput-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->start_time:Ljava/lang/String;

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v1, p0, Lcom/lewa/spm/activity/TimeSetting;->mBedTimeEndTime:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    iput-object v0, p0, Lcom/lewa/spm/activity/TimeSetting;->end_time:Ljava/lang/String;

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
