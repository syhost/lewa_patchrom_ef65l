.class Lcom/lewa/spm/activity/TimeSetting$1;
.super Ljava/lang/Object;
.source "TimeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/spm/activity/TimeSetting;->ifIsInTheTimeshowDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/spm/activity/TimeSetting;


# direct methods
.method constructor <init>(Lcom/lewa/spm/activity/TimeSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/lewa/spm/activity/TimeSetting$1;->this$0:Lcom/lewa/spm/activity/TimeSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting$1;->this$0:Lcom/lewa/spm/activity/TimeSetting;

    #calls: Lcom/lewa/spm/activity/TimeSetting;->excuteAndSetAlarm()V
    invoke-static {v0}, Lcom/lewa/spm/activity/TimeSetting;->access$000(Lcom/lewa/spm/activity/TimeSetting;)V

    .line 301
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 302
    iget-object v0, p0, Lcom/lewa/spm/activity/TimeSetting$1;->this$0:Lcom/lewa/spm/activity/TimeSetting;

    invoke-virtual {v0}, Lcom/lewa/spm/activity/TimeSetting;->finish()V

    .line 303
    return-void
.end method
