.class Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;
.super Ljava/util/TimerTask;
.source "LonggerPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/spm/activity/LonggerPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChackChangeTask"
.end annotation


# instance fields
.field mLooper:Landroid/os/Looper;

.field final synthetic this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 724
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 697
    iget-object v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->mLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 698
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 699
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->mLooper:Landroid/os/Looper;

    .line 701
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 702
    .local v0, txtMsg:Landroid/os/Message;
    sget-boolean v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->diffTimeChangeFlag:Z

    if-eqz v1, :cond_3

    .line 703
    sget-object v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    if-eqz v1, :cond_1

    .line 704
    sget-object v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    invoke-virtual {v1}, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->quit()V

    .line 705
    sget-object v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    invoke-virtual {v1}, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->cancel()Z

    .line 706
    sput-object v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTask:Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;

    .line 708
    :cond_1
    sget-object v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 709
    sget-object v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 710
    sget-object v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 711
    sput-object v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeTimer:Ljava/util/Timer;

    .line 713
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->diffTimeChangeFlag:Z

    .line 714
    sget-object v1, Lcom/lewa/spm/util/Constants;->SPM_LIFE_DIFF_TXT_SHOW:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 715
    iget-object v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$ChackChangeTask;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v1, v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mCheckChangeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 718
    :cond_3
    return-void
.end method
