.class public Lcom/lewa/spm/mode/PowerSavingMode;
.super Ljava/lang/Object;
.source "PowerSavingMode.java"


# static fields
.field public static isExcuting:Z


# instance fields
.field mContext:Landroid/content/Context;

.field mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lewa/spm/mode/PowerSavingMode;->isExcuting:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "ctx"
    .parameter "mode"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/lewa/spm/mode/PowerSavingMode;->mContext:Landroid/content/Context;

    .line 57
    iput p2, p0, Lcom/lewa/spm/mode/PowerSavingMode;->mMode:I

    .line 58
    return-void
.end method

.method public static isInTimeInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "startTime"
    .parameter "endTime"
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 84
    invoke-virtual {p0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "23:59"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    const-string v0, "00:00"

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    invoke-virtual {p2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    .line 93
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isShowOrNotByTimeCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 75
    invoke-static {}, Lcom/lewa/spm/util/TimeUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, currentTime:Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/lewa/spm/mode/PowerSavingMode;->isInTimeInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/lewa/spm/control/Executer;

    iget-object v1, p0, Lcom/lewa/spm/mode/PowerSavingMode;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/lewa/spm/mode/PowerSavingMode;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Executer;-><init>(Landroid/content/Context;I)V

    .line 109
    .local v0, execute:Lcom/lewa/spm/control/Executer;
    iget v1, p0, Lcom/lewa/spm/mode/PowerSavingMode;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-virtual {v0}, Lcom/lewa/spm/control/Executer;->executSavingPower()V

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {v0}, Lcom/lewa/spm/control/Executer;->executSavingPower()V

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-virtual {v0}, Lcom/lewa/spm/control/Executer;->entryUserMode()V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public executeDiff()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/lewa/spm/control/Executer;

    iget-object v1, p0, Lcom/lewa/spm/mode/PowerSavingMode;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/lewa/spm/mode/PowerSavingMode;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/lewa/spm/control/Executer;-><init>(Landroid/content/Context;I)V

    .line 126
    .local v0, execute:Lcom/lewa/spm/control/Executer;
    invoke-virtual {v0}, Lcom/lewa/spm/control/Executer;->executSavingPowerDiff()V

    .line 128
    return-void
.end method
