.class Lcom/lewa/spm/activity/UserDefinedModeActivity$1;
.super Ljava/lang/Object;
.source "UserDefinedModeActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/spm/activity/UserDefinedModeActivity;->createBrightnessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/spm/activity/UserDefinedModeActivity;


# direct methods
.method constructor <init>(Lcom/lewa/spm/activity/UserDefinedModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity$1;->this$0:Lcom/lewa/spm/activity/UserDefinedModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBark"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity$1;->this$0:Lcom/lewa/spm/activity/UserDefinedModeActivity;

    iput p2, v1, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBrightnessValue:I

    .line 427
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity$1;->this$0:Lcom/lewa/spm/activity/UserDefinedModeActivity;

    iget v0, v1, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBrightnessValue:I

    .line 428
    .local v0, bright:I
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 429
    const/16 v0, 0x14

    .line 431
    :cond_0
    mul-int/lit8 v1, v0, 0x64

    div-int/lit16 v0, v1, 0xe1

    .line 432
    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity$1;->this$0:Lcom/lewa/spm/activity/UserDefinedModeActivity;

    iget-object v1, v1, Lcom/lewa/spm/activity/UserDefinedModeActivity;->brightnessPrference:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBark"

    .prologue
    .line 437
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBark"

    .prologue
    .line 441
    return-void
.end method
