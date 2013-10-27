.class public Lcom/lewa/spm/charging/ChargingAnimation;
.super Ljava/lang/Object;
.source "ChargingAnimation.java"


# instance fields
.field batteryDrawable:Landroid/graphics/drawable/Drawable;

.field chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public getAnimationBaseOnLevel(I)Landroid/graphics/drawable/AnimationDrawable;
    .locals 5
    .parameter "level"

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x28

    const/16 v2, 0x1e

    const/16 v1, 0x14

    const/16 v0, 0xa

    .line 19
    if-ge p1, v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0

    .line 22
    :cond_1
    if-lt p1, v0, :cond_2

    if-ge p1, v1, :cond_2

    .line 23
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 25
    :cond_2
    if-lt p1, v1, :cond_3

    if-ge p1, v2, :cond_3

    .line 26
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 28
    :cond_3
    if-lt p1, v2, :cond_4

    if-ge p1, v3, :cond_4

    .line 29
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 31
    :cond_4
    if-lt p1, v3, :cond_5

    if-ge p1, v4, :cond_5

    .line 32
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 34
    :cond_5
    if-lt p1, v4, :cond_6

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_6

    .line 35
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 37
    :cond_6
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_7

    const/16 v0, 0x46

    if-ge p1, v0, :cond_7

    .line 38
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_0

    .line 40
    :cond_7
    const/16 v0, 0x46

    if-lt p1, v0, :cond_8

    const/16 v0, 0x50

    if-ge p1, v0, :cond_8

    .line 41
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_0

    .line 43
    :cond_8
    const/16 v0, 0x50

    if-lt p1, v0, :cond_9

    const/16 v0, 0x5a

    if-ge p1, v0, :cond_9

    .line 44
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_0

    .line 46
    :cond_9
    const/16 v0, 0x5a

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->chargingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_0
.end method

.method public getDrawableBasedOnLevel(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "level"

    .prologue
    const/16 v4, 0x2d

    const/16 v3, 0x23

    const/16 v2, 0x14

    const/16 v1, 0xa

    const/4 v0, 0x5

    .line 54
    if-ge p1, v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 57
    :cond_1
    if-lt p1, v0, :cond_2

    if-ge p1, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 60
    :cond_2
    if-lt p1, v1, :cond_3

    if-gt p1, v2, :cond_3

    .line 61
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 63
    :cond_3
    if-le p1, v2, :cond_4

    if-ge p1, v3, :cond_4

    .line 64
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 66
    :cond_4
    if-lt p1, v3, :cond_5

    if-ge p1, v4, :cond_5

    .line 67
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 69
    :cond_5
    if-lt p1, v4, :cond_6

    const/16 v0, 0x37

    if-ge p1, v0, :cond_6

    .line 70
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 72
    :cond_6
    const/16 v0, 0x37

    if-lt p1, v0, :cond_7

    const/16 v0, 0x41

    if-ge p1, v0, :cond_7

    .line 73
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 75
    :cond_7
    const/16 v0, 0x41

    if-lt p1, v0, :cond_8

    const/16 v0, 0x4b

    if-ge p1, v0, :cond_8

    .line 76
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 78
    :cond_8
    const/16 v0, 0x4b

    if-lt p1, v0, :cond_9

    const/16 v0, 0x55

    if-ge p1, v0, :cond_9

    .line 79
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 81
    :cond_9
    const/16 v0, 0x55

    if-lt p1, v0, :cond_a

    const/16 v0, 0x62

    if-ge p1, v0, :cond_a

    .line 82
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 84
    :cond_a
    const/16 v0, 0x62

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/charging/ChargingAnimation;->batteryDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method
