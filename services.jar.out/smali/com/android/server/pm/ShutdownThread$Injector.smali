.class Lcom/android/server/pm/ShutdownThread$Injector;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRebootDialog(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const v8, 0x1040013

    const v7, 0x1040009

    const v5, 0x1010355

    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 95
    new-instance v1, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getReboot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x9040018

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x90d0004

    new-instance v5, Lcom/android/server/pm/ShutdownThread$Injector$3;

    invoke-direct {v5, p0}, Lcom/android/server/pm/ShutdownThread$Injector$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/ShutdownThread$Injector$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/ShutdownThread$Injector$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/ShutdownThread$Injector$1;

    invoke-direct {v4}, Lcom/android/server/pm/ShutdownThread$Injector$1;-><init>()V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 129
    .local v2, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/server/pm/ShutdownThread$Injector$4;

    invoke-direct {v3}, Lcom/android/server/pm/ShutdownThread$Injector$4;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90d0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, actions:[Ljava/lang/String;
    aget-object v3, v0, v6

    invoke-static {v3}, Lcom/android/server/pm/ShutdownThread;->setRebootReason(Ljava/lang/String;)V

    .line 156
    .end local v0           #actions:[Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7de

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 157
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 158
    iput-object v2, v1, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 159
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 161
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 163
    return-void

    .line 142
    .end local v2           #dialog:Landroid/app/AlertDialog;
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x9040019

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x904001b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/ShutdownThread$Injector$5;

    invoke-direct {v4, p0}, Lcom/android/server/pm/ShutdownThread$Injector$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 153
    .restart local v2       #dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0
.end method

.method static createShutDownDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 81
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 82
    .local v0, pd:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getReboot()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x9040017

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->getReboot()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x9040016

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 90
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 91
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 92
    return-void

    .line 82
    :cond_0
    const v1, 0x9040019

    goto :goto_0

    .line 85
    :cond_1
    const v1, 0x904001a

    goto :goto_1
.end method
