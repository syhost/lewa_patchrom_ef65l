.class public Lcom/android/deskclock/timer/TimerFragment;
.super Landroid/app/Fragment;
.source "TimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final HALF_AN_HOUR:J = 0x1b7740L

.field private static final MAX_TIME:J = 0x15743fa0L

#the value of this static final field might be set in the static constructor
.field private static final PI:D = 0.0

.field public static final Resolution480x800:Ljava/lang/String; = "480*800"

.field public static final Resolution800x1280:Ljava/lang/String; = "800*1280"

.field public static mResolution:Ljava/lang/String;


# instance fields
.field private am:Landroid/app/AlarmManager;

.field private center_x:I

.field private center_y:I

.field private circleNumber:I

.field private initAnagle:D

.field private isMaxTime:Z

.field private mCancel:Landroid/widget/Button;

.field private final mClockTick:Ljava/lang/Runnable;

.field private mCount:I

.field private mFiveMinute:Landroid/widget/Button;

.field private mInitStart:Landroid/widget/Button;

.field private mOneMinute:Landroid/widget/Button;

.field private mPause:Landroid/widget/Button;

.field private mQuickTimeButton:Landroid/view/View;

.field private mRemainTimer:Lcom/android/deskclock/timer/Timer;

.field private mStart:Landroid/widget/Button;

.field private mTenMinute:Landroid/widget/Button;

.field private mTicking:Z

.field private mTimerIndicate:Lcom/android/deskclock/timer/TimerIndicate;

.field private mTimerObj:Lcom/android/deskclock/timer/TimerObj;

.field private mTimerRing:Landroid/widget/ImageView;

.field private mTimerRingUri:Landroid/widget/TextView;

.field private maxX:I

.field private maxY:I

.field private minX:I

.field private minY:I

.field pendingIntent:Landroid/app/PendingIntent;

.field private prefs:Landroid/content/SharedPreferences;

.field private previousAngle:D

.field private previousX:D

.field private previousY:D

.field private radius:I

.field private width:I

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-wide/high16 v0, -0x4010

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/deskclock/timer/TimerFragment;->PI:D

    .line 73
    const-string v0, "480*800"

    sput-object v0, Lcom/android/deskclock/timer/TimerFragment;->mResolution:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    iput v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCount:I

    .line 64
    iput-wide v1, p0, Lcom/android/deskclock/timer/TimerFragment;->initAnagle:D

    .line 65
    iput v0, p0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    .line 66
    iput-wide v1, p0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    .line 74
    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->isMaxTime:Z

    .line 218
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/timer/TimerFragment$1;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/timer/TimerFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/deskclock/timer/TimerFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/deskclock/timer/TimerFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/timer/TimerFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method private calibrationXY()V
    .locals 10

    .prologue
    const-wide v8, 0x40cc200000000000L

    .line 481
    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerFragment;->previousX:D

    iget-wide v6, p0, Lcom/android/deskclock/timer/TimerFragment;->previousX:D

    mul-double/2addr v4, v6

    sub-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 482
    .local v2, yy:D
    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerFragment;->previousY:D

    iget-wide v6, p0, Lcom/android/deskclock/timer/TimerFragment;->previousY:D

    mul-double/2addr v4, v6

    sub-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 483
    .local v0, xx:D
    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    sub-double v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 484
    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerFragment;->previousY:D

    iput-wide v4, p0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-wide v4, p0, Lcom/android/deskclock/timer/TimerFragment;->previousX:D

    iput-wide v4, p0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    goto :goto_0
.end method

.method private onRestoreRingtone()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "timer_ringtoneuri"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, timer_ringtoneuri:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 327
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private setInitStartButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 358
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mQuickTimeButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mInitStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOneMinute:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mFiveMinute:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTenMinute:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    return-void
.end method

.method private setResetButton()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mQuickTimeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mInitStart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOneMinute:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mFiveMinute:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTenMinute:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerIndicate:Lcom/android/deskclock/timer/TimerIndicate;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/TimerIndicate;->setAngle(I)V

    .line 378
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    .line 379
    return-void
