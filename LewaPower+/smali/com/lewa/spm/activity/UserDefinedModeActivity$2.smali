.class Lcom/lewa/spm/activity/UserDefinedModeActivity$2;
.super Ljava/lang/Object;
.source "UserDefinedModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 455
    iput-object p1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity$2;->this$0:Lcom/lewa/spm/activity/UserDefinedModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity$2;->this$0:Lcom/lewa/spm/activity/UserDefinedModeActivity;

    iget-object v1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity$2;->this$0:Lcom/lewa/spm/activity/UserDefinedModeActivity;

    iget v1, v1, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mOldBrightnessValue:I

    iput v1, v0, Lcom/lewa/spm/activity/UserDefinedModeActivity;->mBrightnessValue:I

    .line 459
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 460
    return-void
.end method
