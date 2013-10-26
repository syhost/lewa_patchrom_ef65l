.class Lcom/android/internal/policy/impl/PhoneWindow$Injector;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getActionBarOverlayResourceId(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    invoke-static {p0}, Llewa/util/LewaUiUtil;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x9090016

    :goto_0
    return v0

    :cond_0
    const v0, 0x909000c

    invoke-static {p0, v0}, Llewa/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method static getActionBarResourceId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 120
    const/4 v0, -0x1

    .line 121
    .local v0, retval:I
    invoke-static {p0}, Llewa/util/LewaUiUtil;->isV5Ui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const v1, 0x901000c

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Llewa/util/LewaUiUtil;->getBoolean(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const v0, 0x9090020

    .line 130
    :goto_0
    return v0

    .line 125
    :cond_0
    const v0, 0x9090017

    goto :goto_0

    .line 128
    :cond_1
    const v1, 0x909000b

    invoke-static {p0, v1}, Llewa/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method
