.class Lcom/lewa/spm/activity/LonggerPreferenceFragment$2;
.super Ljava/lang/Object;
.source "LonggerPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/spm/activity/LonggerPreferenceFragment;->initUI()V
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
    .line 442
    iput-object p1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lewa.spm_action_show_battery_consume_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$2;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 449
    return-void
.end method
