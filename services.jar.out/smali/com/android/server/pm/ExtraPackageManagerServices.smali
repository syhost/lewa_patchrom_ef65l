.class Lcom/android/server/pm/ExtraPackageManagerServices;
.super Ljava/lang/Object;
.source "ExtraPackageManagerServices.java"


# static fields
.field private static final AUTO_START_PROPERTY:Ljava/lang/String; = "persist.sys.auto-start.once"

.field private static final INSTALL_DIR:Ljava/lang/String; = "/data/app/"

.field private static final LEWA_PREINSTALL_DIR:Ljava/lang/String; = "/system/vendor/operator/app/"

.field private static final PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/system/preinstall_history"

.field private static final REINSTALL_MARK_FILE:Ljava/lang/String; = "reinstall_apps"

.field private static final TAG:Ljava/lang/String; = "ExtraPackageManagerServices"

.field private static final THIRD_PART_DEV_PREINSTALL_DIR:Ljava/lang/String; = "/data/preinstall_apps/"

.field private static final WHITE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cn.cj.pe"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cn.com.fetion"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cn.etouch.ecalendar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.alibaba.mobileim"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.corp21cn.mail189"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.duowan.mobile"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.hy.minifetion"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.immomo.momo"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.miui.weather2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.moji.mjweather"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.netease.mobimail"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.skype.rover"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.taobao.wwseller"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.tencent.minihd.qq"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.when.android.calendar365"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.xiaomi.channel"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.zdworks.android.zdcalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.zdworks.android.zdclock"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "jp.naver.line.android"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sina.mobile.tianqitong"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/ExtraPackageManagerServices;->WHITE_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockAutoStartedApp(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V
    .locals 3
    .parameter "info"
    .parameter "curPkgSettings"

    .prologue
    .line 35
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    .local v0, forceApply:Z
    const-string v1, "persist.sys.auto-start.once"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    const/4 v0, 0x1

    .line 42
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->blockAutoStartedAppInternal(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;Z)V

    goto :goto_0
.end method

.method private static blockAutoStartedAppInternal(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;Z)V
    .locals 7
    .parameter "info"
    .parameter "curPkgSettings"
    .parameter "forceApply"

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x4000

    .line 46
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 47
    .local v4, uid:I
    invoke-static {v4}, Landroid/os/UserId;->getUserId(I)I

    move-result v5

    .line 48
    .local v5, userId:I
    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/ExtraPackageManagerServices;->isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/ExtraPackageManagerServices;->inWhiteList(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 50
    .local v6, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz p1, :cond_0

    .line 51
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v3

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 52
    iget v0, v6, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v3

    iput v0, v6, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 55
    .end local v6           #pkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 56
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->setPackageStoppedStateLPw(Ljava/lang/String;ZZII)Z

    .line 58
    :cond_1
    return-void
.end method

.method private static deleteOdexFile(Ljava/lang/String;)V
    .locals 4
    .parameter "apkName"

    .prologue
    .line 61
    const-string v2, ".apk"

    const-string v3, ".odex"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, odexName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, installOdex:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 66
    :cond_0
    return-void
.end method

.method private static getLewaPreinstallAppDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    sget-boolean v0, Llewa/os/Build;->IS_GALAXYS_NEXUS:Z

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "/system/vendor/operator/app/"

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/data/preinstall_apps/"

    goto :goto_0
.end method

.method private static inWhiteList(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/pm/ExtraPackageManagerServices;->WHITE_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/ExtraPackageManagerServices;->WHITE_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x1

    .line 74
    :goto_1
    return v1

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static installPreinstallApp(Ljava/io/File;)V
    .locals 4
    .parameter "apkFile"

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, apkName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, installApk:Ljava/io/File;
    invoke-static {p0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 81
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 82
    invoke-static {v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->deleteOdexFile(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    if-eqz p0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 90
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static packagePermissionsUpdate(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .parameter "curPkgSettings"
    .parameter "ps"
    .parameter "pkg"

    .prologue
    .line 98
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_2

    .line 99
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 100
    .local v2, gp:Lcom/android/server/pm/GrantedPermissions;
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 101
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-gt v3, v0, :cond_2

    .line 102
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 103
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 104
    .local v1, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v1, :cond_1

    .line 105
    iget-object v5, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    .line 106
    .local v5, perm:Ljava/lang/String;
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 107
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 110
    :cond_0
    iget-boolean v6, p1, Lcom/android/server/pm/PackageSetting;->haveGids:Z

    if-nez v6, :cond_1

    .line 111
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iget-object v7, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 101
    .end local v5           #perm:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v0           #N:I
    .end local v1           #bp:Lcom/android/server/pm/BasePermission;
    .end local v2           #gp:Lcom/android/server/pm/GrantedPermissions;
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .parameter "apkFile"

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, apkPath:Ljava/lang/String;
    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1
.end method

.method public static performPreinstallApp(Lcom/android/server/pm/Settings;)V
    .locals 17
    .parameter "curPkgSettings"

    .prologue
    .line 124
    const-string v14, "ExtraPackageManagerServices"

    const-string v15, "performPreinstallApp"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerServices;->getLewaPreinstallAppDirectoryPath()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, dir:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v7, preinstallAppDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, preinstallAppNames:[Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 131
    const-string v14, "ExtraPackageManagerServices"

    const-string v15, "preinstallAppNames != null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v14, v8

    if-ge v3, v14, :cond_7

    .line 135
    const-string v14, "/data/system/preinstall_history"

    invoke-static {v14}, Lcom/android/server/pm/ExtraPackageManagerServices;->readPreinstallAppHistory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 136
    .local v4, installHistory:Ljava/util/ArrayList;
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "reinstall_apps"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v11, reinstallMarkFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    .line 138
    .local v5, isNeedReinstall:Z
    aget-object v9, v8, v3

    .line 139
    .local v9, preinstallName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/pm/ExtraPackageManagerServices;->isPackageFilename(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 140
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 141
    .local v2, hasRecorded:Z
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v6, preinstallApp:Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/pm/ExtraPackageManagerServices;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .line 143
    .local v10, preinstallPkg:Landroid/content/pm/PackageParser$Package;
    if-nez v10, :cond_1

    .line 144
    const-string v14, "ExtraPackageManagerServices"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preinstall app "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " package parser fail!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v2           #hasRecorded:Z
    .end local v6           #preinstallApp:Ljava/io/File;
    .end local v10           #preinstallPkg:Landroid/content/pm/PackageParser$Package;
    :cond_0
    :goto_1
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .restart local v2       #hasRecorded:Z
    .restart local v6       #preinstallApp:Ljava/io/File;
    .restart local v10       #preinstallPkg:Landroid/content/pm/PackageParser$Package;
    :cond_1
    iget-object v14, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/pm/Settings;->peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 147
    .local v13, userPkgSetting:Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_4

    .line 148
    iget v14, v10, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v15, v13, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-le v14, v15, :cond_3

    .line 149
    iget v14, v13, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_2

    .line 150
    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 151
    .local v12, userApkFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/pm/ExtraPackageManagerServices;->deleteOdexFile(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 154
    .end local v12           #userApkFile:Ljava/io/File;
    :cond_2
    invoke-static {v6}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    .line 155
    move-object/from16 v0, p0

    invoke-static {v0, v13, v10}, Lcom/android/server/pm/ExtraPackageManagerServices;->packagePermissionsUpdate(Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    .line 157
    :cond_3
    if-nez v2, :cond_4

    .line 158
    const-string v14, "/data/system/preinstall_history"

    invoke-static {v14, v9}, Lcom/android/server/pm/ExtraPackageManagerServices;->writePreinstallAppHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v5, :cond_0

    .line 162
    :cond_5
    invoke-static {v6}, Lcom/android/server/pm/ExtraPackageManagerServices;->installPreinstallApp(Ljava/io/File;)V

    goto :goto_1

    .line 169
    .end local v2           #hasRecorded:Z
    .end local v3           #i:I
    .end local v4           #installHistory:Ljava/util/ArrayList;
    .end local v5           #isNeedReinstall:Z
    .end local v6           #preinstallApp:Ljava/io/File;
    .end local v9           #preinstallName:Ljava/lang/String;
    .end local v10           #preinstallPkg:Landroid/content/pm/PackageParser$Package;
    .end local v11           #reinstallMarkFile:Ljava/io/File;
    .end local v13           #userPkgSetting:Lcom/android/server/pm/PackageSetting;
    :cond_6
    const-string v14, "ExtraPackageManagerServices"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No files in preinstall app dir "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_7
    return-void
.end method

.method public static postProcessNewInstall(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;)V
    .locals 2
    .parameter "info"
    .parameter "curPkgSettings"

    .prologue
    .line 174
    const-string v0, "ExtraPackageManagerServices"

    const-string v1, "postProcessNewInstall"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ExtraPackageManagerServices;->blockAutoStartedAppInternal(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/Settings;Z)V

    goto :goto_0
.end method

.method public static postScanPackages()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "persist.sys.auto-start.once"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "ExtraPackageManagerServices"

    const-string v1, "postScanPackages"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method private static readPreinstallAppHistory(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v3, hisList:Ljava/util/ArrayList;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v4, installHistoryFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 208
    .end local v4           #installHistoryFile:Ljava/io/File;
    :goto_0
    return-object v3

    .line 193
    .restart local v4       #installHistoryFile:Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 194
    .local v2, fileReader:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    .local v0, bufferReader:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 202
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 203
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v2           #fileReader:Ljava/io/FileReader;
    .end local v4           #installHistoryFile:Ljava/io/File;
    .end local v5           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/io/IOException;
    const-string v6, "ExtraPackageManagerServices"

    const-string v7, "readPreinstallAppHistory"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    .restart local v4       #installHistoryFile:Ljava/io/File;
    .restart local v5       #line:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static writePreinstallAppHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "filePath"
    .parameter "installPkgName"

    .prologue
    .line 213
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v3, installHistoryFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 217
    :cond_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 218
    .local v2, fileWriter:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 219
    .local v0, bufferedWriter:Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 220
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 222
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0           #bufferedWriter:Ljava/io/BufferedWriter;
    .end local v2           #fileWriter:Ljava/io/FileWriter;
    .end local v3           #installHistoryFile:Ljava/io/File;
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ExtraPackageManagerServices"

    const-string v5, "writePreinstallAppHistory"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
