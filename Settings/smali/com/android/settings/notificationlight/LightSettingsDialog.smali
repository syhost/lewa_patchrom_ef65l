.class public Lcom/android/settings/notificationlight/LightSettingsDialog;
.super Landroid/app/AlertDialog;
.source "LightSettingsDialog.java"

# interfaces
.implements Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    }
.end annotation


# instance fields
.field private mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

.field private mNewColor:Lcom/android/settings/notificationlight/ColorPanelView;

.field private mOldColor:Lcom/android/settings/notificationlight/ColorPanelView;

.field private mPulseSpeedOff:Landroid/widget/Spinner;

.field private mPulseSpeedOn:Landroid/widget/Spinner;

.field private mSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "initialColor"
    .parameter "initialSpeedOn"
    .parameter "initialSpeedOff"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v0, Lcom/android/settings/notificationlight/LightSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notificationlight/LightSettingsDialog$1;-><init>(Lcom/android/settings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->init(IIIZ)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .parameter "context"
    .parameter "initialColor"
    .parameter "initialSpeedOn"
    .parameter "initialSpeedOff"
    .parameter "onOffChangeable"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v0, Lcom/android/settings/notificationlight/LightSettingsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notificationlight/LightSettingsDialog$1;-><init>(Lcom/android/settings/notificationlight/LightSettingsDialog;)V

    iput-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 76
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/settings/notificationlight/LightSettingsDialog;->init(IIIZ)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notificationlight/LightSettingsDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private init(IIIZ)V
    .locals 2
    .parameter "color"
    .parameter "speedOn"
    .parameter "speedOff"
    .parameter "onOffChangeable"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setUp(IIIZ)V

    .line 83
    return-void
.end method

.method private setUp(IIIZ)V
    .locals 7
    .parameter "color"
    .parameter "speedOn"
    .parameter "speedOff"
    .parameter "onOffChangeable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b7

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f0902a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notificationlight/ColorPickerView;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    .line 99
    const v2, 0x7f0902aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notificationlight/ColorPanelView;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mOldColor:Lcom/android/settings/notificationlight/ColorPanelView;

    .line 100
    const v2, 0x7f0902ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notificationlight/ColorPanelView;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/android/settings/notificationlight/ColorPanelView;

    .line 102
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mOldColor:Lcom/android/settings/notificationlight/ColorPanelView;

    invoke-virtual {v2}, Lcom/android/settings/notificationlight/ColorPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v5}, Lcom/android/settings/notificationlight/ColorPickerView;->getDrawingOffset()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v6}, Lcom/android/settings/notificationlight/ColorPickerView;->getDrawingOffset()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v2, v5, v4, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v2, p0}, Lcom/android/settings/notificationlight/ColorPickerView;->setOnColorChangedListener(Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mOldColor:Lcom/android/settings/notificationlight/ColorPanelView;

    invoke-virtual {v2, p1}, Lcom/android/settings/notificationlight/ColorPanelView;->setColor(I)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v2, p1, v3}, Lcom/android/settings/notificationlight/ColorPickerView;->setColor(IZ)V

    .line 110
    const v2, 0x7f0902ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    .line 111
    new-instance v1, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    const v2, 0x7f08005c

    const v5, 0x7f08005d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, p0, v2, v5, v6}, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/android/settings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    .line 115
    .local v1, pulseSpeedAdapter:Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mSelectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 119
    const v2, 0x7f0902ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    .line 120
    new-instance v1, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;

    .end local v1           #pulseSpeedAdapter:Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    const v2, 0x7f08005e

    const v5, 0x7f08005f

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v1, p0, v2, v5, v6}, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/android/settings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V

    .line 123
    .restart local v1       #pulseSpeedAdapter:Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/settings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    iget-object v2, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v2, p4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 127
    iget-object v5, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    if-eq p2, v3, :cond_0

    if-eqz p4, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setView(Landroid/view/View;)V

    .line 130
    const v2, 0x7f0c0841

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/LightSettingsDialog;->setTitle(I)V

    .line 131
    return-void

    :cond_0
    move v2, v4

    .line 127
    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/notificationlight/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getPulseSpeedOff()I
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPulseSpeedOn()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onColorChanged(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mNewColor:Lcom/android/settings/notificationlight/ColorPanelView;

    invoke-virtual {v0, p1}, Lcom/android/settings/notificationlight/ColorPanelView;->setColor(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mListener:Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;

    invoke-interface {v0, p1}, Lcom/android/settings/notificationlight/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/notificationlight/LightSettingsDialog;->mColorPicker:Lcom/android/settings/notificationlight/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/android/settings/notificationlight/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 156
    return-void
.end method
