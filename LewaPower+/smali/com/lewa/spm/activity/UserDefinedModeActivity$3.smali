.class Lcom/lewa/spm/activity/UserDefinedModeActivity$3;
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
    .line 449
    iput-object p1, p0, Lcom/lewa/spm/activity/UserDefinedModeActivity$3;->this$0:Lcom/lewa/spm/activity/UserDefinedModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 451
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 452
    return-void
.end method