.end method

.method private setRunningButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mQuickTimeButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOneMinute:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mFiveMinute:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTenMinute:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 355
    return-void
.end method

.method private setTimeAngle(I)V
    .locals 3
    .parameter "minute"

    .prologue
    .line 475
    mul-int/lit8 v0, p1, 0xc

    .line 476
    .local v0, angle:I
    int-to-double v1, v0

    iput-wide v1, p0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    .line 477
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerIndicate:Lcom/android/deskclock/timer/TimerIndicate;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/timer/TimerIndicate;->setAngle(I)V

    .line 478
    return-void
.end method

.method private startClockTicks()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/deskclock/timer/Timer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 209
    return-void
.end method

.method private stopClockTicks()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/Timer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 332
    const/16 v3, 0x65

    if-ne p1, v3, :cond_0

    if-eqz p3, :cond_0

    .line 333
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 335
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 338
    .local v1, ringtone:Landroid/media/Ringtone;
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerRingUri:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 341
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "timer_ringtoneuri"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    .end local v1           #ringtone:Landroid/media/Ringtone;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v6, 0x7f0c0058

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 244
    :pswitch_1
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    invoke-virtual {v2, v9}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 245
    :cond_1
    new-instance v2, Lcom/android/deskclock/timer/TimerObj;

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v3}, Lcom/android/deskclock/timer/Timer;->getmOriginTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/deskclock/timer/TimerObj;-><init>(J)V

    iput-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    .line 247
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iput v9, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 248
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->startClockTicks()V

    .line 249
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setRunningButton()V

    .line 250
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 251
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->am:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 252
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->am:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    invoke-virtual {v3, v9}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 255
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/android/deskclock/timer/TimerObj;->cleanTimersFromSharedPrefs(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->am:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 259
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iget v2, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v2, v9, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopClockTicks()V

    .line 261
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    const v3, 0x7f0c005a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 262
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iput v10, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    goto :goto_0

    .line 263
    :cond_3
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iget v2, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v2, v10, :cond_0

    .line 264
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 265
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->startClockTicks()V

    .line 266
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iput v9, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 267
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iget-wide v5, v5, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iget-wide v7, v7, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 269
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->am:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    invoke-virtual {v5, v9}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 275
    :pswitch_3
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->am:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 276
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    .line 277
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopClockTicks()V

    .line 278
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setResetButton()V

    .line 279
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 281
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/deskclock/timer/TimerObj;->cleanTimersFromSharedPrefs(Landroid/content/SharedPreferences;)V

    .line 282
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v2}, Lcom/android/deskclock/timer/Timer;->setToInitState()V

    .line 283
    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    .line 284
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    goto/16 :goto_0

    .line 287
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :pswitch_4
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setInitStartButton()V

    .line 288
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Lcom/android/deskclock/timer/Timer;->setmOriginTime(J)V

    .line 289
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v2, v5}, Lcom/android/deskclock/timer/Timer;->setNowProgress(I)V

    .line 290
    invoke-direct {p0, v9}, Lcom/android/deskclock/timer/TimerFragment;->setTimeAngle(I)V

    goto/16 :goto_0

    .line 293
    :pswitch_5
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setInitStartButton()V

    .line 294
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v2, v3, v4}, Lcom/android/deskclock/timer/Timer;->setmOriginTime(J)V

    .line 295
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v2, v5}, Lcom/android/deskclock/timer/Timer;->setNowProgress(I)V

    .line 296
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->setTimeAngle(I)V

    goto/16 :goto_0

    .line 299
    :pswitch_6
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setInitStartButton()V

    .line 300
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    const-wide/32 v3, 0x927c0

    invoke-virtual {v2, v3, v4}, Lcom/android/deskclock/timer/Timer;->setmOriginTime(J)V

    .line 301
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v2, v5}, Lcom/android/deskclock/timer/Timer;->setNowProgress(I)V

    .line 302
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->setTimeAngle(I)V

    goto/16 :goto_0

    .line 305
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 309
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const/16 v2, 0x65

    invoke-virtual {p0, v0, v2}, Lcom/android/deskclock/timer/TimerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x7f10004e
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->am:Landroid/app/AlarmManager;

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v5, "TIMER_ALERT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->pendingIntent:Landroid/app/PendingIntent;

    .line 93
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 94
    .local v2, manage:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 95
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 96
    .local v3, point:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 97
    iget v5, v3, Landroid/graphics/Point;->x:I

    const/16 v6, 0x1e0

    if-ne v5, v6, :cond_1

    iget v5, v3, Landroid/graphics/Point;->y:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_1

    .line 98
    const-string v5, "480*800"

    sput-object v5, Lcom/android/deskclock/timer/TimerFragment;->mResolution:Ljava/lang/String;

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 103
    .local v4, rec:Landroid/content/res/Resources;
    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->center_x:I

    .line 104
    const v5, 0x7f0a0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->center_y:I

    .line 105
    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->radius:I

    .line 106
    const v5, 0x7f0a0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->width:I

    .line 107
    iget v5, p0, Lcom/android/deskclock/timer/TimerFragment;->center_x:I

    iget v6, p0, Lcom/android/deskclock/timer/TimerFragment;->radius:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->maxX:I

    .line 108
    iget v5, p0, Lcom/android/deskclock/timer/TimerFragment;->center_x:I

    iget v6, p0, Lcom/android/deskclock/timer/TimerFragment;->radius:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->minX:I

    .line 109
    iget v5, p0, Lcom/android/deskclock/timer/TimerFragment;->center_y:I

    iget v6, p0, Lcom/android/deskclock/timer/TimerFragment;->radius:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->maxY:I

    .line 110
    iget v5, p0, Lcom/android/deskclock/timer/TimerFragment;->center_y:I

    iget v6, p0, Lcom/android/deskclock/timer/TimerFragment;->radius:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->minY:I

    .line 111
    return-void

    .line 99
    .end local v4           #rec:Landroid/content/res/Resources;
    :cond_1
    iget v5, v3, Landroid/graphics/Point;->y:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_0

    iget v5, v3, Landroid/graphics/Point;->y:I

    const/16 v6, 0x500

    if-ne v5, v6, :cond_0

    .line 100
    const-string v5, "800*1280"

    sput-object v5, Lcom/android/deskclock/timer/TimerFragment;->mResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f100051

    const v3, 0x7f10004f

    .line 116
    const v1, 0x7f040022

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, view:Landroid/view/View;
    const v1, 0x7f10004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerIndicate;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerIndicate:Lcom/android/deskclock/timer/TimerIndicate;

    .line 118
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerIndicate:Lcom/android/deskclock/timer/TimerIndicate;

    invoke-virtual {v1, p0}, Lcom/android/deskclock/timer/TimerIndicate;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    const v1, 0x7f10004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/Timer;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    .line 120
    const v1, 0x7f10004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mInitStart:Landroid/widget/Button;

    .line 121
    const v1, 0x7f10004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    .line 122
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    .line 123
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    .line 124
    const v1, 0x7f100053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mOneMinute:Landroid/widget/Button;

    .line 125
    const v1, 0x7f100054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mFiveMinute:Landroid/widget/Button;

    .line 126
    const v1, 0x7f100055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTenMinute:Landroid/widget/Button;

    .line 127
    const v1, 0x7f100052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mQuickTimeButton:Landroid/view/View;

    .line 128
    const v1, 0x7f100050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerRing:Landroid/widget/ImageView;

    .line 129
    const v1, 0x7f100057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerRingUri:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerRing:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mOneMinute:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mFiveMinute:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTenMinute:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    .line 138
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    .line 139
    return-object v0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 194
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "mOriginTime"

    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v4}, Lcom/android/deskclock/timer/Timer;->getmOriginTime()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {v0, v1}, Lcom/android/deskclock/timer/TimerObj;->putTimersInSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopClockTicks()V

    .line 204
    return-void
