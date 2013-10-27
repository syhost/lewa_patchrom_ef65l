.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$Decor;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetLongClickFlag:Z

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 106
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 113
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 300
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 127
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 128
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 129
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 141
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 142
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 151
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 169
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 196
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 197
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 206
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mSetLongClickFlag:Z

    .line 225
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 301
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 127
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 128
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 129
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 141
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 142
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 151
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 169
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 196
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 197
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 206
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mSetLongClickFlag:Z

    .line 225
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 306
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 307
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/view/ViewPager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 82
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .locals 14
    .parameter "curItem"
    .parameter "curIndex"
    .parameter "oldCurInfo"

    .prologue
    .line 933
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 934
    .local v1, N:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v11

    .line 935
    .local v11, width:I
    if-lez v11, :cond_0

    iget v12, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 937
    .local v6, marginOffset:F
    :goto_0
    if-eqz p3, :cond_6

    .line 938
    move-object/from16 v0, p3

    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 940
    .local v8, oldCurPosition:I
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 941
    const/4 v5, 0x0

    .line 942
    .local v5, itemIndex:I
    const/4 v3, 0x0

    .line 943
    .local v3, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 944
    .local v7, offset:F
    add-int/lit8 v9, v8, 0x1

    .line 945
    .local v9, pos:I
    :goto_1
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 946
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 947
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 948
    add-int/lit8 v5, v5, 0x1

    .line 949
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_2

    .line 935
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v6           #marginOffset:F
    .end local v7           #offset:F
    .end local v8           #oldCurPosition:I
    .end local v9           #pos:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 951
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v5       #itemIndex:I
    .restart local v6       #marginOffset:F
    .restart local v7       #offset:F
    .restart local v8       #oldCurPosition:I
    .restart local v9       #pos:I
    :cond_1
    :goto_3
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 954
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 955
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 957
    :cond_2
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 958
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 945
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 960
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v9           #pos:I
    :cond_3
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 961
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 962
    .restart local v5       #itemIndex:I
    const/4 v3, 0x0

    .line 963
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 964
    .restart local v7       #offset:F
    add-int/lit8 v9, v8, -0x1

    .line 965
    .restart local v9       #pos:I
    :goto_4
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 966
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 967
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 968
    add-int/lit8 v5, v5, -0x1

    .line 969
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_5

    .line 971
    :cond_4
    :goto_6
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 974
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 975
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 977
    :cond_5
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 978
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 965
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 984
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v5           #itemIndex:I
    .end local v7           #offset:F
    .end local v8           #oldCurPosition:I
    .end local v9           #pos:I
    :cond_6
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 985
    .local v4, itemCount:I
    iget v7, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 986
    .restart local v7       #offset:F
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 987
    .restart local v9       #pos:I
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 988
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 991
    add-int/lit8 v2, p2, -0x1

    .local v2, i:I
    :goto_9
    if-ltz v2, :cond_b

    .line 992
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 993
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 994
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9           #pos:I
    .local v10, pos:I
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_a

    .line 987
    .end local v2           #i:I
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 988
    :cond_8
    const v12, 0x7f7fffff

    goto :goto_8

    .line 996
    .restart local v2       #i:I
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 997
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 998
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 991
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1000
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1001
    iget v12, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1003
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1004
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1005
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1006
    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9           #pos:I
    .restart local v10       #pos:I
    invoke-virtual {v12, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10           #pos:I
    .restart local v9       #pos:I
    goto :goto_c

    .line 1008
    :cond_c
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1009
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1011
    :cond_d
    iput v7, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1012
    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1003
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1015
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1016
    return-void
.end method

.method private completeScroll()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1520
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v2, 0x1

    .line 1521
    .local v2, needPopulate:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1523
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1524
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1525
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1526
    .local v3, oldX:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1527
    .local v4, oldY:I
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1528
    .local v5, x:I
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1529
    .local v6, y:I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1530
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1532
    :cond_1
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1534
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iput-boolean v7, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1535
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 1536
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1537
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-boolean v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_3

    .line 1538
    const/4 v2, 0x1

    .line 1539
    iput-boolean v7, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1535
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v2           #needPopulate:Z
    :cond_4
    move v2, v7

    .line 1520
    goto :goto_0

    .line 1542
    .restart local v0       #i:I
    .restart local v2       #needPopulate:Z
    :cond_5
    if-eqz v2, :cond_6

    .line 1543
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1545
    :cond_6
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 5
    .parameter "currentPage"
    .parameter "pageOffset"
    .parameter "velocity"
    .parameter "deltaX"

    .prologue
    .line 1936
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    if-le v3, v4, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le v3, v4, :cond_2

    .line 1937
    if-lez p3, :cond_1

    move v2, p1

    .line 1942
    .local v2, targetPage:I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1943
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1944
    .local v0, firstItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1947
    .local v1, lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1950
    .end local v0           #firstItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v1           #lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    return v2

    .line 1937
    .end local v2           #targetPage:I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 1939
    :cond_2
    int-to-float v3, p1

    add-float/2addr v3, p2

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v2, v3

    .restart local v2       #targetPage:I
    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2193
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2194
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2196
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2198
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2200
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .parameter "outRect"
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 2335
    if-nez p1, :cond_0

    .line 2336
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2338
    .restart local p1
    :cond_0
    if-nez p2, :cond_2

    .line 2339
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2357
    :cond_1
    return-object p1

    .line 2342
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2343
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2344
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2345
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2347
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2348
    .local v1, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2349
    check-cast v0, Landroid/view/ViewGroup;

    .line 2350
    .local v0, group:Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2351
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2352
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2353
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2355
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2356
    goto :goto_0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 1893
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v12

    .line 1894
    .local v12, width:I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 1895
    .local v11, scrollOffset:F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 1896
    .local v8, marginOffset:F
    :cond_0
    const/4 v5, -0x1

    .line 1897
    .local v5, lastPos:I
    const/4 v4, 0x0

    .line 1898
    .local v4, lastOffset:F
    const/4 v6, 0x0

    .line 1899
    .local v6, lastWidth:F
    const/4 v0, 0x1

    .line 1901
    .local v0, first:Z
    const/4 v3, 0x0

    .line 1902
    .local v3, lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 1903
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1905
    .local v2, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 1907
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1908
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1909
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1910
    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v14, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1911
    add-int/lit8 v1, v1, -0x1

    .line 1913
    :cond_1
    iget v9, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1915
    .local v9, offset:F
    move v7, v9

    .line 1916
    .local v7, leftBound:F
    iget v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 1917
    .local v10, rightBound:F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 1918
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 1931
    .end local v2           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v3           #lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v7           #leftBound:F
    .end local v9           #offset:F
    .end local v10           #rightBound:F
    :cond_4
    return-object v3

    .end local v0           #first:Z
    .end local v1           #i:I
    .end local v4           #lastOffset:F
    .end local v5           #lastPos:I
    .end local v6           #lastWidth:F
    .end local v8           #marginOffset:F
    .end local v11           #scrollOffset:F
    :cond_5
    move v11, v8

    .line 1894
    goto :goto_0

    .line 1924
    .restart local v0       #first:Z
    .restart local v1       #i:I
    .restart local v2       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v3       #lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v4       #lastOffset:F
    .restart local v5       #lastPos:I
    .restart local v6       #lastWidth:F
    .restart local v7       #leftBound:F
    .restart local v8       #marginOffset:F
    .restart local v9       #offset:F
    .restart local v10       #rightBound:F
    .restart local v11       #scrollOffset:F
    :cond_6
    const/4 v0, 0x0

    .line 1925
    iget v5, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1926
    move v4, v9

    .line 1927
    iget v6, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1928
    move-object v3, v2

    .line 1902
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .parameter "x"
    .parameter "dx"

    .prologue
    const/4 v2, 0x0

    .line 1548
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 2178
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2179
    .local v2, pointerIndex:I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2180
    .local v1, pointerId:I
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2183
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2184
    .local v0, newPointerIndex:I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2185
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2186
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2187
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2190
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 2183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .parameter "xpos"

    .prologue
    const/4 v7, 0x0

    .line 1430
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1431
    iput-boolean v7, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1432
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1433
    iget-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1434
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1439
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 1440
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1441
    .local v5, width:I
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1442
    .local v6, widthWithMargin:I
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1443
    .local v2, marginOffset:F
    iget v0, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1444
    .local v0, currentPage:I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1446
    .local v4, pageOffset:F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1448
    .local v3, offsetPixels:I
    iput-boolean v7, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1449
    invoke-virtual {p0, v0, v4, v3}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1450
    iget-boolean v7, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1451
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1454
    :cond_1
    const/4 v7, 0x1

    .end local v0           #currentPage:I
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v2           #marginOffset:F
    .end local v3           #offsetPixels:I
    .end local v4           #pageOffset:F
    .end local v5           #width:I
    .end local v6           #widthWithMargin:I
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .parameter "x"

    .prologue
    .line 1842
    const/4 v7, 0x0

    .line 1844
    .local v7, needsInvalidate:Z
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 1845
    .local v2, deltaX:F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1847
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 1848
    .local v8, oldScrollX:F
    add-float v12, v8, v2

    .line 1849
    .local v12, scrollX:F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v13

    .line 1851
    .local v13, width:I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    .line 1852
    .local v6, leftBound:F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 1853
    .local v11, rightBound:F
    const/4 v5, 0x1

    .line 1854
    .local v5, leftAbsolute:Z
    const/4 v10, 0x1

    .line 1856
    .local v10, rightAbsolute:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1857
    .local v3, firstItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1858
    .local v4, lastItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 1859
    const/4 v5, 0x0

    .line 1860
    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 1862
    :cond_0
    iget v14, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v15}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 1863
    const/4 v10, 0x0

    .line 1864
    iget v14, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 1867
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 1868
    if-eqz v5, :cond_2

    .line 1869
    sub-float v9, v6, v12

    .line 1870
    .local v9, over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 1872
    .end local v9           #over:F
    :cond_2
    move v12, v6

    .line 1881
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1882
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1883
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 1885
    return v7

    .line 1873
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 1874
    if-eqz v10, :cond_5

    .line 1875
    sub-float v9, v12, v11

    .line 1876
    .restart local v9       #over:F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 1878
    .end local v9           #over:F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .parameter "width"
    .parameter "oldWidth"
    .parameter "margin"
    .parameter "oldMargin"

    .prologue
    .line 1270
    if-lez p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1271
    add-int v12, p1, p3

    .line 1272
    .local v12, widthWithMargin:I
    add-int v7, p2, p4

    .line 1273
    .local v7, oldWidthWithMargin:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v13

    .line 1274
    .local v13, xpos:I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1275
    .local v8, pageOffset:F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1277
    .local v1, newOffsetPixels:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1278
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1280
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1281
    .local v5, newDuration:I
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v11

    .line 1282
    .local v11, targetInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1294
    .end local v1           #newOffsetPixels:I
    .end local v5           #newDuration:I
    .end local v7           #oldWidthWithMargin:I
    .end local v8           #pageOffset:F
    .end local v11           #targetInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v12           #widthWithMargin:I
    .end local v13           #xpos:I
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 1287
    .local v6, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1288
    .local v9, scrollOffset:F
    :goto_1
    int-to-float v0, p1

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1289
    .local v10, scrollPos:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1290
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 1291
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1287
    .end local v9           #scrollOffset:F
    .end local v10           #scrollPos:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 394
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 395
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 397
    .local v2, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 398
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 399
    add-int/lit8 v1, v1, -0x1

    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 337
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 342
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2203
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2204
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 2215
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2381
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2383
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2385
    const/high16 v0, 0x6

    if-eq v2, v0, :cond_1

    .line 2386
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2387
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2388
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2389
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2390
    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2391
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2386
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2401
    :cond_1
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2407
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2418
    :cond_3
    :goto_1
    return-void

    .line 2410
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2414
    :cond_5
    if-eqz p1, :cond_3

    .line 2415
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 694
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 695
    .local v0, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 696
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 697
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 698
    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 699
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :goto_0
    return-object v0

    .line 701
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2428
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2429
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2430
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2431
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2432
    .local v2, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2433
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2428
    .end local v2           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2437
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1103
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1104
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1106
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1107
    .local v0, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Landroid/support/v4/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1108
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1109
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1110
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1112
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1113
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1125
    :goto_0
    return-void

    .line 1115
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/16 v7, 0x42

    const/16 v6, 0x11

    .line 2292
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2293
    .local v1, currentFocused:Landroid/view/View;
    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    .line 2295
    :cond_0
    const/4 v2, 0x0

    .line 2297
    .local v2, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2299
    .local v3, nextFocused:Landroid/view/View;
    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_6

    .line 2300
    if-ne p1, v6, :cond_4

    .line 2303
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v3}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 2304
    .local v4, nextLeft:I
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 2305
    .local v0, currLeft:I
    if-eqz v1, :cond_3

    if-lt v4, v0, :cond_3

    .line 2306
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v2

    .line 2328
    .end local v0           #currLeft:I
    .end local v4           #nextLeft:I
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2329
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2331
    :cond_2
    return v2

    .line 2308
    .restart local v0       #currLeft:I
    .restart local v4       #nextLeft:I
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 2310
    .end local v0           #currLeft:I
    .end local v4           #nextLeft:I
    :cond_4
    if-ne p1, v7, :cond_1

    .line 2313
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v3}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 2314
    .restart local v4       #nextLeft:I
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 2315
    .restart local v0       #currLeft:I
    if-eqz v1, :cond_5

    if-gt v4, v0, :cond_5

    .line 2316
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_0

    .line 2318
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 2321
    .end local v0           #currLeft:I
    .end local v4           #nextLeft:I
    :cond_6
    if-eq p1, v6, :cond_7

    const/4 v5, 0x1

    if-ne p1, v5, :cond_8

    .line 2323
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v2

    goto :goto_0

    .line 2324
    :cond_8
    if-eq p1, v7, :cond_9

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 2326
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2229
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2230
    check-cast v7, Landroid/view/ViewGroup;

    .line 2231
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2232
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2233
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2235
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 2238
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2239
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2243
    const/4 v0, 0x1

    .line 2248
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :goto_1
    return v0

    .line 2235
    .restart local v1       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2248
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 2506
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1406
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1407
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1408
    .local v0, oldX:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1409
    .local v1, oldY:I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1410
    .local v2, x:I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1412
    .local v3, y:I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1413
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1414
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1415
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1416
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1421
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1427
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    return-void

    .line 1426
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 709
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    if-ge v11, v12, :cond_1

    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-ge v11, v12, :cond_1

    move v6, v9

    .line 711
    .local v6, needPopulate:Z
    :goto_0
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 713
    .local v7, newCurrItem:I
    const/4 v4, 0x0

    .line 714
    .local v4, isUpdating:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_6

    .line 715
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 716
    .local v3, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 718
    .local v8, newPos:I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_2

    .line 714
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v4           #isUpdating:Z
    .end local v6           #needPopulate:Z
    .end local v7           #newCurrItem:I
    .end local v8           #newPos:I
    :cond_1
    move v6, v10

    .line 709
    goto :goto_0

    .line 722
    .restart local v2       #i:I
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v4       #isUpdating:Z
    .restart local v6       #needPopulate:Z
    .restart local v7       #newCurrItem:I
    .restart local v8       #newPos:I
    :cond_2
    const/4 v11, -0x2

    if-ne v8, v11, :cond_4

    .line 723
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 724
    add-int/lit8 v2, v2, -0x1

    .line 726
    if-nez v4, :cond_3

    .line 727
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 728
    const/4 v4, 0x1

    .line 731
    :cond_3
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, p0, v12, v13}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 732
    const/4 v6, 0x1

    .line 734
    iget v11, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget v12, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_0

    .line 736
    iget v11, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v12, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 737
    const/4 v6, 0x1

    goto :goto_2

    .line 742
    :cond_4
    iget v11, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v11, v8, :cond_0

    .line 743
    iget v11, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v12, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v11, v12, :cond_5

    .line 745
    move v7, v8

    .line 748
    :cond_5
    iput v8, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 749
    const/4 v6, 0x1

    goto :goto_2

    .line 753
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v8           #newPos:I
    :cond_6
    if-eqz v4, :cond_7

    .line 754
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 757
    :cond_7
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v12, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 759
    if-eqz v6, :cond_a

    .line 761
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 762
    .local v1, childCount:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_9

    .line 763
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 765
    .local v5, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v11, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_8

    .line 766
    const/4 v11, 0x0

    iput v11, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 762
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 770
    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v7, v10, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 771
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 773
    .end local v1           #childCount:I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2254
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 2479
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2480
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2481
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2482
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2483
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 2484
    .local v3, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2486
    const/4 v4, 0x1

    .line 2491
    .end local v0           #child:Landroid/view/View;
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    return v4

    .line 2480
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2491
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 630
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 631
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 632
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1955
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1956
    const/4 v0, 0x0

    .line 1958
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    .line 1959
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 1962
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1963
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1964
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1965
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 1967
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1968
    neg-int v4, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1969
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1970
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1971
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1973
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1974
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1975
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 1976
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1978
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1979
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1980
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1981
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1982
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1989
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1991
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1993
    :cond_3
    return-void

    .line 1985
    :cond_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1986
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 618
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 619
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 620
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 623
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2266
    const/4 v0, 0x0

    .line 2267
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2268
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2288
    :cond_0
    :goto_0
    return v0

    .line 2270
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2271
    goto :goto_0

    .line 2273
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2274
    goto :goto_0

    .line 2276
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2279
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2280
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2281
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2282
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2268
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2496
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2511
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 2501
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 1139
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1140
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1141
    :cond_0
    const/4 v1, 0x0

    .line 1145
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1143
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1145
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 1128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1129
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1130
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1134
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1128
    .restart local v1       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1134
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 1149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1150
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1151
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v2, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1155
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1149
    .restart local v1       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1155
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 310
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 311
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 312
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 313
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 314
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 315
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 316
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    .line 317
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 318
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 319
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 320
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 322
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 323
    .local v2, density:F
    const/high16 v3, 0x41c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    .line 324
    const/high16 v3, 0x4000

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    .line 325
    const/high16 v3, 0x4180

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    .line 327
    new-instance v3, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 329
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 331
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 334
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1160
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1162
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 1997
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2000
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v13, :cond_2

    .line 2001
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v10

    .line 2002
    .local v10, scrollX:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v11

    .line 2004
    .local v11, width:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2005
    .local v7, marginOffset:F
    const/4 v5, 0x0

    .line 2006
    .local v5, itemIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2007
    .local v3, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v8, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2008
    .local v8, offset:F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2009
    .local v4, itemCount:I
    iget v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2010
    .local v2, firstPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v6, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2011
    .local v6, lastPos:I
    move v9, v2

    .local v9, pos:I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2012
    :goto_1
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2013
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_1

    .line 2017
    :cond_0
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2018
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2019
    .local v1, drawAt:F
    iget v13, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v14, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2026
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2027
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f00

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2029
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2032
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2037
    .end local v1           #drawAt:F
    .end local v2           #firstPos:I
    .end local v3           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v4           #itemCount:I
    .end local v5           #itemIndex:I
    .end local v6           #lastPos:I
    .end local v7           #marginOffset:F
    .end local v8           #offset:F
    .end local v9           #pos:I
    .end local v10           #scrollX:I
    .end local v11           #width:I
    :cond_2
    return-void

    .line 2021
    .restart local v2       #firstPos:I
    .restart local v3       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v4       #itemCount:I
    .restart local v5       #itemIndex:I
    .restart local v6       #lastPos:I
    .restart local v7       #marginOffset:F
    .restart local v8       #offset:F
    .restart local v9       #pos:I
    .restart local v10       #scrollX:I
    .restart local v11       #width:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v13, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2022
    .local v12, widthFactor:F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2023
    .restart local v1       #drawAt:F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2011
    .end local v12           #widthFactor:F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 1559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1562
    .local v6, action:I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1565
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1566
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1567
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1568
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1569
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1570
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1573
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mSetLongClickFlag:Z

    .line 1575
    const/4 v0, 0x0

    .line 1704
    :goto_0
    return v0

    .line 1580
    :cond_2
    if-eqz v6, :cond_4

    .line 1581
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 1583
    const/4 v0, 0x1

    goto :goto_0

    .line 1585
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    .line 1587
    const/4 v0, 0x0

    goto :goto_0

    .line 1591
    :cond_4
    sparse-switch v6, :sswitch_data_0

    .line 1695
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1696
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1698
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1704
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1605
    :sswitch_0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mSetLongClickFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1607
    const/4 v0, 0x0

    goto :goto_0

    .line 1612
    :cond_7
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1613
    .local v7, activePointerId:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    .line 1618
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1619
    .local v9, pointerIndex:I
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1620
    .local v10, x:F
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1621
    .local v8, dx:F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1622
    .local v11, xDiff:F
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1623
    .local v12, y:F
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1626
    .local v13, yDiff:F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1629
    iput v10, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 1630
    iput v12, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1631
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1632
    const/4 v0, 0x0

    goto :goto_0

    .line 1634
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    cmpl-float v0, v11, v13

    if-lez v0, :cond_b

    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1637
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1638
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1640
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1651
    :cond_9
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1653
    invoke-direct {p0, v10}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1654
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1638
    :cond_a
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1642
    :cond_b
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 1648
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1665
    .end local v7           #activePointerId:I
    .end local v8           #dx:F
    .end local v9           #pointerIndex:I
    .end local v10           #x:F
    .end local v11           #xDiff:F
    .end local v12           #y:F
    .end local v13           #yDiff:F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1667
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1668
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1670
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1671
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 1674
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1675
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1676
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1677
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1678
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1680
    :cond_c
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 1681
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1691
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1591
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1298
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1299
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1300
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    .line 1303
    .local v5, count:I
    sub-int v20, p4, p2

    .line 1304
    .local v20, width:I
    sub-int v7, p5, p3

    .line 1305
    .local v7, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v15

    .line 1306
    .local v15, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v17

    .line 1307
    .local v17, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v16

    .line 1308
    .local v16, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v14

    .line 1309
    .local v14, paddingBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v18

    .line 1311
    .local v18, scrollX:I
    const/4 v6, 0x0

    .line 1315
    .local v6, decorCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_1

    .line 1316
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1317
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1318
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1319
    .local v13, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    const/4 v3, 0x0

    .line 1320
    .local v3, childLeft:I
    const/4 v4, 0x0

    .line 1321
    .local v4, childTop:I
    iget-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1322
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v9, v22, 0x7

    .line 1323
    .local v9, hgrav:I
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v19, v22, 0x70

    .line 1324
    .local v19, vgrav:I
    packed-switch v9, :pswitch_data_0

    .line 1326
    :pswitch_0
    move v3, v15

    .line 1341
    :goto_1
    sparse-switch v19, :sswitch_data_0

    .line 1343
    move/from16 v4, v17

    .line 1358
    :goto_2
    add-int v3, v3, v18

    .line 1359
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v22, v22, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1362
    add-int/lit8 v6, v6, 0x1

    .line 1315
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v9           #hgrav:I
    .end local v13           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v19           #vgrav:I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1329
    .restart local v3       #childLeft:I
    .restart local v4       #childTop:I
    .restart local v9       #hgrav:I
    .restart local v13       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v19       #vgrav:I
    :pswitch_1
    move v3, v15

    .line 1330
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v15, v15, v22

    .line 1331
    goto :goto_1

    .line 1333
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    sub-int v22, v20, v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1335
    goto :goto_1

    .line 1337
    :pswitch_3
    sub-int v22, v20, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    sub-int v3, v22, v23

    .line 1338
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v16, v16, v22

    goto :goto_1

    .line 1346
    :sswitch_0
    move/from16 v4, v17

    .line 1347
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v17, v17, v22

    .line 1348
    goto :goto_2

    .line 1350
    :sswitch_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v22, v7, v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1352
    goto :goto_2

    .line 1354
    :sswitch_2
    sub-int v22, v7, v14

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    sub-int v4, v22, v23

    .line 1355
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v14, v14, v22

    goto :goto_2

    .line 1368
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v9           #hgrav:I
    .end local v13           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v19           #vgrav:I
    :cond_1
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v5, :cond_4

    .line 1369
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1370
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1371
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1373
    .restart local v13       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v11

    .local v11, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v11, :cond_3

    .line 1374
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v12, v0

    .line 1375
    .local v12, loff:I
    add-int v3, v15, v12

    .line 1376
    .restart local v3       #childLeft:I
    move/from16 v4, v17

    .line 1377
    .restart local v4       #childTop:I
    iget-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1380
    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1381
    sub-int v22, v20, v15

    sub-int v22, v22, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1384
    .local v21, widthSpec:I
    sub-int v22, v7, v17

    sub-int v22, v22, v14

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1387
    .local v8, heightSpec:I
    move/from16 v0, v21

    invoke-virtual {v2, v0, v8}, Landroid/view/View;->measure(II)V

    .line 1392
    .end local v8           #heightSpec:I
    .end local v21           #widthSpec:I
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v22, v22, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v23, v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1368
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v11           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v12           #loff:I
    .end local v13           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1398
    .end local v2           #child:Landroid/view/View;
    :cond_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    .line 1399
    sub-int v22, v7, v14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 1400
    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    .line 1401
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1402
    return-void

    .line 1324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1341
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1171
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1174
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1175
    .local v15, measuredWidth:I
    div-int/lit8 v14, v15, 0xa

    .line 1176
    .local v14, maxGutterSize:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    .line 1179
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1180
    .local v5, childWidthSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1187
    .local v4, childHeightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v16

    .line 1188
    .local v16, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1189
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1190
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1191
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1192
    .local v13, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1193
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1194
    .local v11, hgrav:I
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1195
    .local v17, vgrav:I
    const/high16 v18, -0x8000

    .line 1196
    .local v18, widthMode:I
    const/high16 v8, -0x8000

    .line 1197
    .local v8, heightMode:I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1198
    .local v7, consumeVertical:Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1200
    .local v6, consumeHorizontal:Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1201
    const/high16 v18, 0x4000

    .line 1206
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1207
    .local v19, widthSize:I
    move v9, v4

    .line 1208
    .local v9, heightSize:I
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1209
    const/high16 v18, 0x4000

    .line 1210
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1211
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1214
    :cond_3
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1215
    const/high16 v8, 0x4000

    .line 1216
    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1217
    iget v9, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    .line 1220
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1221
    .local v20, widthSpec:I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1222
    .local v10, heightSpec:I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1224
    if-eqz v7, :cond_9

    .line 1225
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1188
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v13           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v17           #vgrav:I
    .end local v18           #widthMode:I
    .end local v19           #widthSize:I
    .end local v20           #widthSpec:I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1197
    .restart local v8       #heightMode:I
    .restart local v11       #hgrav:I
    .restart local v13       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v17       #vgrav:I
    .restart local v18       #widthMode:I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1198
    .restart local v7       #consumeVertical:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1202
    .restart local v6       #consumeHorizontal:Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1203
    const/high16 v8, 0x4000

    goto :goto_3

    .line 1226
    .restart local v9       #heightSize:I
    .restart local v10       #heightSpec:I
    .restart local v19       #widthSize:I
    .restart local v20       #widthSpec:I
    :cond_9
    if-eqz v6, :cond_5

    .line 1227
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1233
    .end local v3           #child:Landroid/view/View;
    .end local v6           #consumeHorizontal:Z
    .end local v7           #consumeVertical:Z
    .end local v8           #heightMode:I
    .end local v9           #heightSize:I
    .end local v10           #heightSpec:I
    .end local v11           #hgrav:I
    .end local v13           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v17           #vgrav:I
    .end local v18           #widthMode:I
    .end local v19           #widthSize:I
    .end local v20           #widthSpec:I
    :cond_a
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1234
    const/high16 v21, 0x4000

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1237
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1239
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v16

    .line 1243
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1244
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1245
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 1249
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1250
    .restart local v13       #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1251
    :cond_b
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1253
    .restart local v20       #widthSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1243
    .end local v13           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v20           #widthSpec:I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1257
    .end local v3           #child:Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 16
    .parameter "position"
    .parameter "offset"
    .parameter "offsetPixels"

    .prologue
    .line 1471
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    if-lez v14, :cond_2

    .line 1472
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1473
    .local v12, scrollX:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v10

    .line 1474
    .local v10, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v11

    .line 1475
    .local v11, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v13

    .line 1476
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1477
    .local v4, childCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1478
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1479
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1480
    .local v9, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v14, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_1

    .line 1477
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1482
    :cond_1
    iget v14, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v14, 0x7

    .line 1483
    .local v7, hgrav:I
    const/4 v5, 0x0

    .line 1484
    .local v5, childLeft:I
    packed-switch v7, :pswitch_data_0

    .line 1486
    :pswitch_0
    move v5, v10

    .line 1501
    :goto_2
    add-int/2addr v5, v12

    .line 1503
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v6, v5, v14

    .line 1504
    .local v6, childOffset:I
    if-eqz v6, :cond_0

    .line 1505
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1489
    .end local v6           #childOffset:I
    :pswitch_1
    move v5, v10

    .line 1490
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v10, v14

    .line 1491
    goto :goto_2

    .line 1493
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v13, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1495
    goto :goto_2

    .line 1497
    :pswitch_3
    sub-int v14, v13, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v5, v14, v15

    .line 1498
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v11, v14

    goto :goto_2

    .line 1510
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCount:I
    .end local v5           #childLeft:I
    .end local v7           #hgrav:I
    .end local v8           #i:I
    .end local v9           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v10           #paddingLeft:I
    .end local v11           #paddingRight:I
    .end local v12           #scrollX:I
    .end local v13           #width:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_3

    .line 1511
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1513
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v14, :cond_4

    .line 1514
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v14, v0, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1516
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1517
    return-void

    .line 1484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2448
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2449
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2450
    const/4 v6, 0x0

    .line 2451
    .local v6, index:I
    const/4 v5, 0x1

    .line 2452
    .local v5, increment:I
    move v2, v1

    .line 2458
    .local v2, end:I
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2459
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2460
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2461
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2462
    .local v4, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2463
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2464
    const/4 v7, 0x1

    .line 2469
    .end local v0           #child:Landroid/view/View;
    .end local v4           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_2
    return v7

    .line 2454
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2455
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2456
    .restart local v5       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 2458
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2469
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1083
    instance-of v1, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1084
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1099
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1088
    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1089
    .local v0, ss:Landroid/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1091
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1092
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1093
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1095
    :cond_1
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 1096
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1097
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1072
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1073
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1074
    .local v0, ss:Landroid/support/v4/view/ViewPager$SavedState;
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iput v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1075
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1076
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1078
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1264
    if-eq p1, p3, :cond_0

    .line 1265
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1267
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 1709
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1713
    const/16 v22, 0x1

    .line 1838
    :goto_0
    return v22

    .line 1716
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_1

    .line 1719
    const/16 v22, 0x0

    goto :goto_0

    .line 1722
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v22

    if-nez v22, :cond_3

    .line 1724
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 1727
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 1728
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1730
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1732
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1733
    .local v4, action:I
    const/4 v10, 0x0

    .line 1735
    .local v10, needsInvalidate:Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1835
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v10, :cond_6

    .line 1836
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1838
    :cond_6
    const/16 v22, 0x1

    goto :goto_0

    .line 1737
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1738
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1739
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1740
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1741
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1744
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1745
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1751
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mSetLongClickFlag:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 1753
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1758
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    .line 1759
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v13

    .line 1760
    .local v13, pointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1761
    .local v18, x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 1762
    .local v19, xDiff:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1763
    .local v20, y:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1765
    .local v21, yDiff:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v19, v22

    if-lez v22, :cond_8

    cmpl-float v22, v19, v21

    if-lez v22, :cond_8

    .line 1767
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1768
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1770
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1771
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1775
    .end local v13           #pointerIndex:I
    .end local v18           #x:F
    .end local v19           #xDiff:F
    .end local v20           #y:F
    .end local v21           #yDiff:F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1777
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1779
    .local v5, activePointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1780
    .restart local v18       #x:F
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v22

    or-int v10, v10, v22

    .line 1781
    goto/16 :goto_1

    .line 1768
    .end local v5           #activePointerIndex:I
    .restart local v13       #pointerIndex:I
    .restart local v19       #xDiff:F
    .restart local v20       #y:F
    .restart local v21       #yDiff:F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    goto :goto_2

    .line 1784
    .end local v13           #pointerIndex:I
    .end local v18           #x:F
    .end local v19           #xDiff:F
    .end local v20           #y:F
    .end local v21           #yDiff:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 1786
    .local v16, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1787
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    .line 1789
    .local v9, initialVelocity:I
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1790
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v17

    .line 1791
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v14

    .line 1792
    .local v14, scrollX:I
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v7

    .line 1793
    .local v7, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v6, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1794
    .local v6, currentPage:I
    int-to-float v0, v14

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    iget v0, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 1795
    .local v12, pageOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1797
    .restart local v5       #activePointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1798
    .restart local v18       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v15, v0

    .line 1799
    .local v15, totalDelta:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v9, v15}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v11

    .line 1801
    .local v11, nextPage:I
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 1803
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1804
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v23

    or-int v10, v22, v23

    .line 1808
    .end local v5           #activePointerIndex:I
    .end local v6           #currentPage:I
    .end local v7           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v9           #initialVelocity:I
    .end local v11           #nextPage:I
    .end local v12           #pageOffset:F
    .end local v14           #scrollX:I
    .end local v15           #totalDelta:I
    .end local v16           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v17           #width:I
    .end local v18           #x:F
    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mSetLongClickFlag:Z

    goto/16 :goto_1

    .line 1812
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1813
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1814
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1815
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v23

    or-int v10, v22, v23

    .line 1819
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mSetLongClickFlag:Z

    goto/16 :goto_1

    .line 1823
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 1824
    .local v8, index:I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1825
    .restart local v18       #x:F
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1826
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1830
    .end local v8           #index:I
    .end local v18           #x:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1831
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1735
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2361
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2362
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2369
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2370
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 777
    return-void
