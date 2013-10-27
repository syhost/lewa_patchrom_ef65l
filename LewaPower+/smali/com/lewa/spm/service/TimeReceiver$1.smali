.class Lcom/lewa/spm/service/TimeReceiver$1;
.super Ljava/lang/Object;
.source "TimeReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/spm/service/TimeReceiver;->showBatteryLowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/spm/service/TimeReceiver;


# direct methods
.method constructor <init>(Lcom/lewa/spm/service/TimeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/lewa/spm/service/TimeReceiver$1;->this$0:Lcom/lewa/spm/service/TimeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 796
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 797
    new-instance v0, Lcom/lewa/spm/service/ExecuteLongMode;

    iget-object v1, p0, Lcom/lewa/spm/service/TimeReceiver$1;->this$0:Lcom/lewa/spm/service/TimeReceiver;

    iget-object v1, v1, Lcom/lewa/spm/service/TimeReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lewa/spm/service/ExecuteLongMode;-><init>(Landroid/content/Context;)V

    .line 798
    .local v0, runLongMode:Lcom/lewa/spm/service/ExecuteLongMode;
    invoke-virtual {v0}, Lcom/lewa/spm/service/ExecuteLongMode;->onCreate()V

    .line 799
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lewa/spm/service/TimeReceiver;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 800
    return-void
.end method