.end method

.method public onResume()V
    .locals 15

    .prologue
    const-wide/32 v13, 0x1b7740

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v4, timers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->prefs:Landroid/content/SharedPreferences;

    .line 148
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "mOriginTime"

    invoke-interface {v5, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 149
    .local v0, mOriginTime:J
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v5, v4}, Lcom/android/deskclock/timer/TimerObj;->getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 150
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 151
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/timer/TimerObj;

    iput-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    .line 152
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iget v5, v5, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v5, v9, :cond_3

    .line 153
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    invoke-virtual {v5, v9}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v5

    cmp-long v5, v5, v10

    if-lez v5, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->startClockTicks()V

    .line 155
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setRunningButton()V

    .line 179
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v5}, Lcom/android/deskclock/timer/TimerObj;->cleanTimersFromSharedPrefs(Landroid/content/SharedPreferences;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 182
    .local v3, ringtone:Landroid/media/Ringtone;
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerRingUri:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const-wide/high16 v5, 0x406e

    iput-wide v5, p0, Lcom/android/deskclock/timer/TimerFragment;->previousX:D

    .line 184
    const-wide v5, 0x406a400000000000L

    iput-wide v5, p0, Lcom/android/deskclock/timer/TimerFragment;->previousY:D

    .line 185
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iget v5, v5, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v5, v9, :cond_1

    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    invoke-virtual {v5, v9}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v5

    cmp-long v5, v5, v10

    if-gez v5, :cond_1

    .line 186
    iput-object v12, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    .line 188
    :cond_1
    return-void

    .line 157
    .end local v3           #ringtone:Landroid/media/Ringtone;
    :cond_2
    iput-object v12, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    .line 158
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setResetButton()V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    iget v5, v5, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 161
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    invoke-virtual {v6, v7}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v6

    sget-object v8, Lcom/android/deskclock/TimeResourceSize;->MEDIUM:Lcom/android/deskclock/TimeResourceSize;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/deskclock/timer/Timer;->setTime(JLcom/android/deskclock/TimeResourceSize;)V

    .line 163
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setRunningButton()V

    .line 164
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPause:Landroid/widget/Button;

    const v6, 0x7f0c005a

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 167
    :cond_4
    cmp-long v5, v0, v10

    if-lez v5, :cond_5

    .line 168
    div-long v5, v0, v13

    long-to-int v5, v5

    iput v5, p0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    .line 169
    rem-long v5, v0, v13

    const-wide/32 v7, 0xea60

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 170
    .local v2, minute:I
    invoke-direct {p0, v2}, Lcom/android/deskclock/timer/TimerFragment;->setTimeAngle(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setInitStartButton()V

    .line 177
    .end local v2           #minute:I
    :goto_1
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v5, v0, v1}, Lcom/android/deskclock/timer/Timer;->setmOriginTime(J)V

    goto/16 :goto_0

    .line 173
    :cond_5
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/deskclock/timer/TimerFragment;->initAnagle:D

    .line 174
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->setResetButton()V

    .line 175
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerIndicate:Lcom/android/deskclock/timer/TimerIndicate;

    iget-wide v6, p0, Lcom/android/deskclock/timer/TimerFragment;->initAnagle:D

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/deskclock/timer/TimerIndicate;->setAngle(I)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "v"
    .parameter "event"

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mTimerObj:Lcom/android/deskclock/timer/TimerObj;

    invoke-virtual {v15}, Lcom/android/deskclock/timer/TimerObj;->isInUse()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 384
    const/4 v15, 0x1

    .line 471
    :goto_0
    return v15

    .line 386
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-double v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-double v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 389
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->maxY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->maxY:I

    int-to-double v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->minY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v15, v15, v17

    if-gez v15, :cond_2

    .line 392
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->minY:I

    int-to-double v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    .line 393
    :cond_2
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->maxX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_3

    .line 394
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->maxX:I

    int-to-double v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    .line 395
    :cond_3
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->minX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v15, v15, v17

    if-gez v15, :cond_4

    .line 396
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->minX:I

    int-to-double v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    .line 397
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->center_y:I

    int-to-double v15, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    const-wide/high16 v17, 0x3ff0

    mul-double v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->radius:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->acos(D)D

    move-result-wide v15

    sget-wide v17, Lcom/android/deskclock/timer/TimerFragment;->PI:D

    div-double v15, v15, v17

    const-wide v17, 0x4066800000000000L

    mul-double v4, v15, v17

    .line 399
    .local v4, angleCos:D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->center_x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    const-wide/high16 v17, 0x3ff0

    mul-double v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->radius:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->asin(D)D

    move-result-wide v15

    sget-wide v17, Lcom/android/deskclock/timer/TimerFragment;->PI:D

    div-double v15, v15, v17

    const-wide v17, 0x4066800000000000L

    mul-double v6, v15, v17

    .line 401
    .local v6, angleSin:D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->center_y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_6

    .line 402
    const-wide v15, 0x4066800000000000L

    sub-double/2addr v15, v6

    const-wide v17, 0x4076800000000000L

    rem-double v6, v15, v17

    .line 406
    :goto_1
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->center_x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v15, v15, v17

    if-gtz v15, :cond_5

    .line 407
    const-wide v15, 0x4076800000000000L

    sub-double v4, v15, v4

    .line 410
    :cond_5
    add-double v15, v4, v6

    const-wide/high16 v17, 0x4000

    div-double v2, v15, v17

    .line 411
    .local v2, angle:D
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    sub-double v15, v2, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x4059

    cmpl-double v15, v15, v17

    if-lez v15, :cond_7

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    sub-double v15, v2, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide v17, 0x4070400000000000L

    cmpg-double v15, v15, v17

    if-gez v15, :cond_7

    .line 413
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 404
    .end local v2           #angle:D
    :cond_6
    const-wide v15, 0x4076800000000000L

    add-double/2addr v15, v6

    const-wide v17, 0x4076800000000000L

    rem-double v6, v15, v17

    goto :goto_1

    .line 414
    .restart local v2       #angle:D
    :cond_7
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    sub-double v15, v2, v15

    const-wide v17, -0x3f99800000000000L

    cmpg-double v15, v15, v17

    if-gez v15, :cond_b

    .line 415
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    .line 425
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    mul-int/lit16 v15, v15, 0x168

    int-to-double v15, v15

    add-double/2addr v15, v2

    const-wide v17, 0x4076800000000000L

    div-double v15, v15, v17

    const-wide/high16 v17, 0x403e

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x404e

    mul-double v15, v15, v17

    const-wide v17, 0x408f400000000000L

    mul-double v15, v15, v17

    double-to-long v12, v15

    .line 426
    .local v12, remaineTime:J
    const-wide/16 v15, 0x0

    cmp-long v15, v12, v15

    if-gtz v15, :cond_c

    .line 427
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v15}, Lcom/android/deskclock/timer/Timer;->setToInitState()V

    .line 428
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mInitStart:Landroid/widget/Button;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    :goto_2
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "angle : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "circleNumber= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 435
    const-wide/32 v15, 0x15743fa0

    cmp-long v15, v12, v15

    if-lez v15, :cond_9

    .line 436
    const-wide/32 v12, 0x15743fa0

    .line 437
    const-wide v2, 0x4076700000000000L

    .line 438
    const/4 v15, 0x5

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    .line 440
    :cond_9
    const-wide/16 v15, 0x0

    cmp-long v15, v12, v15

    if-lez v15, :cond_d

    .line 441
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v15, v12, v13}, Lcom/android/deskclock/timer/Timer;->setmOriginTime(J)V

    .line 445
    :goto_3
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->previousX:D

    .line 446
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->previousY:D

    .line 447
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    .line 448
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mTimerIndicate:Lcom/android/deskclock/timer/TimerIndicate;

    double-to-int v0, v2

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/deskclock/timer/TimerIndicate;->setAngle(I)V

    .line 471
    .end local v2           #angle:D
    .end local v4           #angleCos:D
    .end local v6           #angleSin:D
    .end local v12           #remaineTime:J
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 416
    .restart local v2       #angle:D
    .restart local v4       #angleCos:D
    .restart local v6       #angleSin:D
    :cond_b
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    sub-double v15, v2, v15

    const-wide v17, 0x4070400000000000L

    cmpl-double v15, v15, v17

    if-lez v15, :cond_8

    .line 417
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    .line 418
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    if-gez v15, :cond_8

    .line 419
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/deskclock/timer/TimerFragment;->circleNumber:I

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/timer/TimerFragment;->setResetButton()V

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    invoke-virtual {v15}, Lcom/android/deskclock/timer/Timer;->setToInitState()V

    .line 422
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 430
    .restart local v12       #remaineTime:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mInitStart:Landroid/widget/Button;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 432
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/deskclock/timer/Timer;->setNowProgress(I)V

    goto/16 :goto_2

    .line 443
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/deskclock/timer/TimerFragment;->mRemainTimer:Lcom/android/deskclock/timer/Timer;

    const-wide/16 v16, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/android/deskclock/timer/Timer;->setmOriginTime(J)V

    goto :goto_3

    .line 449
    .end local v2           #angle:D
    .end local v4           #angleCos:D
    .end local v6           #angleSin:D
    .end local v12           #remaineTime:J
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Lcom/android/deskclock/DeskClockMainActivity;

    invoke-virtual {v15}, Lcom/android/deskclock/DeskClockMainActivity;->getmViewPager()Lcom/android/deskclock/DeskClockViewPager;

    move-result-object v14

    .line 452
    .local v14, viewPager:Lcom/android/deskclock/DeskClockViewPager;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/deskclock/DeskClockViewPager;->setCanScroll(Z)V

    .line 453
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 454
    .end local v14           #viewPager:Lcom/android/deskclock/DeskClockViewPager;
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_a

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/deskclock/timer/TimerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    check-cast v15, Lcom/android/deskclock/DeskClockMainActivity;

    invoke-virtual {v15}, Lcom/android/deskclock/DeskClockMainActivity;->getmViewPager()Lcom/android/deskclock/DeskClockViewPager;

    move-result-object v14

    .line 457
    .restart local v14       #viewPager:Lcom/android/deskclock/DeskClockViewPager;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->center_x:I

    int-to-double v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->radius:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    move-wide/from16 v19, v0

    const-wide v21, 0x4066800000000000L

    div-double v19, v19, v21

    sget-wide v21, Lcom/android/deskclock/timer/TimerFragment;->PI:D

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    add-double v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v8, v15, v17

    .line 459
    .local v8, previousX:D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/deskclock/timer/TimerFragment;->center_y:I

    int-to-double v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->radius:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    move-wide/from16 v19, v0

    const-wide v21, 0x4066800000000000L

    div-double v19, v19, v21

    sget-wide v21, Lcom/android/deskclock/timer/TimerFragment;->PI:D

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v10, v15, v17

    .line 461
    .local v10, previousY:D
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "x = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "previousX = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " previousAngle="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/timer/TimerFragment;->previousAngle:D

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->y:D

    sub-double v15, v10, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->width:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-gtz v15, :cond_10

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/deskclock/timer/TimerFragment;->x:D

    sub-double v15, v8, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/timer/TimerFragment;->width:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_11

    .line 465
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 467
    :cond_11
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/deskclock/DeskClockViewPager;->setCanScroll(Z)V

    .line 468
    const/4 v15, 0x1

    goto/16 :goto_0
.end method
