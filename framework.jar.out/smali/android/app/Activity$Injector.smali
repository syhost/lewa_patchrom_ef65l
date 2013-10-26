.class Landroid/app/Activity$Injector;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setContentViewForeground(Landroid/content/Context;Landroid/view/Window;)V
    .locals 4
    .parameter "context"
    .parameter "window"

    .prologue
    .line 657
    invoke-static {p0}, Llewa/util/LewaUiUtil;->isV5Ui(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 659
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 660
    const v2, 0x9010011

    invoke-static {p0, v2}, Llewa/util/LewaUiUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 661
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/widget/FrameLayout;

    .end local v0           #contentView:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 664
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
