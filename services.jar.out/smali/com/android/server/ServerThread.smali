.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbPortObserver;
    }
.end annotation


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$Injector;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 984
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 985
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 987
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 989
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 83
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    return-void
.end method

.method public run()V
    .locals 127
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    .line 102
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 105
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 107
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 110
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 111
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 115
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    .line 117
    .local v106, shutdownAction:Ljava/lang/String;
    if-eqz v106, :cond_0

    invoke-virtual/range {v106 .. v106}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 118
    const/4 v3, 0x0

    move-object/from16 v0, v106

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_f

    const/16 v98, 0x1

    .line 121
    .local v98, reboot:Z
    :goto_0
    invoke-virtual/range {v106 .. v106}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_10

    .line 122
    const/4 v3, 0x1

    invoke-virtual/range {v106 .. v106}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v106

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v97

    .line 127
    .local v97, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v98

    move-object/from16 v1, v97

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 131
    .end local v97           #reason:Ljava/lang/String;
    .end local v98           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 132
    .local v70, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v69, 0x0

    .line 134
    .local v69, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 136
    .local v16, headless:Z
    const/16 v42, 0x0

    .line 137
    .local v42, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v58, 0x0

    .line 138
    .local v58, contentService:Landroid/content/ContentService;
    const/16 v77, 0x0

    .line 139
    .local v77, lights:Lcom/android/server/LightsService;
    const/16 v94, 0x0

    .line 140
    .local v94, power:Lcom/android/server/PowerManagerService;
    const/16 v47, 0x0

    .line 141
    .local v47, battery:Lcom/android/server/BatteryService;
    const/16 v117, 0x0

    .line 142
    .local v117, vibrator:Lcom/android/server/VibratorService;
    const/16 v44, 0x0

    .line 143
    .local v44, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 144
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 145
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v86, 0x0

    .line 146
    .local v86, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v56, 0x0

    .line 147
    .local v56, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v124, 0x0

    .line 148
    .local v124, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v122, 0x0

    .line 149
    .local v122, wifi:Lcom/android/server/WifiService;
    const/16 v105, 0x0

    .line 150
    .local v105, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v93, 0x0

    .line 151
    .local v93, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 152
    .local v4, context:Landroid/content/Context;
    const/16 v126, 0x0

    .line 153
    .local v126, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v48, 0x0

    .line 154
    .local v48, bluetooth:Landroid/server/BluetoothService;
    const/16 v50, 0x0

    .line 155
    .local v50, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v64, 0x0

    .line 156
    .local v64, dock:Lcom/android/server/DockObserver;
    const/16 v101, 0x0

    .line 157
    .local v101, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    const/16 v115, 0x0

    .line 158
    .local v115, usb:Lcom/android/server/usb/UsbService;
    const/16 v103, 0x0

    .line 159
    .local v103, serial:Lcom/android/server/SerialService;
    const/16 v113, 0x0

    .line 160
    .local v113, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v99, 0x0

    .line 161
    .local v99, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v109, 0x0

    .line 162
    .local v109, throttle:Lcom/android/server/ThrottleService;
    const/16 v88, 0x0

    .line 163
    .local v88, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v53, 0x0

    .line 164
    .local v53, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v76, 0x0

    .line 168
    .local v76, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 171
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_51

    .line 173
    .end local v94           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 175
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static/range {v69 .. v69}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 178
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 181
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 187
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 190
    .local v61, cryptState:Ljava/lang/String;
    const/16 v92, 0x0

    .line 191
    .local v92, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 192
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v92, 0x1

    .line 199
    :cond_1
    :goto_3
    if-eqz v69, :cond_13

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v92

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v93

    .line 202
    const/16 v72, 0x0

    .line 204
    .local v72, firstBoot:Z
    :try_start_2
    invoke-interface/range {v93 .. v93}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v72

    .line 208
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 210
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 214
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v43, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 216
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .local v43, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_52

    move-object/from16 v42, v43

    .line 221
    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v3, 0x1

    move/from16 v0, v69

    if-ne v0, v3, :cond_14

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v58

    .line 225
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 228
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v78, Lcom/android/server/LightsService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 231
    .end local v77           #lights:Lcom/android/server/LightsService;
    .local v78, lights:Lcom/android/server/LightsService;
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v78

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_53

    .line 233
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_8
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 235
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v118, Lcom/android/server/VibratorService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_54

    .line 237
    .end local v117           #vibrator:Lcom/android/server/VibratorService;
    .local v118, vibrator:Lcom/android/server/VibratorService;
    :try_start_9
    const-string v3, "vibrator"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 241
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v78

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 243
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_55

    .line 245
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_a
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 247
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 251
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_15

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v72, :cond_16

    const/4 v3, 0x1

    :goto_9
    move/from16 v0, v92

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v126

    .line 255
    const-string v3, "window"

    move-object/from16 v0, v126

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 256
    invoke-virtual/range {v126 .. v126}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v76

    .line 257
    const-string v3, "input"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 259
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v126

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 264
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 265
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    move-object/from16 v117, v118

    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v117       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .line 293
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v72           #firstBoot:Z
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v92           #onlyCore:Z
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :goto_b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110044

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v73

    .line 296
    .local v73, hasRotationLock:Z
    const/16 v62, 0x0

    .line 297
    .local v62, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v107, 0x0

    .line 298
    .local v107, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v74, 0x0

    .line 299
    .local v74, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v45, 0x0

    .line 300
    .local v45, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v95, 0x0

    .line 301
    .local v95, profile:Lcom/android/server/ProfileManagerService;
    const/16 v90, 0x0

    .line 302
    .local v90, notification:Lcom/android/server/NotificationManagerService;
    const/16 v120, 0x0

    .line 303
    .local v120, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v79, 0x0

    .line 304
    .local v79, location:Lcom/android/server/LocationManagerService;
    const/16 v59, 0x0

    .line 305
    .local v59, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v111, 0x0

    .line 306
    .local v111, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v81, 0x0

    .line 307
    .local v81, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v66, 0x0

    .line 310
    .local v66, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_2

    .line 312
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v75, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v75

    move-object/from16 v1, v126

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 314
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .local v75, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_50

    move-object/from16 v74, v75

    .line 320
    .end local v75           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 329
    :cond_2
    :goto_d
    :try_start_e
    invoke-virtual/range {v126 .. v126}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 335
    :goto_e
    :try_start_f
    invoke-interface/range {v93 .. v93}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 341
    :goto_f
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040413

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4f

    .line 348
    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v69

    if-eq v0, v3, :cond_1c

    .line 349
    const/16 v84, 0x0

    .line 350
    .local v84, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 356
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v85, Lcom/android/server/MountService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 358
    .end local v84           #mountService:Lcom/android/server/MountService;
    .local v85, mountService:Lcom/android/server/MountService;
    :try_start_12
    const-string v3, "mount"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4e

    move-object/from16 v84, v85

    .line 365
    .end local v85           #mountService:Lcom/android/server/MountService;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    :cond_3
    :goto_11
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v82, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 367
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v82, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_14
    const-string v3, "lock_settings"

    move-object/from16 v0, v82

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4d

    move-object/from16 v81, v82

    .line 373
    .end local v82           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_12
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v63, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    .line 375
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v63, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_16
    const-string v3, "device_policy"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4c

    move-object/from16 v62, v63

    .line 381
    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v108, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v108

    move-object/from16 v1, v126

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .line 383
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v108, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_18
    const-string v3, "statusbar"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4b

    move-object/from16 v107, v108

    .line 389
    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .line 397
    :goto_15
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 399
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 405
    :goto_16
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v112, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v112

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_d

    .line 407
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v112, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1c
    const-string v3, "textservices"

    move-object/from16 v0, v112

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4a

    move-object/from16 v111, v112

    .line 413
    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v87, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_e

    .line 415
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v87, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1e
    const-string v3, "netstats"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_49

    move-object/from16 v12, v87

    .line 421
    .end local v87           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f

    .line 425
    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_20
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_48

    .line 431
    :goto_19
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v125, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v125

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    .line 433
    .end local v124           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v125, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_22
    const-string v3, "wifip2p"

    move-object/from16 v0, v125

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_47

    move-object/from16 v124, v125

    .line 439
    .end local v125           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v124       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v123, Lcom/android/server/WifiService;

    move-object/from16 v0, v123

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_11

    .line 441
    .end local v122           #wifi:Lcom/android/server/WifiService;
    .local v123, wifi:Lcom/android/server/WifiService;
    :try_start_24
    const-string v3, "wifi"

    move-object/from16 v0, v123

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_46

    move-object/from16 v122, v123

    .line 447
    .end local v123           #wifi:Lcom/android/server/WifiService;
    .restart local v122       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v57, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_12

    .line 450
    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .local v57, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_26
    const-string v3, "connectivity"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 451
    move-object/from16 v0, v57

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 452
    move-object/from16 v0, v57

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 453
    invoke-virtual/range {v122 .. v122}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 454
    invoke-virtual/range {v124 .. v124}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_45

    move-object/from16 v56, v57

    .line 460
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v56       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v105

    .line 462
    const-string v3, "servicediscovery"

    move-object/from16 v0, v105

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_13

    .line 469
    :goto_1d
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v110, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_14

    .line 471
    .end local v109           #throttle:Lcom/android/server/ThrottleService;
    .local v110, throttle:Lcom/android/server/ThrottleService;
    :try_start_29
    const-string v3, "throttle"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_44

    move-object/from16 v109, v110

    .line 478
    .end local v110           #throttle:Lcom/android/server/ThrottleService;
    .restart local v109       #throttle:Lcom/android/server/ThrottleService;
    :goto_1e
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "FM receiver Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v3, "fm_receiver"

    new-instance v9, Lcom/stericsson/hardware/fm/FmReceiverService;

    invoke-direct {v9, v4}, Lcom/stericsson/hardware/fm/FmReceiverService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 486
    :goto_1f
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "FM transmitter Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v3, "fm_transmitter"

    new-instance v9, Lcom/stericsson/hardware/fm/FmTransmitterService;

    invoke-direct {v9, v4}, Lcom/stericsson/hardware/fm/FmTransmitterService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 493
    :goto_20
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_17

    .line 505
    :goto_21
    if-eqz v84, :cond_4

    .line 506
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 510
    :cond_4
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Profile Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v96, Lcom/android/server/ProfileManagerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/ProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_18

    .line 512
    .end local v95           #profile:Lcom/android/server/ProfileManagerService;
    .local v96, profile:Lcom/android/server/ProfileManagerService;
    :try_start_2e
    const-string v3, "profile"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_43

    move-object/from16 v95, v96

    .line 518
    .end local v96           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v95       #profile:Lcom/android/server/ProfileManagerService;
    :goto_22
    if-eqz v42, :cond_5

    .line 519
    :try_start_2f
    invoke-virtual/range {v42 .. v42}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_19

    .line 525
    :cond_5
    :goto_23
    if-eqz v58, :cond_6

    .line 526
    :try_start_30
    invoke-virtual/range {v58 .. v58}, Landroid/content/ContentService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1a

    .line 532
    :cond_6
    :goto_24
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v91, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v91

    move-object/from16 v1, v107

    move-object/from16 v2, v77

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1b

    .line 534
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .local v91, notification:Lcom/android/server/NotificationManagerService;
    :try_start_32
    const-string v3, "notification"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 535
    move-object/from16 v0, v91

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_42

    move-object/from16 v90, v91

    .line 541
    .end local v91           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1c

    .line 549
    :goto_26
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v80, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v80

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1d

    .line 551
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .local v80, location:Lcom/android/server/LocationManagerService;
    :try_start_35
    const-string v3, "location"

    move-object/from16 v0, v80

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_41

    move-object/from16 v79, v80

    .line 557
    .end local v80           #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v60, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1e

    .line 559
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v60, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_37
    const-string v3, "country_detector"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_40

    move-object/from16 v59, v60

    .line 565
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_28
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 573
    :goto_29
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 580
    :goto_2a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110029

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 583
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-nez v16, :cond_7

    .line 585
    new-instance v121, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v121

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 586
    .end local v120           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v121, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3b
    const-string v3, "wallpaper"

    move-object/from16 v0, v121

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_3f

    move-object/from16 v120, v121

    .line 593
    .end local v121           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v120       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_7
    :goto_2b
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 595
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .line 603
    :cond_8
    :goto_2c
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v65, Lcom/android/server/DockObserver;

    move-object/from16 v0, v65

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .end local v64           #dock:Lcom/android/server/DockObserver;
    .local v65, dock:Lcom/android/server/DockObserver;
    move-object/from16 v64, v65

    .line 611
    .end local v65           #dock:Lcom/android/server/DockObserver;
    .restart local v64       #dock:Lcom/android/server/DockObserver;
    :goto_2d
    if-eqz v73, :cond_9

    .line 612
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "Rotation Switch Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v102, Lcom/android/server/RotationSwitchObserver;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Lcom/android/server/RotationSwitchObserver;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .end local v101           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .local v102, rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v101, v102

    .line 621
    .end local v102           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v101       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    :cond_9
    :goto_2e
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_25

    .line 629
    :goto_2f
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v116, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .line 632
    .end local v115           #usb:Lcom/android/server/usb/UsbService;
    .local v116, usb:Lcom/android/server/usb/UsbService;
    :try_start_41
    const-string v3, "usb"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_3e

    move-object/from16 v115, v116

    .line 638
    .end local v116           #usb:Lcom/android/server/usb/UsbService;
    .restart local v115       #usb:Lcom/android/server/usb/UsbService;
    :goto_30
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v104, Lcom/android/server/SerialService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_27

    .line 641
    .end local v103           #serial:Lcom/android/server/SerialService;
    .local v104, serial:Lcom/android/server/SerialService;
    :try_start_43
    const-string v3, "serial"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_3d

    move-object/from16 v103, v104

    .line 647
    .end local v104           #serial:Lcom/android/server/SerialService;
    .restart local v103       #serial:Lcom/android/server/SerialService;
    :goto_31
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v114, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v114

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_28

    .end local v113           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v114, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v113, v114

    .line 655
    .end local v114           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v113       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_32
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_29

    .line 663
    :goto_33
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v46, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2a

    .line 665
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .local v46, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_47
    const-string v3, "appwidget"

    move-object/from16 v0, v46

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_3c

    move-object/from16 v45, v46

    .line 671
    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_34
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v100, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2b

    .end local v99           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v100, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v99, v100

    .line 678
    .end local v100           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v99       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_35
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2c

    .line 689
    :goto_36
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2d

    .line 697
    :goto_37
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v89, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2e

    .end local v88           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v89, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v88, v89

    .line 704
    .end local v89           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v88       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_38
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v54, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v54

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2f

    .line 706
    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v54, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_4d
    const-string v3, "commontime_management"

    move-object/from16 v0, v54

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_3b

    move-object/from16 v53, v54

    .line 712
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v53       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_39
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_30

    .line 718
    :goto_3a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003e

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 721
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v67, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_31

    .line 724
    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v67, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_50
    const-string v3, "dreams"

    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_3a

    move-object/from16 v66, v67

    .line 731
    .end local v67           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v84           #mountService:Lcom/android/server/MountService;
    .restart local v66       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_a
    :goto_3b
