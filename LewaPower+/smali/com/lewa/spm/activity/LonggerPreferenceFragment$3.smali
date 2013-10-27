.class Lcom/lewa/spm/activity/LonggerPreferenceFragment$3;
.super Landroid/os/Handler;
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
    .line 670
    iput-object p1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$3;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 674
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 675
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/lewa/spm/util/Constants;->SPM_LIFE_DIFF_TXT_SHOW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$3;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v0, v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mLifeDiffView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 678
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$3;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v0, v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mLifeDiffView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$3;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v0, v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryRmainView:Landroid/widget/TextView;

    const v1, -0xff97c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 680
    sget v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryChargingType:I

    if-nez v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$3;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    #calls: Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showRemainingTime()V
    invoke-static {v0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$100(Lcom/lewa/spm/activity/LonggerPreferenceFragment;)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$3;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    sget v1, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryLevel:I

    #calls: Lcom/lewa/spm/activity/LonggerPreferenceFragment;->showChargingTime(I)V
    invoke-static {v0, v1}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->access$200(Lcom/lewa/spm/activity/LonggerPreferenceFragment;I)V

    goto :goto_0
.end method
