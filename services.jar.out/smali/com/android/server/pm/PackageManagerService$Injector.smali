.class Lcom/android/server/pm/PackageManagerService$Injector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation build Landroid/annotation/LewaHook;
    value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_CLASS:Landroid/annotation/LewaHook$LewaHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static PruneVendorPkg(Lcom/android/server/pm/VendorSettings;Ljava/util/HashMap;)V
    .locals 6
    .parameter "vendorSettings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/VendorSettings;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, vendorPackages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    iget-object v3, p0, Lcom/android/server/pm/VendorSettings;->mVendorPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 230
    .local v2, vpsit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/VendorPackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/VendorPackageSetting;

    .line 232
    .local v1, vps:Lcom/android/server/pm/VendorPackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/VendorPackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 233
    .local v0, scannedVendorPkg:Landroid/content/pm/PackageParser$Package;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vendor package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/pm/VendorPackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been removed from system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-nez v0, :cond_0

    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 239
    .end local v0           #scannedVendorPkg:Landroid/content/pm/PackageParser$Package;
    .end local v1           #vps:Lcom/android/server/pm/VendorPackageSetting;
    :cond_1
    return-void
.end method

.method static addPackageToSlice(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/PackageInfo;I)Z
    .locals 3
    .parameter
    .parameter "pi"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 242
    const v2, 0x8000

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 243
    .local v0, listThemes:Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p1, Landroid/content/pm/PackageInfo;->isThemeApk:Z

    if-eqz v2, :cond_0

    .line 244
    const/4 p1, 0x0

    .line 247
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/pm/ParceledListSlice;->append(Landroid/os/Parcelable;)Z

    move-result v1

    :cond_1
    return v1

    .end local v0           #listThemes:Z
    :cond_2
    move v0, v1

    .line 242
    goto :goto_0
.end method

.method static addThemeManagerToSharedLpw(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .parameter "service"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v1, "com.tmobile.thememanager"

    const/16 v2, 0x514

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    .line 179
    return-void
.end method

.method static cleanAssetRedirections(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;)V
    .locals 3
    .parameter "service"
    .parameter "pkg"

    .prologue
    .line 273
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getIconManager()Llewa/util/IIconManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Llewa/util/IIconManager;->clearCustomizedIcons(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getAssetRedirectionManager()Lcom/android/internal/app/IAssetRedirectionManager;

    move-result-object v0

    .line 277
    .local v0, rm:Lcom/android/internal/app/IAssetRedirectionManager;
    if-nez v0, :cond_0

    .line 288
    :goto_1
    return-void

    .line 281
    :cond_0
    :try_start_1
    iget-boolean v1, p1, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAssetRedirectionManager;->clearRedirectionMapsByTheme(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    goto :goto_1

    .line 284
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAssetRedirectionManager;->clearPackageRedirectionMap(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 274
    .end local v0           #rm:Lcom/android/internal/app/IAssetRedirectionManager;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static deleteLockedZipFileIfExists(Ljava/lang/String;)V
    .locals 5
    .parameter "originalPackagePath"

    .prologue
    .line 218
    invoke-static {p0}, Landroid/content/pm/PackageParser;->getLockedZipFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, lockedZipFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, zipFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t delete locked zip file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    return-void
.end method

.method static getPackageCatgory(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, category:Ljava/lang/String;
    if-eqz p0, :cond_0

    iget-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v1, :cond_0

    .line 202
    const-string v0, "com.lewa.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    .line 205
    :cond_0
    return-object v0
.end method

.method static getPackageCatgory(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Ljava/lang/String;
    .locals 2
    .parameter "res"

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, category:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v1, v1, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v1, :cond_0

    .line 184
    const-string v0, "com.lewa.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    .line 187
    :cond_0
    return-object v0
.end method

.method static getPackageCatgory(Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, category:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isThemeApk:Z

    if-eqz v1, :cond_0

    .line 193
    const-string v0, "com.lewa.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    .line 196
    :cond_0
    return-object v0
.end method

.method static getPackageCatgory(Z)Ljava/lang/String;
    .locals 1
    .parameter "isThemeApk"

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, category:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 211
    const-string v0, "com.lewa.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    .line 214
    :cond_0
    return-object v0
.end method

.method static grantPermissionForLewa(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 6
    .parameter "pkg"
    .parameter "allowed"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 266
    const-string v2, "persist.sys.lewa_dev_mode"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "com.android."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "com.lewa."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    new-array v3, v1, [Landroid/content/pm/Signature;

    new-instance v4, Landroid/content/pm/Signature;

    const-string v5, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    invoke-direct {v4, v5}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move p1, v1

    .line 269
    :goto_0
    return-void

    :cond_2
    move p1, v0

    .line 266
    goto :goto_0
.end method

.method static ignoreLewaFrameworkRes(Lcom/android/server/pm/PackageManagerService;Ljava/util/HashSet;)V
    .locals 2
    .parameter "packageManagerService"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, hashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mFrameworkDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lewa-res.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method static pruneThemePkg(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZLcom/android/server/pm/PackageManagerService$PackageRemovedInfo;)V
    .locals 4
    .parameter "service"
    .parameter "packageName"
    .parameter "sendBroadCast"
    .parameter "deleteCodeAndResources"
    .parameter "info"

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, path:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 295
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 296
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 297
    iget-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    iput-boolean v2, p4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isThemeApk:Z

    .line 298
    iget-boolean v2, p4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isThemeApk:Z

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v2, p4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 300
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$Injector;->deleteLockedZipFileIfExists(Ljava/lang/String;)V

    .line 303
    :cond_0
    monitor-exit v3

    .line 304
    return-void

    .line 303
    .end local v0           #p:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static removeThemePkg(Landroid/content/pm/PackageParser$Package;I)Z
    .locals 4
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    const v3, 0x8000

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    move v0, v2

    .line 257
    .local v0, listThemes:Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v3, p0, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0           #listThemes:Z
    :cond_0
    move v0, v1

    .line 256
    goto :goto_0

    .restart local v0       #listThemes:Z
    :cond_1
    move v1, v2

    .line 257
    goto :goto_1
.end method

.method static removeThemePkg(Lcom/android/server/pm/PackageSetting;I)Z
    .locals 4
    .parameter "ps"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    const v3, 0x8000

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    move v0, v2

    .line 252
    .local v0, listThemes:Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v3, v3, Landroid/content/pm/PackageParser$Package;->mIsThemeApk:Z

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0           #listThemes:Z
    :cond_0
    move v0, v1

    .line 251
    goto :goto_0

    .restart local v0       #listThemes:Z
    :cond_1
    move v1, v2

    .line 252
    goto :goto_1
.end method

.method static skipVerifySignatures(Landroid/content/pm/PackageParser$Package;)Z
    .locals 4
    .parameter "pkg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    const-string v2, "persist.sys.lewa_dev_mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "com.android."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "com.lewa."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
