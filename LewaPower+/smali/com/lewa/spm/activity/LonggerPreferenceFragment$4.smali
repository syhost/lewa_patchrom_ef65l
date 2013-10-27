.class Lcom/lewa/spm/activity/LonggerPreferenceFragment$4;
.super Ljava/lang/Object;
.source "LonggerPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 734
    iput-object p1, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$4;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$4;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v0, v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/lewa/spm/activity/LonggerPreferenceFragment$4;->this$0:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    iget-object v0, v0, Lcom/lewa/spm/activity/LonggerPreferenceFragment;->mBatteryAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 741
    :cond_0
    return-void
.end method
