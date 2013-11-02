.class public Lcom/android/settings/notificationlight/ApplicationLightPreference;
.super Landroid/preference/Preference;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    }
.end annotation


# static fields
.field public static final DEFAULT_COLOR:I = 0xffffff

.field public static final DEFAULT_TIME:I = 0x3e8

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColorValue:I

.field private mLightColorView:Landroid/widget/ImageView;

.field private mOffValue:I

.field private mOffValueView:Landroid/widget/TextView;

.field private mOnOffChangeable:Z

.field private mOnValue:I

.field private mOnValueView:Landroid/widget/TextView;

.field private mParent:Landroid/view/View$OnLongClickListener;

.field private mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mTestDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "AppLightPreference"

    sput-object v0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 86
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 87
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 88
    iput p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 89
    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 91
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .parameter "context"
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"
    .parameter "onOffChangeable"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 103
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 104
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 105
    iput p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 106
    iput-boolean p5, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 107
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x3e8

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 70
    const v0, 0xffffff

    iput v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 71
    iput v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 72
    iput v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 74
    iput-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnLongClickListener;III)V
    .locals 1
    .parameter "context"
    .parameter "parent"
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 119
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 120
    iput p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 121
    iput p5, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 122
    iput-object p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 124
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 125
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/notificationlight/ApplicationLightPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/notificationlight/ApplicationLightPreference;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->showTestDialog(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/notificationlight/ApplicationLightPreference;)Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/notificationlight/ApplicationLightPreference;Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;)Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/notificationlight/ApplicationLightPreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/notificationlight/ApplicationLightPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 356
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 357
    .local v0, shape:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 358
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 359
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    return-object v0
.end method

.method private editPreferenceValues()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x2

    .line 191
    new-instance v0, Lcom/android/settings/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, -0x100

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iget v4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    iget-boolean v5, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notificationlight/LightSettingsDialog;-><init>(Landroid/content/Context;IIIZ)V

    .line 194
    .local v0, d:Lcom/android/settings/notificationlight/LightSettingsDialog;
    iget-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0e0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v7, v1

    .line 195
    .local v7, width:I
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setAlphaSliderVisible(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 198
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v1, -0x1

    const v2, 0x7f0900c9

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/notificationlight/ApplicationLightPreference$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference$1;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;Lcom/android/settings/notificationlight/LightSettingsDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 208
    const/4 v2, -0x3

    const v1, 0x7f0c0846

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v8

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 209
    const v1, 0x7f0c00fb

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v8, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v9, v1, v8}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 210
    invoke-virtual {v0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->show()V

    .line 213
    const v1, 0x102001b

    invoke-virtual {v0, v1}, Lcom/android/settings/notificationlight/LightSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference$2;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;Lcom/android/settings/notificationlight/LightSettingsDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

#    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

#    move-result v1

#    if-eqz v1, :cond_0

#    .line 225
#    invoke-virtual {v0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getWindow()Landroid/view/Window;

#    move-result-object v1

#    invoke-virtual {v1, v7, v9}, Landroid/view/Window;->setLayout(II)V

#    .line 227
#    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setLayoutResource(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    .line 130
    return-void
.end method

.method private mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .parameter "time"

    .prologue
    .line 364
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0844

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 377
    :goto_0
    return-object v3

    .line 368
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, timeNames:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, timeValues:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 372
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    aget-object v3, v1, v0

    goto :goto_0

    .line 371
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0845

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .parameter "time"

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0844

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 394
    :goto_0
    return-object v3

    .line 385
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, timeNames:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, timeValues:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 389
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    aget-object v3, v1, v0

    goto :goto_0

    .line 388
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0845

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private showTestDialog(III)V
    .locals 5
    .parameter "color"
    .parameter "speedOn"
    .parameter "speedOff"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 232
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 239
    :cond_1
    new-instance v2, Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;III)V

    iput-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 241
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/settings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0846

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0849

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c084a

    new-instance v4, Lcom/android/settings/notificationlight/ApplicationLightPreference$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference$3;-><init>(Lcom/android/settings/notificationlight/ApplicationLightPreference;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    .line 259
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 260
    return-void
.end method

.method private updatePreferenceViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 163
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 164
    .local v1, width:I
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 166
    .local v0, height:I
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 168
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    const/high16 v3, -0x100

    iget v4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    add-int/2addr v3, v4

    invoke-static {v1, v0, v3}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 174
    iget v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    if-ne v2, v5, :cond_3

    .line 175
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_2
    return-void

    .line 177
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return v0
.end method

.method public getOffValue()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return v0
.end method

.method public getOnValue()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0902af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 137
    .local v0, lightPref:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mParent:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    :cond_0
    return-object v1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 150
    const v1, 0x7f0902b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    .line 151
    const v1, 0x7f0902b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    .line 152
    const v1, 0x7f0902b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    .line 156
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    .local v0, tView:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 160
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 185
    if-eqz p1, :cond_0

    const v0, 0x7f0902af

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->editPreferenceValues()V

    .line 188
    :cond_0
    return-void
.end method

.method public setAllValues(III)V
    .locals 1
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    .line 294
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 295
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 296
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 298
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 299
    return-void
.end method

.method public setAllValues(IIIZ)V
    .locals 0
    .parameter "color"
    .parameter "onValue"
    .parameter "offValue"
    .parameter "onOffChangeable"

    .prologue
    .line 302
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 303
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 304
    iput p3, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 305
    iput-boolean p4, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 306
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 307
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 272
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 273
    return-void
.end method

.method public setOffValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 285
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 286
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 287
    return-void
.end method

.method public setOnOffChangeable(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 317
    return-void
.end method

.method public setOnOffValue(II)V
    .locals 0
    .parameter "onValue"
    .parameter "offValue"

    .prologue
    .line 310
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 311
    iput p2, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 312
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 313
    return-void
.end method

.method public setOnValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 276
    iput p1, p0, Lcom/android/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 277
    invoke-direct {p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 278
    return-void
.end method