.end method

.method populate(I)V
    .locals 25
    .parameter "newCurrentItem"

    .prologue
    .line 780
    const/16 v18, 0x0

    .line 781
    .local v18, oldCurInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 782
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v18

    .line 783
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 786
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 930
    :cond_1
    return-void

    .line 794
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 808
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    move/from16 v19, v0

    .line 809
    .local v19, pageLimit:I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    sub-int v23, v23, v19

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 810
    .local v21, startPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 811
    .local v4, N:I
    add-int/lit8 v22, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    add-int v23, v23, v19

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 814
    .local v10, endPos:I
    const/4 v7, -0x1

    .line 815
    .local v7, curIndex:I
    const/4 v8, 0x0

    .line 816
    .local v8, curItem:Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_3

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 818
    .local v14, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 819
    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object v8, v14

    .line 824
    .end local v14           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_3
    if-nez v8, :cond_4

    if-lez v4, :cond_4

    .line 825
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v8

    .line 831
    :cond_4
    if-eqz v8, :cond_7

    .line 832
    const/4 v11, 0x0

    .line 833
    .local v11, extraWidthLeft:F
    add-int/lit8 v15, v7, -0x1

    .line 834
    .local v15, itemIndex:I
    if-ltz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 835
    .restart local v14       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1
    const/high16 v22, 0x4000

    iget v0, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v23, v0

    sub-float v16, v22, v23

    .line 836
    .local v16, leftWidthNeeded:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    add-int/lit8 v20, v22, -0x1

    .local v20, pos:I
    :goto_2
    if-ltz v20, :cond_5

    .line 837
    cmpl-float v22, v11, v16

    if-ltz v22, :cond_e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 838
    if-nez v14, :cond_b

    .line 860
    :cond_5
    iget v12, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 861
    .local v12, extraWidthRight:F
    add-int/lit8 v15, v7, 0x1

    .line 862
    const/high16 v22, 0x4000

    cmpg-float v22, v12, v22

    if-gez v22, :cond_6

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 864
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v22, v0

    add-int/lit8 v20, v22, 0x1

    :goto_4
    move/from16 v0, v20

    if-ge v0, v4, :cond_6

    .line 865
    const/high16 v22, 0x4000

    cmpl-float v22, v12, v22

    if-ltz v22, :cond_16

    move/from16 v0, v20

    if-le v0, v10, :cond_16

    .line 866
    if-nez v14, :cond_13

    .line 887
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v7, v1}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    .line 897
    .end local v11           #extraWidthLeft:F
    .end local v12           #extraWidthRight:F
    .end local v14           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v15           #itemIndex:I
    .end local v16           #leftWidthNeeded:F
    .end local v20           #pos:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v24, v0

    if-eqz v8, :cond_1a

    iget-object v0, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v22, v0

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 902
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    .line 903
    .local v6, childCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_6
    if-ge v13, v6, :cond_1b

    .line 904
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 905
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 906
    .local v17, lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_8

    .line 908
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 909
    .restart local v14       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v14, :cond_8

    .line 910
    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 903
    .end local v14           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 816
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childCount:I
    .end local v13           #i:I
    .end local v17           #lp:Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v14       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 834
    .end local v14           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v11       #extraWidthLeft:F
    .restart local v15       #itemIndex:I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 841
    .restart local v14       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v16       #leftWidthNeeded:F
    .restart local v20       #pos:I
    :cond_b
    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    iget-boolean v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    iget-object v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 844
    add-int/lit8 v15, v15, -0x1

    .line 845
    add-int/lit8 v7, v7, -0x1

    .line 846
    if-ltz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 836
    :cond_c
    :goto_7
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_2

    .line 846
    :cond_d
    const/4 v14, 0x0

    goto :goto_7

    .line 848
    :cond_e
    if-eqz v14, :cond_10

    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 849
    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v11, v11, v22

    .line 850
    add-int/lit8 v15, v15, -0x1

    .line 851
    if-ltz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_8
    goto :goto_7

    :cond_f
    const/4 v14, 0x0

    goto :goto_8

    .line 853
    :cond_10
    add-int/lit8 v22, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 854
    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v11, v11, v22

    .line 855
    add-int/lit8 v7, v7, 0x1

    .line 856
    if-ltz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_9
    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    goto :goto_9

    .line 863
    .restart local v12       #extraWidthRight:F
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 869
    :cond_13
    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    iget-boolean v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v22, v0

    if-nez v22, :cond_14

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v22, v0

    iget-object v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    .line 864
    :cond_14
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 872
    :cond_15
    const/4 v14, 0x0

    goto :goto_a

    .line 874
    :cond_16
    if-eqz v14, :cond_18

    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 875
    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v12, v12, v22

    .line 876
    add-int/lit8 v15, v15, 0x1

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_b
    goto :goto_a

    :cond_17
    const/4 v14, 0x0

    goto :goto_b

    .line 879
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 880
    add-int/lit8 v15, v15, 0x1

    .line 881
    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v22, v0

    add-float v12, v12, v22

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager$ItemInfo;

    move-object/from16 v14, v22

    :goto_c
    goto :goto_a

    :cond_19
    const/4 v14, 0x0

    goto :goto_c

    .line 897
    .end local v11           #extraWidthLeft:F
    .end local v12           #extraWidthRight:F
    .end local v14           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v15           #itemIndex:I
    .end local v16           #leftWidthNeeded:F
    .end local v20           #pos:I
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 915
    .restart local v6       #childCount:I
    .restart local v13       #i:I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 916
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 917
    .local v9, currentFocused:Landroid/view/View;
    if-eqz v9, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 918
    .restart local v14       #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_d
    if-eqz v14, :cond_1c

    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 919
    :cond_1c
    const/4 v13, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_1

    .line 920
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 921
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v14

    .line 922
    if-eqz v14, :cond_1d

    iget v0, v14, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    .line 923
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v22

    if-nez v22, :cond_1

    .line 919
    :cond_1d
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 917
    .end local v5           #child:Landroid/view/View;
    .end local v14           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1e
    const/4 v14, 0x0

    goto :goto_d
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 9
    .parameter "adapter"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 353
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 355
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 356
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 357
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 358
    .local v1, ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v5, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v1           #ii:Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 361
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 362
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    .line 363
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 364
    invoke-virtual {p0, v6, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 367
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 368
    .local v2, oldAdapter:Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 370
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_3

    .line 371
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 372
    new-instance v3, Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v3, p0, v7}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 374
    :cond_2
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 375
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 376
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 377
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v3, :cond_5

    .line 378
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 379
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v3, v6, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 380
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 381
    iput-object v7, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 382
    iput-object v7, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 388
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    if-eqz v3, :cond_4

    if-eq v2, p1, :cond_4

    .line 389
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, v2, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 391
    :cond_4
    return-void

    .line 384
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 425
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 426
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 427
    return-void

    :cond_0
    move v0, v1

    .line 426
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 437
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 438
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 446
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 11
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 449
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    if-gtz v6, :cond_2

    .line 450
    :cond_0
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    if-nez p3, :cond_3

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v6, p1, :cond_3

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 454
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 458
    :cond_3
    if-gez p1, :cond_6

    .line 459
    const/4 p1, 0x0

    .line 463
    :cond_4
    :goto_1
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 464
    .local v4, pageLimit:I
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v6, v4

    if-gt p1, v6, :cond_5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v6, v4

    if-ge p1, v6, :cond_7

    .line 468
    :cond_5
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 469
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v2, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 460
    .end local v3           #i:I
    .end local v4           #pageLimit:I
    :cond_6
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_4

    .line 461
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 p1, v6, -0x1

    goto :goto_1

    .line 472
    .restart local v4       #pageLimit:I
    :cond_7
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v6, p1, :cond_a

    .line 473
    .local v2, dispatchSelected:Z
    :goto_3
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 474
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 475
    .local v0, curInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 476
    .local v1, destX:I
    if-eqz v0, :cond_8

    .line 477
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 478
    .local v5, width:I
    int-to-float v6, v5

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    iget v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v10, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v1, v6

    .line 481
    .end local v5           #width:I
    :cond_8
    if-eqz p2, :cond_b

    .line 482
    invoke-virtual {p0, v1, v7, p4}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 483
    if-eqz v2, :cond_9

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_9

    .line 484
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 486
    :cond_9
    if-eqz v2, :cond_1

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_1

    .line 487
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto/16 :goto_0

    .end local v0           #curInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v1           #destX:I
    .end local v2           #dispatchSelected:Z
    :cond_a
    move v2, v7

    .line 472
    goto :goto_3

    .line 490
    .restart local v0       #curInfo:Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v1       #destX:I
    .restart local v2       #dispatchSelected:Z
    :cond_b
    if-eqz v2, :cond_c

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_c

    .line 491
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 493
    :cond_c
    if-eqz v2, :cond_d

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v6, :cond_d

    .line 494
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v6, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 496
    :cond_d
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 497
    invoke-virtual {p0, v1, v7}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 508
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 509
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 655
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 691
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 659
    .local v2, sx:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 660
    .local v3, sy:I
    sub-int v4, p1, v2

    .line 661
    .local v4, dx:I
    sub-int v5, p2, v3

    .line 662
    .local v5, dy:I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 663
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->completeScroll()V

    .line 664
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 665
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 669
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 670
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 672
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v12

    .line 673
    .local v12, width:I
    div-int/lit8 v9, v12, 0x2

    .line 674
    .local v9, halfWidth:I
    const/high16 v1, 0x3f80

    const/high16 v13, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 675
    .local v8, distanceRatio:F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 678
    .local v7, distance:F
    const/4 v6, 0x0

    .line 679
    .local v6, duration:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 680
    if-lez p3, :cond_2

    .line 681
    const/high16 v1, 0x447a

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 687
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 689
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 690
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 683
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v14, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 684
    .local v11, pageWidth:F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 685
    .local v10, pageDelta:F
    const/high16 v1, 0x3f80

    add-float/2addr v1, v10

    const/high16 v13, 0x42c8

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 613
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
