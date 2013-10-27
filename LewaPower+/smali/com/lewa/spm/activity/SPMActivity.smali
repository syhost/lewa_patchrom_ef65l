.class public Lcom/lewa/spm/activity/SPMActivity;
.super Landroid/preference/PreferenceActivity;
.source "SPMActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/spm/activity/SPMActivity$1;,
        Lcom/lewa/spm/activity/SPMActivity$TabListener;,
        Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field mActionBar:Landroid/app/ActionBar;

.field mIntelliFragment:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

.field mLPFragment:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;

.field mTabListener:Lcom/lewa/spm/activity/SPMActivity$TabListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 59
    const-string v0, "SPMActivity"

    iput-object v0, p0, Lcom/lewa/spm/activity/SPMActivity;->TAG:Ljava/lang/String;

    .line 246
    return-void
.end method

.method static synthetic access$100(Lcom/lewa/spm/activity/SPMActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lewa/spm/activity/SPMActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f09004b

    const/4 v4, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/lewa/spm/activity/SPMActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0, v5}, Lcom/lewa/spm/activity/SPMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 95
    new-instance v2, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;

    invoke-direct {v2, p0, p0}, Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;-><init>(Lcom/lewa/spm/activity/SPMActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mPagerAdapter:Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;

    .line 96
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/lewa/spm/activity/SPMActivity;->mPagerAdapter:Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/lewa/spm/activity/SPMActivity;->mPagerAdapter:Lcom/lewa/spm/activity/SPMActivity$TabPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/lewa/spm/activity/SPMActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 101
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 104
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mLPFragment:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    if-nez v2, :cond_0

    .line 105
    new-instance v2, Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    invoke-direct {v2}, Lcom/lewa/spm/activity/LonggerPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mLPFragment:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    .line 106
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mLPFragment:Lcom/lewa/spm/activity/LonggerPreferenceFragment;

    const-string v3, "LonggerPreferenceFragment"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mIntelliFragment:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    if-nez v2, :cond_1

    .line 109
    new-instance v2, Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    invoke-direct {v2}, Lcom/lewa/spm/activity/IntelliPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mIntelliFragment:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    .line 110
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mIntelliFragment:Lcom/lewa/spm/activity/IntelliPreferenceFragment;

    const-string v3, "IntelliPreferenceFragment"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 112
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 113
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 114
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 118
    invoke-virtual {p0}, Lcom/lewa/spm/activity/SPMActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    .line 119
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mTabListener:Lcom/lewa/spm/activity/SPMActivity$TabListener;

    if-nez v2, :cond_2

    .line 120
    new-instance v2, Lcom/lewa/spm/activity/SPMActivity$TabListener;

    invoke-direct {v2, p0, v6}, Lcom/lewa/spm/activity/SPMActivity$TabListener;-><init>(Lcom/lewa/spm/activity/SPMActivity;Lcom/lewa/spm/activity/SPMActivity$1;)V

    iput-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mTabListener:Lcom/lewa/spm/activity/SPMActivity$TabListener;

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 125
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 126
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v4, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 127
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 129
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 132
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {p0, v4}, Lcom/lewa/spm/activity/SPMActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/spm/activity/SPMActivity;->mTabListener:Lcom/lewa/spm/activity/SPMActivity$TabListener;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 135
    iget-object v2, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/lewa/spm/activity/SPMActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f070026

    invoke-virtual {p0, v4}, Lcom/lewa/spm/activity/SPMActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/spm/activity/SPMActivity;->mTabListener:Lcom/lewa/spm/activity/SPMActivity$TabListener;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 140
    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 155
    return-void
.end method
