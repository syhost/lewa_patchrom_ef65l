.class public Lcom/lewa/spm/util/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# static fields
.field public static acOnline:Ljava/lang/String;

.field public static battCapacity:Ljava/lang/String;

.field public static battCur:Ljava/lang/String;

.field public static battHealth:Ljava/lang/String;

.field public static battPresent:Ljava/lang/String;

.field public static battStatus:Ljava/lang/String;

.field public static battTech:Ljava/lang/String;

.field public static battTemp:Ljava/lang/String;

.field public static battVol:Ljava/lang/String;

.field public static usbOnline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "/sys/class/power_supply/ac/online"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->acOnline:Ljava/lang/String;

    .line 11
    const-string v0, "/sys/class/power_supply/usb/online"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->usbOnline:Ljava/lang/String;

    .line 12
    const-string v0, "/sys/class/power_supply/battery/status"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->battStatus:Ljava/lang/String;

    .line 13
    const-string v0, "/sys/class/power_supply/battery/health"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->battHealth:Ljava/lang/String;

    .line 14
    const-string v0, "/sys/class/power_supply/battery/present"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->battPresent:Ljava/lang/String;

    .line 15
    const-string v0, "/sys/class/power_supply/battery/capacity"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->battCapacity:Ljava/lang/String;

    .line 16
    const-string v0, "/sys/class/power_supply/battery/voltage_now"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->battVol:Ljava/lang/String;

    .line 17
    const-string v0, "/sys/class/power_supply/battery/current_now"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->battCur:Ljava/lang/String;

    .line 18
    const-string v0, "/sys/class/power_supply/battery/temp"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->battTemp:Ljava/lang/String;

    .line 19
    const-string v0, "/sys/class/power_supply/battery/technology"

    sput-object v0, Lcom/lewa/spm/util/BatteryInfo;->battTech:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInformation(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "pathName"

    .prologue
    .line 23
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v3, tempFile:Ljava/io/File;
    const-string v5, ""

    .line 27
    .local v5, valueStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 29
    .local v0, bufferReader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 33
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .local v1, bufferReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 37
    .local v4, tempString:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 45
    if-eqz v1, :cond_4

    .line 47
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 58
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .end local v4           #tempString:Ljava/lang/String;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v5

    .line 48
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #tempString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 49
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 50
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 42
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #tempString:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 45
    :goto_2
    if-eqz v0, :cond_1

    .line 47
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 48
    :catch_2
    move-exception v2

    .line 49
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 45
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    .line 47
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 50
    :cond_2
    :goto_4
    throw v6

    .line 48
    :catch_3
    move-exception v2

    .line 49
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 54
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    const-string v5, "0"

    goto :goto_1

    .line 45
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #tempString:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 42
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    :cond_4
    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_1
.end method
