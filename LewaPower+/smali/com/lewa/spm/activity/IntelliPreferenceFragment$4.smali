.class Lcom/lewa/spm/activity/IntelliPreferenceFragment$4;
.super Ljava/lang/Object;
.source "IntelliPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/spm/activity/IntelliPreferenceFragment;->showCalibrateBatteryDialog(I)V
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
    .line 302
    iput-object p1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$4;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 304
    new-instance v0, Lcom/lewa/spm/calibrate/CalibrateBattery;

    invoke-direct {v0}, Lcom/lewa/spm/calibrate/CalibrateBattery;-><init>()V

    .line 305
    .local v0, cb:Lcom/lewa/spm/calibrate/CalibrateBattery;
    invoke-virtual {v0}, Lcom/lewa/spm/calibrate/CalibrateBattery;->deleteFile()V

    .line 306
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 308
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    iget-object v2, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$4;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    #calls: Lcom/lewa/spm/activity/IntelliPreferenceFragment;->createCalibrateBatterySuccessDialog()V
    invoke-static {v2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->access$200(Lcom/lewa/spm/activity/IntelliPreferenceFragment;)V

    .line 313
    return-void

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
