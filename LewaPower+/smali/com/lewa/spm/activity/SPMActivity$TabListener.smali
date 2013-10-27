.class Lcom/lewa/spm/activity/SPMActivity$TabListener;
.super Ljava/lang/Object;
.source "SPMActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/spm/activity/SPMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/spm/activity/SPMActivity;


# direct methods
.method private constructor <init>(Lcom/lewa/spm/activity/SPMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lewa/spm/activity/SPMActivity$TabListener;->this$0:Lcom/lewa/spm/activity/SPMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/spm/activity/SPMActivity;Lcom/lewa/spm/activity/SPMActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/lewa/spm/activity/SPMActivity$TabListener;-><init>(Lcom/lewa/spm/activity/SPMActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "paramFragmentTransaction"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabListener;->this$0:Lcom/lewa/spm/activity/SPMActivity;

    #getter for: Lcom/lewa/spm/activity/SPMActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/lewa/spm/activity/SPMActivity;->access$100(Lcom/lewa/spm/activity/SPMActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 253
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "paramFragmentTransaction"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabListener;->this$0:Lcom/lewa/spm/activity/SPMActivity;

    #getter for: Lcom/lewa/spm/activity/SPMActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/lewa/spm/activity/SPMActivity;->access$100(Lcom/lewa/spm/activity/SPMActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 258
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "paramTab"
    .parameter "paramFragmentTransaction"

    .prologue
    .line 263
    return-void
.end method
