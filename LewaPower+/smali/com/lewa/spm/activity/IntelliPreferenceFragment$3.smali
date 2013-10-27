.class Lcom/lewa/spm/activity/IntelliPreferenceFragment$3;
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
    .line 294
    iput-object p1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$3;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 296
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    return-void
.end method
