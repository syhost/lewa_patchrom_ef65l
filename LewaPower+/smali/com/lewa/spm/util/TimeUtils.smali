.class public Lcom/lewa/spm/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcLifeChangeDiff(Landroid/content/Context;DDI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "p1"
    .parameter "p2"
    .parameter "level"

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 80
    invoke-static {p0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4, v5}, Lcom/lewa/spm/util/CalcUtils;->getHoursFromTime(DD)I

    move-result v0

    invoke-static {p0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v1

    invoke-virtual {v1, p3, p4, v4, v5}, Lcom/lewa/spm/util/CalcUtils;->getHoursFromTime(DD)I

    move-result v1

    invoke-static {p0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v4, v5}, Lcom/lewa/spm/util/CalcUtils;->getMinutesFromString(DD)I

    move-result v2

    invoke-static {p0}, Lcom/lewa/spm/util/CalcUtils;->getInstance(Landroid/content/Context;)Lcom/lewa/spm/util/CalcUtils;

    move-result-object v3

    invoke-virtual {v3, p3, p4, v4, v5}, Lcom/lewa/spm/util/CalcUtils;->getMinutesFromString(DD)I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/lewa/spm/util/TimeUtils;->toTimeFormatDif(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 153
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 154
    .local v0, currentDate:Ljava/util/Date;
    const/4 v1, 0x0

    .line 155
    .local v1, currentTime:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 156
    .local v2, hour:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    .line 157
    .local v3, minute:I
    if-ge v2, v6, :cond_0

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    :goto_0
    if-ge v3, v6, :cond_1

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lewa/spm/util/Constants;->INTEL_TIME_SIGN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_1
    return-object v1

    .line 160
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lewa/spm/util/Constants;->INTEL_TIME_SIGN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static toTimeFormatDif(Landroid/content/Context;IIII)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "hour1"
    .parameter "hour2"
    .parameter "minute1"
    .parameter "minute2"

    .prologue
    const v5, 0x7f070016

    const v4, 0x7f070017

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, hourDif:I
    const/4 v1, 0x0

    .line 99
    .local v1, minDif:I
    sub-int v0, p1, p2

    .line 100
    if-nez v0, :cond_1

    .line 101
    sub-int v1, p3, p4

    .line 117
    :cond_0
    :goto_0
    if-lez v0, :cond_5

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_1
    return-object v2

    .line 102
    :cond_1
    if-lez v0, :cond_3

    .line 103
    if-ge p3, p4, :cond_2

    .line 104
    rsub-int/lit8 v2, p4, 0x3c

    add-int v1, v2, p3

    .line 105
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 106
    :cond_2
    if-le p3, p4, :cond_0

    .line 107
    sub-int v1, p3, p3

    goto :goto_0

    .line 109
    :cond_3
    if-gez v0, :cond_0

    .line 110
    if-ge p3, p4, :cond_4

    .line 111
    sub-int v1, p4, p3

    goto :goto_0

    .line 112
    :cond_4
    if-le p3, p4, :cond_0

    .line 113
    rsub-int/lit8 v2, p3, 0x3c

    add-int v1, v2, p4

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_5
    if-gez v0, :cond_6

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 121
    :cond_6
    if-nez v0, :cond_9

    .line 122
    if-lez v1, :cond_7

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 124
    :cond_7
    if-gez v1, :cond_8

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 127
    :cond_8
    const-string v2, "0"

    goto :goto_1

    .line 130
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
