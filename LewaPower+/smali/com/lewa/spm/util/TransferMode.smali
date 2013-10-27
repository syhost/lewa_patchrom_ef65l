.class public Lcom/lewa/spm/util/TransferMode;
.super Ljava/lang/Object;
.source "TransferMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consTransferMode(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "typeId"

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, modeGetString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 29
    :goto_0
    return-object v0

    .line 17
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    goto :goto_0

    .line 20
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    goto :goto_0

    .line 23
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