#    :try_start_51
#    const-string v3, "SystemServer"

#    const-string v9, "AssetRedirectionManager Service"

#    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

#    .line 732
#    const-string v3, "assetredirection"

#    new-instance v9, Lcom/android/server/AssetRedirectionManagerService;

#    invoke-direct {v9, v4}, Lcom/android/server/AssetRedirectionManagerService;-><init>(Landroid/content/Context;)V

#    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
#    :try_end_51
#    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_32

#    .line 739
#    .end local v84           #mountService:Lcom/android/server/MountService;
#    :goto_3c
#    move-object/from16 v0, p0

#    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

#    const-string v9, "adb_port"

#    const-string v10, "service.adb.tcp.port"

#    const-string v11, "-1"

#    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

#    move-result-object v10

#    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

#    move-result v10

#    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

#    .line 743
#    move-object/from16 v0, p0

#    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

#    const-string v9, "adb_port"

#    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

#    move-result-object v9

#    const/4 v10, 0x0

#    new-instance v11, Lcom/android/server/ServerThread$AdbPortObserver;

#    move-object/from16 v0, p0

#    invoke-direct {v11, v0}, Lcom/android/server/ServerThread$AdbPortObserver;-><init>(Lcom/android/server/ServerThread;)V

#    invoke-virtual {v3, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 749
    invoke-static {v4}, Lcom/android/server/ServerThread$Injector;->registerServices(Landroid/content/Context;)V
 
    :goto_lewa_0
    invoke-virtual/range {v126 .. v126}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .line 750
    .local v29, safeMode:Z
    if-eqz v29, :cond_1b

    .line 751
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 753
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 755
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 764
    :goto_3d
    :try_start_52
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_33

    .line 769
    :goto_3e
    if-eqz v62, :cond_b

    .line 771
    :try_start_53
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_34

    .line 777
    :cond_b
    :goto_3f
    if-eqz v90, :cond_c

    .line 779
    :try_start_54
    invoke-virtual/range {v90 .. v90}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_35

    .line 786
    :cond_c
    :goto_40
    :try_start_55
    invoke-virtual/range {v126 .. v126}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_36

    .line 791
    :goto_41
    if-eqz v29, :cond_d

    .line 792
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 798
    :cond_d
    invoke-virtual/range {v126 .. v126}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v55

    .line 799
    .local v55, config:Landroid/content/res/Configuration;
    new-instance v83, Landroid/util/DisplayMetrics;

    invoke-direct/range {v83 .. v83}, Landroid/util/DisplayMetrics;-><init>()V

    .line 800
    .local v83, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v119

    check-cast v119, Landroid/view/WindowManager;

    .line 801
    .local v119, w:Landroid/view/WindowManager;
    invoke-interface/range {v119 .. v119}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 802
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v55

    move-object/from16 v1, v83

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 804
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 806
    :try_start_56
    invoke-interface/range {v93 .. v93}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_37

    .line 811
    :goto_42
    :try_start_57
    invoke-virtual/range {v81 .. v81}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_38

    .line 816
    :goto_43
