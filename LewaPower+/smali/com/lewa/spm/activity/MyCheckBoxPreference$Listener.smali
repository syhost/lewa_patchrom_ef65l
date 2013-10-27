.class Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;
.super Ljava/lang/Object;
.source "MyCheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/spm/activity/MyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/spm/activity/MyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/lewa/spm/activity/MyCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;->this$0:Lcom/lewa/spm/activity/MyCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/spm/activity/MyCheckBoxPreference;Lcom/lewa/spm/activity/MyCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;-><init>(Lcom/lewa/spm/activity/MyCheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 68
    const-string v0, "MyCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener    isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;->this$0:Lcom/lewa/spm/activity/MyCheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/lewa/spm/activity/MyCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->access$100(Lcom/lewa/spm/activity/MyCheckBoxPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 77
    :goto_1
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_1
    const-string v0, "MyCheckBoxPreference"

    const-string v1, "Listener    1111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;->this$0:Lcom/lewa/spm/activity/MyCheckBoxPreference;

    invoke-virtual {v0, p2}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method
