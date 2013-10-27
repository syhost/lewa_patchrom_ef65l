.class public Lcom/lewa/spm/activity/MyCheckBoxPreference;
.super Landroid/preference/TwoStatePreference;
.source "MyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/spm/activity/MyCheckBoxPreference$1;,
        Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lewa/spm/activity/MyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/lewa/spm/activity/MyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v1, Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;-><init>(Lcom/lewa/spm/activity/MyCheckBoxPreference;Lcom/lewa/spm/activity/MyCheckBoxPreference$1;)V

    iput-object v1, p0, Lcom/lewa/spm/activity/MyCheckBoxPreference;->mListener:Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;

    .line 89
    sget-object v1, Lcom/android/internal/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->setDisableDependentsState(Z)V

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/lewa/spm/activity/MyCheckBoxPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 125
    const v2, 0x9020012

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 127
    check-cast v2, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 128
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 129
    check-cast v1, Landroid/widget/Switch;

    .line 130
    .local v1, switchView:Landroid/widget/Switch;
    iget-object v2, p0, Lcom/lewa/spm/activity/MyCheckBoxPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/lewa/spm/activity/MyCheckBoxPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/lewa/spm/activity/MyCheckBoxPreference;->mListener:Lcom/lewa/spm/activity/MyCheckBoxPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    .end local v1           #switchView:Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "offText"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lewa/spm/activity/MyCheckBoxPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {p0}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->notifyChanged()V

    .line 157
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "onText"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lewa/spm/activity/MyCheckBoxPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {p0}, Lcom/lewa/spm/activity/MyCheckBoxPreference;->notifyChanged()V

    .line 146
    return-void
.end method