#    new-instance v71, Landroid/content/IntentFilter;

#    invoke-direct/range {v71 .. v71}, Landroid/content/IntentFilter;-><init>()V

#    .line 817
#    .local v71, filter:Landroid/content/IntentFilter;
#    const-string v3, "com.tmobile.intent.action.APP_LAUNCH_FAILURE"

#    move-object/from16 v0, v71

#    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

#    .line 818
#    const-string v3, "com.tmobile.intent.action.APP_LAUNCH_FAILURE_RESET"

#    move-object/from16 v0, v71

#    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

#    .line 819
#    const-string v3, "android.intent.action.PACKAGE_ADDED"

#    move-object/from16 v0, v71

#    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

#    .line 820
#    const-string v3, "android.intent.action.PACKAGE_REMOVED"

#    move-object/from16 v0, v71

#    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

#    .line 821
#    const-string v3, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

#    move-object/from16 v0, v71

#    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

#    .line 822
#    const-string v3, "package"

#    move-object/from16 v0, v71

#    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

#    .line 823
#    new-instance v3, Lcom/android/server/AppsLaunchFailureReceiver;

#    invoke-direct {v3}, Lcom/android/server/AppsLaunchFailureReceiver;-><init>()V

#    move-object/from16 v0, v71

#    invoke-virtual {v4, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 826
    invoke-static {v4}, Lcom/android/server/ServerThread$Injector;->registerReceivers(Landroid/content/Context;)V

    move-object/from16 v17, v4

    .line 827
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 828
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 829
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 830
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 831
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v56

    .line 832
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v64

    .line 833
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v101

    .line 834
    .local v24, rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    move-object/from16 v25, v115

    .line 835
    .local v25, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v35, v109

    .line 836
    .local v35, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v113

    .line 837
    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v45

    .line 838
    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v120

    .line 839
    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v74

    .line 840
    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v99

    .line 841
    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v79

    .line 842
    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v34, v59

    .line 843
    .local v34, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v36, v88

    .line 844
    .local v36, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v37, v53

    .line 845
    .local v37, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v38, v111

    .line 846
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v107

    .line 847
    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v39, v66

    .line 848
    .local v39, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v40, v76

    .line 849
    .local v40, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v48

    .line 856
    .local v41, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v41}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/RotationSwitchObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 975
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 976
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_e
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 980
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void

    .line 118
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #rotateSwitchF:Lcom/android/server/RotationSwitchObserver;
    .end local v25           #usbF:Lcom/android/server/usb/UsbService;
    .end local v26           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v27           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v28           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v29           #safeMode:Z
    .end local v30           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v31           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v32           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v33           #locationF:Lcom/android/server/LocationManagerService;
    .end local v34           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v35           #throttleF:Lcom/android/server/ThrottleService;
    .end local v36           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v37           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v38           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v39           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v40           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v41           #bluetoothF:Landroid/server/BluetoothService;
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v55           #config:Landroid/content/res/Configuration;
    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v58           #contentService:Landroid/content/ContentService;
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #dock:Lcom/android/server/DockObserver;
    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v69           #factoryTest:I
    .end local v70           #factoryTestStr:Ljava/lang/String;
    .end local v71           #filter:Landroid/content/IntentFilter;
    .end local v73           #hasRotationLock:Z
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v76           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v83           #metrics:Landroid/util/DisplayMetrics;
    .end local v88           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .end local v93           #pm:Landroid/content/pm/IPackageManager;
    .end local v95           #profile:Lcom/android/server/ProfileManagerService;
    .end local v99           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v101           #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .end local v103           #serial:Lcom/android/server/SerialService;
    .end local v105           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v109           #throttle:Lcom/android/server/ThrottleService;
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v113           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v115           #usb:Lcom/android/server/usb/UsbService;
    .end local v117           #vibrator:Lcom/android/server/VibratorService;
    .end local v119           #w:Landroid/view/WindowManager;
    .end local v120           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v122           #wifi:Lcom/android/server/WifiService;
    .end local v124           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v126           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_f
    const/16 v98, 0x0

    goto/16 :goto_0

    .line 124
    .restart local v98       #reboot:Z
    :cond_10
    const/16 v97, 0x0

    .restart local v97       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 132
    .end local v97           #reason:Ljava/lang/String;
    .end local v98           #reboot:Z
    .restart local v70       #factoryTestStr:Ljava/lang/String;
    :cond_11
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    goto/16 :goto_2

    .line 194
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v53       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #contentService:Landroid/content/ContentService;
    .restart local v61       #cryptState:Ljava/lang/String;
    .restart local v64       #dock:Lcom/android/server/DockObserver;
    .restart local v69       #factoryTest:I
    .restart local v76       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v86       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v92       #onlyCore:Z
    .restart local v93       #pm:Landroid/content/pm/IPackageManager;
    .restart local v99       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v101       #rotateSwitch:Lcom/android/server/RotationSwitchObserver;
    .restart local v103       #serial:Lcom/android/server/SerialService;
    .restart local v105       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v109       #throttle:Lcom/android/server/ThrottleService;
    .restart local v113       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v115       #usb:Lcom/android/server/usb/UsbService;
    .restart local v117       #vibrator:Lcom/android/server/VibratorService;
    .restart local v122       #wifi:Lcom/android/server/WifiService;
    .restart local v124       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v126       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_12
    :try_start_58
    const-string v3, "1"

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/16 v92, 0x1

    goto/16 :goto_3

    .line 199
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 217
    .restart local v72       #firstBoot:Z
    :catch_0
    move-exception v68

    .line 218
    .local v68, e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_1

    goto/16 :goto_6

    .line 288
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v68           #e:Ljava/lang/Throwable;
    .end local v72           #firstBoot:Z
    .end local v92           #onlyCore:Z
    :catch_1
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v47

    .line 289
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v68, e:Ljava/lang/RuntimeException;
    :goto_45
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 222
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v68           #e:Ljava/lang/RuntimeException;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v61       #cryptState:Ljava/lang/String;
    .restart local v72       #firstBoot:Z
    .restart local v92       #onlyCore:Z
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 252
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v117           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    :cond_15
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 266
    :cond_17
    const/4 v3, 0x1

    move/from16 v0, v69

    if-ne v0, v3, :cond_18

    .line 267
    :try_start_59
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 288
    :catch_2
    move-exception v68

    move-object/from16 v117, v118

    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v117       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto :goto_45

    .line 269
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v117           #vibrator:Lcom/android/server/VibratorService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    :cond_18
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v49, Landroid/server/BluetoothService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_59} :catch_2

    .line 271
    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .local v49, bluetooth:Landroid/server/BluetoothService;
    :try_start_5a
    const-string v3, "bluetooth"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 272
    invoke-virtual/range {v49 .. v49}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 274
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 275
    new-instance v51, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_5a} :catch_56

    .line 276
    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v51, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_5b
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 278
    invoke-virtual/range {v49 .. v49}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5b} :catch_57

    move-object/from16 v50, v51

    .line 281
    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_19
    :try_start_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v52

    .line 283
    .local v52, bluetoothOn:I
    if-eqz v52, :cond_1a

    .line 284
    invoke-virtual/range {v49 .. v49}, Landroid/server/BluetoothService;->enable()Z
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_5c} :catch_56

    :cond_1a
    move-object/from16 v48, v49

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 315
    .end local v52           #bluetoothOn:I
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v72           #firstBoot:Z
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v92           #onlyCore:Z
    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v73       #hasRotationLock:Z
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v95       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #vibrator:Lcom/android/server/VibratorService;
    .restart local v120       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v68

    .line 316
    .local v68, e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 323
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v68

    .line 324
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 330
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v68

    .line 331
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 336
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v68

    .line 337
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 359
    .end local v68           #e:Ljava/lang/Throwable;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    :catch_7
    move-exception v68

    .line 360
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 368
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v68

    .line 369
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 376
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v68

    .line 377
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 384
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v68

    .line 385
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 392
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v68

    .line 393
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 400
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v68

    .line 401
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 408
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v68

    .line 409
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 416
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v68

    .line 417
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 426
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v68

    move-object/from16 v8, v86

    .line 427
    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 434
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v68

    .line 435
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 442
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v68

    .line 443
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 455
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v68

    .line 456
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 464
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v68

    .line 465
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 473
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v68

    .line 474
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 481
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v68

    .line 482
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting FM receiver Service"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 489
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v68

    .line 490
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting FM transmitter Service"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 496
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v68

    .line 497
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 513
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v68

    .line 514
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Profile Manager"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 520
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v68

    .line 521
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 527
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v68

    .line 528
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 536
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v68

    .line 537
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 544
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v68

    .line 545
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 552
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v68

    .line 553
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 560
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v68

    .line 561
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 568
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v68

    .line 569
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 576
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v68

    .line 577
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 588
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v68

    .line 589
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 597
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v68

    .line 598
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 606
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v68

    .line 607
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 616
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v68

    .line 617
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting RotationSwitchObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 624
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v68

    .line 625
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 633
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v68

    .line 634
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 642
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v68

    .line 643
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 650
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v68

    .line 651
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 658
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v68

    .line 659
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 666
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v68

    .line 667
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 673
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v68

    .line 674
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 680
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v68

    .line 681
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 692
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v68

    .line 693
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 699
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v68

    .line 700
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 707
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v68

    .line 708
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 714
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v68

    .line 715
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 725
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v68

    .line 726
    .restart local v68       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 733
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v68

    .line 734
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting AssetRedirectionManager Service"

    move-object/from16 v0, v68

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 758
    .end local v68           #e:Ljava/lang/Throwable;
    .end local v84           #mountService:Lcom/android/server/MountService;
    .restart local v29       #safeMode:Z
    :cond_1b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3d

    .line 765
    :catch_33
    move-exception v68

    .line 766
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 772
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v68

    .line 773
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 780
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v68

    .line 781
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 787
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v68

    .line 788
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 807
    .end local v68           #e:Ljava/lang/Throwable;
    .restart local v55       #config:Landroid/content/res/Configuration;
    .restart local v83       #metrics:Landroid/util/DisplayMetrics;
    .restart local v119       #w:Landroid/view/WindowManager;
    :catch_37
    move-exception v68

    .line 808
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 812
    .end local v68           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v68

    .line 813
    .restart local v68       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 205
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v55           #config:Landroid/content/res/Configuration;
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v68           #e:Ljava/lang/Throwable;
    .end local v73           #hasRotationLock:Z
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v83           #metrics:Landroid/util/DisplayMetrics;
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .end local v95           #profile:Lcom/android/server/ProfileManagerService;
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v119           #w:Landroid/view/WindowManager;
    .end local v120           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v61       #cryptState:Ljava/lang/String;
    .restart local v72       #firstBoot:Z
    .restart local v86       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v92       #onlyCore:Z
    :catch_39
    move-exception v3

    goto/16 :goto_5

    .line 725
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v72           #firstBoot:Z
    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v92           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v67       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v73       #hasRotationLock:Z
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v95       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v120       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3a
    move-exception v68

    move-object/from16 v66, v67

    .end local v67           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v66       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_5b

    .line 707
    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3b
    move-exception v68

    move-object/from16 v53, v54

    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v53       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_5a

    .line 666
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v46       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3c
    move-exception v68

    move-object/from16 v45, v46

    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_59

    .line 642
    .end local v103           #serial:Lcom/android/server/SerialService;
    .restart local v104       #serial:Lcom/android/server/SerialService;
    :catch_3d
    move-exception v68

    move-object/from16 v103, v104

    .end local v104           #serial:Lcom/android/server/SerialService;
    .restart local v103       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_58

    .line 633
    .end local v115           #usb:Lcom/android/server/usb/UsbService;
    .restart local v116       #usb:Lcom/android/server/usb/UsbService;
    :catch_3e
    move-exception v68

    move-object/from16 v115, v116

    .end local v116           #usb:Lcom/android/server/usb/UsbService;
    .restart local v115       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_57

    .line 588
    .end local v120           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v121       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3f
    move-exception v68

    move-object/from16 v120, v121

    .end local v121           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v120       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_56

    .line 560
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_40
    move-exception v68

    move-object/from16 v59, v60

    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_55

    .line 552
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .restart local v80       #location:Lcom/android/server/LocationManagerService;
    :catch_41
    move-exception v68

    move-object/from16 v79, v80

    .end local v80           #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_54

    .line 536
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v91       #notification:Lcom/android/server/NotificationManagerService;
    :catch_42
    move-exception v68

    move-object/from16 v90, v91

    .end local v91           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_53

    .line 513
    .end local v95           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v96       #profile:Lcom/android/server/ProfileManagerService;
    :catch_43
    move-exception v68

    move-object/from16 v95, v96

    .end local v96           #profile:Lcom/android/server/ProfileManagerService;
    .restart local v95       #profile:Lcom/android/server/ProfileManagerService;
    goto/16 :goto_52

    .line 473
    .end local v109           #throttle:Lcom/android/server/ThrottleService;
    .restart local v110       #throttle:Lcom/android/server/ThrottleService;
    :catch_44
    move-exception v68

    move-object/from16 v109, v110

    .end local v110           #throttle:Lcom/android/server/ThrottleService;
    .restart local v109       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_51

    .line 455
    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_45
    move-exception v68

    move-object/from16 v56, v57

    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v56       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_50

    .line 442
    .end local v122           #wifi:Lcom/android/server/WifiService;
    .restart local v123       #wifi:Lcom/android/server/WifiService;
    :catch_46
    move-exception v68

    move-object/from16 v122, v123

    .end local v123           #wifi:Lcom/android/server/WifiService;
    .restart local v122       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_4f

    .line 434
    .end local v124           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v125       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_47
    move-exception v68

    move-object/from16 v124, v125

    .end local v125           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v124       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_4e

    .line 426
    :catch_48
    move-exception v68

    goto/16 :goto_4d

    .line 416
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v86       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v87       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_49
    move-exception v68

    move-object/from16 v12, v87

    .end local v87           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4c

    .line 408
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v112       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4a
    move-exception v68

    move-object/from16 v111, v112

    .end local v112           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4b

    .line 384
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v108       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_4b
    move-exception v68

    move-object/from16 v107, v108

    .end local v108           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4a

    .line 376
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_4c
    move-exception v68

    move-object/from16 v62, v63

    .end local v63           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_49

    .line 368
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v82       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_4d
    move-exception v68

    move-object/from16 v81, v82

    .end local v82           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_48

    .line 359
    .end local v84           #mountService:Lcom/android/server/MountService;
    .restart local v85       #mountService:Lcom/android/server/MountService;
    :catch_4e
    move-exception v68

    move-object/from16 v84, v85

    .end local v85           #mountService:Lcom/android/server/MountService;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_47

    .line 345
    .end local v84           #mountService:Lcom/android/server/MountService;
    :catch_4f
    move-exception v3

    goto/16 :goto_10

    .line 315
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v75       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_50
    move-exception v68

    move-object/from16 v74, v75

    .end local v75           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_46

    .line 288
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v73           #hasRotationLock:Z
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .end local v95           #profile:Lcom/android/server/ProfileManagerService;
    .end local v107           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v111           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v120           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #power:Lcom/android/server/PowerManagerService;
    :catch_51
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v47

    .end local v47           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v94

    .end local v94           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_45

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v61       #cryptState:Ljava/lang/String;
    .restart local v72       #firstBoot:Z
    .restart local v92       #onlyCore:Z
    :catch_52
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v47

    .end local v47           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v42, v43

    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_45

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    :catch_53
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v47

    .end local v47           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_45

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    :catch_54
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_45

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v117           #vibrator:Lcom/android/server/VibratorService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    :catch_55
    move-exception v68

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v117, v118

    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v117       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_45

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v117           #vibrator:Lcom/android/server/VibratorService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    :catch_56
    move-exception v68

    move-object/from16 v48, v49

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v117, v118

    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v117       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_45

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v117           #vibrator:Lcom/android/server/VibratorService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    .restart local v51       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v118       #vibrator:Lcom/android/server/VibratorService;
    :catch_57
    move-exception v68

    move-object/from16 v50, v51

    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v48, v49

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v117, v118

    .end local v118           #vibrator:Lcom/android/server/VibratorService;
    .restart local v117       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_45

    .line 217
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #battery:Lcom/android/server/BatteryService;
    :catch_58
    move-exception v68

    move-object/from16 v42, v43

    .end local v43           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #battery:Lcom/android/server/BatteryService;
    .end local v61           #cryptState:Ljava/lang/String;
    .end local v72           #firstBoot:Z
    .end local v92           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v73       #hasRotationLock:Z
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v95       #profile:Lcom/android/server/ProfileManagerService;
    .restart local v107       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v111       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v120       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1c
    move-object/from16 v8, v86

    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_lewa_0
.end method
