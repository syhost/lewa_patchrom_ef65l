.class Lcom/lewa/spm/activity/IntelliPreferenceFragment$7;
.super Ljava/lang/Object;
.source "IntelliPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/spm/activity/IntelliPreferenceFragment;->showIfEnterDialog()V
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
    .line 364
    iput-object p1, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$7;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/lewa/spm/activity/IntelliPreferenceFragment$7;->this$0:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    iget-object v0, v0, Lcom/lewa/spm/activity/IntelliPreferenceFragment;->mSharedStorageKV:Lcom/lewa/spm/util/SharedStorageKeyValuePair;

    const-string v1, "com.lewa.spm_preferences"

    const-string v2, "enteryintilligentmodeontime"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/spm/util/SharedStorageKeyValuePair;->saveBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 371
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 373
    return-void
.end method
