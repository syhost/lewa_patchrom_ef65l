.class public Lcom/lewa/spm/mode/PowSavingAlarm;
.super Ljava/lang/Object;
.source "PowSavingAlarm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelEndAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "mContext"

    .prologue
    .line 97
    const-string v3, "tt"

    const-string v4, ":) cancel bed time end alarm."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lewa.spm_action_end_alarm"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, endIntent:Landroid/content/Intent;
    const-string v3, "end_alarm"

    const-string v4, "end_alarm"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 103
    .local v2, endPendingIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 105
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 106
    return-void
.end method

.method public static cancelStartAlarm(Landroid/content/Context;)V
    .locals 6
    .parameter "mContext"

    .prologue
    const/4 v5, 0x0

    .line 110
    const-string v3, "tt"

    const-string v4, ":) cancel bed time start alarm."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lewa.spm_action_start_alarm"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, startIntent:Landroid/content/Intent;
    const-string v3, "start_alarm"

    const-string v4, "start_alarm"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 116
    .local v2, startPendingIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 118
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 119
    return-void
.end method

.method private static getCalendarString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 22
    const-string v1, "%1$04d/%2$02d/%3$02d %4$02d:%5$02d"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, message:Ljava/lang/String;
    return-object v0
.end method

.method public static setEndTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "mContext"
    .parameter "endTime"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 62
    invoke-static {}, Lcom/lewa/spm/util/TimeUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, currentTime:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 64
    .local v7, calEnd:Ljava/util/Calendar;
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 65
    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 66
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 75
    :goto_0
    const/16 v2, 0xb

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 77
    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 78
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 80
    const-string v2, "tt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":) set bed time end alarm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Lcom/lewa/spm/mode/PowSavingAlarm;->getCalendarString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v9, Landroid/content/Intent;

    const-string v2, "com.lewa.spm_action_end_alarm"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v9, endIntent:Landroid/content/Intent;
    const-string v2, "end_alarm"

    const-string v3, "end_alarm"

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-static {p0, v5, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 87
    .local v6, endPendingIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 89
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 93
    return-void

    .line 68
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v6           #endPendingIntent:Landroid/app/PendingIntent;
    .end local v9           #endIntent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {v8, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 69
    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v4, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v4, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static setStartTimeAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "ctx"
    .parameter "startTime"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 31
    invoke-static {}, Lcom/lewa/spm/util/TimeUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, currentTime:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 33
    .local v7, c:Ljava/util/Calendar;
    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 34
    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 35
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 42
    :goto_0
    const/16 v2, 0xb

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 43
    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 44
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 46
    const-string v2, "tt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":) set bed time start alarm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Lcom/lewa/spm/mode/PowSavingAlarm;->getCalendarString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v9, Landroid/content/Intent;

    const-string v2, "com.lewa.spm_action_start_alarm"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v9, intent:Landroid/content/Intent;
    const-string v2, "start_alarm"

    const-string v3, "start_alarm"

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-static {p0, v1, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 52
    .local v6, startPendingIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 54
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 56
    return-void

    .line 37
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v6           #startPendingIntent:Landroid/app/PendingIntent;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {v8, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 38
    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v4, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v4, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method
