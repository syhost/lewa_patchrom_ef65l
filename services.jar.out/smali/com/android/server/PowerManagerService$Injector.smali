.class Lcom/android/server/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static _setButtonBrightness(Lcom/android/server/PowerManagerService;II)V
    .locals 3
    .parameter "service"
    .parameter "mask"
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3475
    const-string v0, "persist.sys.disable_btn_light"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 3476
    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3488
    :cond_0
    :goto_0
    return-void

    .line 3477
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    .line 3478
    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "persist.sys.btn_auto_light"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 3479
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3480
    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0

    .line 3483
    :cond_2
    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0

    .line 3486
    :cond_3
    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0
.end method

.method static adjustButtonValue(Lcom/android/server/PowerManagerService;I)I
    .locals 5
    .parameter "service"
    .parameter "buttonValue"

    .prologue
    .line 3461
    move v0, p1

    .line 3462
    .local v0, value:I
    iget v2, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-gez v2, :cond_0

    .line 3466
    const/4 v2, 0x1

    const-string v3, "persist.sys.disable_btn_light"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3467
    const/4 v0, 0x0

    move v1, v0

    .line 3471
    .end local v0           #value:I
    .local v1, value:I
    :goto_0
    return v1

    .end local v1           #value:I
    .restart local v0       #value:I
    :cond_0
    move v1, v0

    .end local v0           #value:I
    .restart local v1       #value:I
    goto :goto_0
.end method

.method static getAutoBrightnessButtonValue(Lcom/android/server/PowerManagerService;I[I)I
    .locals 5
    .parameter "service"
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    .line 3434
    :try_start_0
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sensorValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3437
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v2, v2, v1

    if-le p1, v2, :cond_1

    .line 3441
    :cond_0
    aget v2, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3445
    .end local v1           #i:I
    :goto_1
    return v2

    .line 3436
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3442
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 3444
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerManagerService"

    const-string v3, "turn on button light"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    const/16 v2, 0xff

    goto :goto_1
.end method

.method static getButtonValue(Lcom/android/server/PowerManagerService;I)I
    .locals 3
    .parameter "service"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 3451
    const-string v1, "persist.sys.btn_auto_light"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 3452
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 3457
    .local v0, buttonValue:I
    :goto_0
    return v0

    .line 3454
    .end local v0           #buttonValue:I
    :cond_0
    const/16 v0, 0xff

    .restart local v0       #buttonValue:I
    goto :goto_0
.end method

.method static setButtonBrightness(Lcom/android/server/PowerManagerService;II)V
    .locals 3
    .parameter "service"
    .parameter "mask"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3491
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 3494
    const-string v0, "persist.sys.disable_btn_light"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 3495
    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3508
    :cond_0
    :goto_0
    return-void

    .line 3498
    :cond_1
    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "persist.sys.btn_auto_light"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 3499
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3500
    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0

    .line 3502
    :cond_2
    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0

    .line 3505
    :cond_3
    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0
.end method
