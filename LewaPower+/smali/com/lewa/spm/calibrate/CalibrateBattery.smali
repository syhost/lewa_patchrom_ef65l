.class public Lcom/lewa/spm/calibrate/CalibrateBattery;
.super Ljava/lang/Object;
.source "CalibrateBattery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public deleteFile()V
    .locals 3

    .prologue
    .line 12
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/batterystats.bin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 15
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
