.class Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SPMActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/spm/activity/SPMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/lewa/spm/activity/SPMActivity;


# direct methods
.method public constructor <init>(Lcom/lewa/spm/activity/SPMActivity;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->this$0:Lcom/lewa/spm/activity/SPMActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 165
    iput-object p2, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 166
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 167
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 190
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 197
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 199
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x2

    return v0
.end method

.method public getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->this$0:Lcom/lewa/spm/activity/SPMActivity;

    iget-object v0, v0, Lcom/lewa/spm/activity/SPMActivity;->mLPFragment:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    .line 179
    :goto_0
    return-object v0

    .line 178
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->this$0:Lcom/lewa/spm/activity/SPMActivity;

    iget-object v0, v0, Lcom/lewa/spm/activity/SPMActivity;->mIntelliFragment:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 206
    :cond_0
    invoke-virtual {p0, p2}, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 207
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 208
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 213
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 231
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 235
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->this$0:Lcom/lewa/spm/activity/SPMActivity;

    iget-object v0, v0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 241
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;->this$0:Lcom/lewa/spm/activity/SPMActivity;

    invoke-virtual {v0}, Lcom/lewa/spm/activity/SPMActivity;->invalidateOptionsMenu()V

    .line 242
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 220
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 226
    return-void
.end method
