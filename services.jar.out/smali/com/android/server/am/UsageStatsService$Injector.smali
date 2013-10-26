.class Lcom/android/server/am/UsageStatsService$Injector;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static observerAppUsage(ZLcom/android/server/am/UsageStatsService;)V
    .locals 6
    .parameter "samePackage"
    .parameter "service"

    .prologue
    .line 84
    iget-object v0, p1, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/UsageStatsService;->mPkgStartTime:J

    .line 87
    :cond_0
    if-nez p0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/UsageStatsService;->mPkgStartTime:J

    sub-long v4, v0, v2

    .line 89
    .local v4, useTime:J
    const-string v0, "UsageStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##########pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/am/UsageStatsService;->mPkgStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " useTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-boolean v0, Lcom/android/server/am/UsageStatsService;->bInit:Z

    if-nez v0, :cond_1

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/UsageStatsService;->bInit:Z

    .line 93
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/UsageStatsService;->mPkgStartTime:J

    invoke-static/range {v0 .. v5}, Llewa/bi/BIAgent;->onAppUsage(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/UsageStatsService;->mPkgStartTime:J

    .line 96
    .end local v4           #useTime:J
    :cond_2
    return-void
.end method
