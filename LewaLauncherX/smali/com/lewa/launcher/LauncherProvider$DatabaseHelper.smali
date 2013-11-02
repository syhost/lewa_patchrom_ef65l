.class Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_NONCUSTOM:Ljava/lang/String; = "noncustom"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mCustomApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxId:J

.field private mScreenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    .line 264
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 259
    iput-wide v3, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 265
    iput-object p1, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 266
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 270
    iget-wide v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 273
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v0

    return v0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J
    .locals 18
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    .line 1154
    const-wide/16 v7, -0x1

    .line 1156
    .local v7, id:J
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1157
    .local v11, packageName:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1159
    .local v4, className:Ljava/lang/String;
    const/16 v14, 0xb

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, appType:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v14, v3}, Lcom/lewa/launcher/preference/OEMAppTypeProvider;->getAppComponentNameByType(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 1162
    .local v13, tempCn:Landroid/content/ComponentName;
    if-eqz v13, :cond_0

    .line 1163
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1164
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1176
    .end local v13           #tempCn:Landroid/content/ComponentName;
    :goto_0
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v11, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    .local v5, cn:Landroid/content/ComponentName;
    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1184
    .local v9, info:Landroid/content/pm/ActivityInfo;
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v7

    .line 1185
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1186
    const/high16 v14, 0x1020

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1188
    const-string v14, "intent"

    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v14, "title"

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v14, "itemType"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    const-string v14, "spanX"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1192
    const-string v14, "spanY"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1193
    const-string v14, "_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1194
    const-string v14, "favorites"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    #calls: Lcom/lewa/launcher/LauncherProvider;->dbInsertAndCheck(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {v0, v1, v14, v15, v2}, Lcom/lewa/launcher/LauncherProvider;->access$100(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gez v14, :cond_2

    .line 1195
    const-wide/16 v14, -0x1

    .line 1202
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    :goto_2
    return-wide v14

    .line 1166
    .restart local v13       #tempCn:Landroid/content/ComponentName;
    :cond_0
    const-wide/16 v14, -0x1

    goto :goto_2

    .line 1169
    .end local v13           #tempCn:Landroid/content/ComponentName;
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1170
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1178
    :catch_0
    move-exception v10

    .line 1179
    .local v10, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v14, 0x1

    :try_start_2
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1181
    .local v12, packages:[Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-direct {v5, v14, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    .restart local v5       #cn:Landroid/content/ComponentName;
    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .restart local v9       #info:Landroid/content/pm/ActivityInfo;
    goto/16 :goto_1

    .line 1197
    .end local v10           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #packages:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mCustomApps:Ljava/util/HashMap;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    :goto_3
    move-wide v14, v7

    .line 1202
    goto :goto_2

    .line 1198
    :catch_1
    move-exception v6

    .line 1199
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "Launcher.LauncherProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to add favorite: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private addAppWidget(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 18
    .parameter "parser"
    .parameter "attrs"
    .parameter "type"
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    const/4 v1, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1263
    .local v14, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1265
    .local v9, className:Ljava/lang/String;
    if-eqz v14, :cond_0

    if-nez v9, :cond_1

    .line 1266
    :cond_0
    const/4 v1, 0x0

    .line 1315
    :goto_0
    return v1

    .line 1269
    :cond_1
    const/4 v12, 0x1

    .line 1270
    .local v12, hasPackage:Z
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v14, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :goto_1
    if-eqz v12, :cond_7

    .line 1285
    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1286
    .local v5, spanX:I
    const/4 v1, 0x7

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 1289
    .local v6, spanY:I
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1290
    .local v7, extras:Landroid/os/Bundle;
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    .line 1292
    .local v17, widgetDepth:I
    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p3

    const/4 v1, 0x3

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    move/from16 v0, v17

    if-le v1, v0, :cond_6

    .line 1293
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    .line 1297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/lewa/launcher/R$styleable;->Extra:[I

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1298
    .local v8, ar:Landroid/content/res/TypedArray;
    const-string v1, "extra"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1299
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1300
    .local v13, key:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1301
    .local v16, value:Ljava/lang/String;
    if-eqz v13, :cond_4

    if-eqz v16, :cond_4

    .line 1302
    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 1273
    .end local v5           #spanX:I
    .end local v6           #spanY:I
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v8           #ar:Landroid/content/res/TypedArray;
    .end local v13           #key:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    .end local v17           #widgetDepth:I
    :catch_0
    move-exception v10

    .line 1274
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1276
    .local v15, packages:[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .end local v4           #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    aget-object v1, v15, v1

    invoke-direct {v4, v1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    .restart local v4       #cn:Landroid/content/ComponentName;
    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1279
    :catch_1
    move-exception v11

    .line 1280
    .local v11, e1:Ljava/lang/Exception;
    const/4 v12, 0x0

    goto :goto_1

    .line 1304
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #e1:Ljava/lang/Exception;
    .end local v15           #packages:[Ljava/lang/String;
    .restart local v5       #spanX:I
    .restart local v6       #spanY:I
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v8       #ar:Landroid/content/res/TypedArray;
    .restart local v13       #key:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    .restart local v17       #widgetDepth:I
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Widget extras must have a key and value"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1307
    .end local v13           #key:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Widgets can contain only extras"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v8           #ar:Landroid/content/res/TypedArray;
    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1312
    invoke-direct/range {v1 .. v7}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z

    move-result v1

    goto/16 :goto_0

    .line 1315
    .end local v5           #spanX:I
    .end local v6           #spanY:I
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v17           #widgetDepth:I
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z
    .locals 8
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "extras"

    .prologue
    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, allocatedAppWidgets:Z
    iget-object v5, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1324
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v5, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1326
    .local v1, appWidgetId:I
    const-string v5, "itemType"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1327
    const-string v5, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1328
    const-string v5, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1330
    const-string v5, "_id"

    invoke-virtual {p0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1331
    const-string v5, "favorites"

    const/4 v6, 0x0

    #calls: Lcom/lewa/launcher/LauncherProvider;->dbInsertAndCheck(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, v5, v6, p2}, Lcom/lewa/launcher/LauncherProvider;->access$100(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1333
    const/4 v0, 0x1

    .line 1336
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 1338
    invoke-static {v2, v1, p3}, Lcom/lewa/reflection/ReflUtils;->bindAppWidgetIdIfAllowed(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;)Z

    .line 1344
    :goto_0
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1345
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1347
    invoke-virtual {v4, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1348
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1349
    iget-object v5, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1355
    .end local v1           #appWidgetId:I
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return v0

    .line 1340
    .restart local v1       #appWidgetId:I
    :cond_1
    invoke-static {v2, v1, p3}, Lcom/lewa/reflection/ReflUtils;->bindAppWidgetId(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1351
    .end local v1           #appWidgetId:I
    :catch_0
    move-exception v3

    .line 1352
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v4, 0x2

    .line 1253
    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.android.alarmclock"

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 6
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 1206
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1207
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1209
    invoke-virtual {p0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    .line 1210
    .local v0, id:J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1211
    const-string v2, "favorites"

    const/4 v3, 0x0

    #calls: Lcom/lewa/launcher/LauncherProvider;->dbInsertAndCheck(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, v2, v3, p2}, Lcom/lewa/launcher/LauncherProvider;->access$100(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1212
    const-wide/16 v0, -0x1

    .line 1214
    .end local v0           #id:J
    :cond_0
    return-wide v0
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "db"
    .parameter "values"

    .prologue
    .line 1248
    invoke-direct {p0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    .line 1249
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J
    .locals 21
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1362
    .local v13, r:Landroid/content/res/Resources;
    const/16 v17, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1363
    .local v7, iconFileName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1364
    .local v8, iconResId:I
    if-eqz v7, :cond_0

    const-string v17, ".png"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1365
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1366
    const/4 v7, 0x0

    .line 1368
    :cond_0
    const/16 v17, 0x9

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 1371
    .local v15, titleResId:I
    const/16 v16, 0x0

    .line 1373
    .local v16, uri:Ljava/lang/String;
    const/16 v17, 0xa

    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1374
    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1380
    .local v11, intent:Landroid/content/Intent;
    if-nez v8, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    if-nez v15, :cond_4

    .line 1381
    :cond_2
    const-string v17, "Launcher.LauncherProvider"

    const-string v18, "Shortcut is missing title or icon resource ID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const-wide/16 v9, -0x1

    .line 1413
    .end local v11           #intent:Landroid/content/Intent;
    :cond_3
    :goto_0
    return-wide v9

    .line 1375
    :catch_0
    move-exception v6

    .line 1376
    .local v6, e:Ljava/net/URISyntaxException;
    const-string v17, "Launcher.LauncherProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Shortcut has malformed uri: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 1385
    .end local v6           #e:Ljava/net/URISyntaxException;
    .restart local v11       #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v9

    .line 1386
    .local v9, id:J
    const/high16 v17, 0x1000

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1387
    const-string v17, "intent"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v17, "title"

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v17, "itemType"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1390
    const-string v17, "spanX"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1391
    const-string v17, "spanY"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1392
    const-string v17, "iconType"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1393
    const-string v17, "iconPackage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    if-nez v8, :cond_5

    .line 1395
    const-string v17, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :goto_1
    const-string v17, "_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1401
    const-string v17, "favorites"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, p2

    #calls: Lcom/lewa/launcher/LauncherProvider;->dbInsertAndCheck(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lewa/launcher/LauncherProvider;->access$100(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gez v17, :cond_6

    .line 1402
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 1397
    :cond_5
    const-string v17, "iconResource"

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1405
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1407
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v11, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 1408
    .local v14, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_3

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1409
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    .local v5, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mCustomApps:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 821
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 825
    :cond_1
    if-eq v0, v2, :cond_2

    .line 826
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 829
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 830
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 833
    :cond_3
    return-void
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    .line 342
    const/4 v6, 0x0

    .line 344
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 346
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 350
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 356
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 358
    :try_start_1
    invoke-direct {p0, p1, v7}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_2

    const/4 v6, 0x1

    .line 360
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 363
    if-eqz v6, :cond_0

    .line 364
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    :cond_0
    if-eqz v6, :cond_1

    .line 371
    invoke-direct {p0, p1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 374
    :cond_1
    return v6

    .line 358
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 360
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 351
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static convertToInt(Ljava/lang/String;I)I
    .locals 4
    .parameter "str"
    .parameter "def"

    .prologue
    .line 1079
    if-nez p0, :cond_0

    .line 1087
    .end local p1
    :goto_0
    return p1

    .line 1083
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Launcher.LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert to int failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .parameter "db"

    .prologue
    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    .line 711
    .local v12, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v3, 0x3

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    .line 717
    .local v13, bindSources:[I
    const-string v3, "itemType"

    invoke-static {v3, v13}, Lcom/lewa/launcher/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 719
    .local v6, selectWhere:Ljava/lang/String;
    const/4 v14, 0x0

    .line 721
    .local v14, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 724
    :try_start_0
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "itemType"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 729
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 730
    .local v20, values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 731
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 732
    .local v16, favoriteId:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    .line 736
    .local v18, favoriteType:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    .line 742
    .local v11, appWidgetId:I
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 743
    const-string v3, "itemType"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    const-string v3, "appWidgetId"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_2

    .line 748
    const-string v3, "spanX"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    const-string v3, "spanY"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 756
    .local v19, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 758
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_6

    .line 759
    const/16 v3, 0x3e8

    move/from16 v0, v18

    if-ne v0, v3, :cond_4

    .line 764
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.alarmclock"

    const-string v5, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v11, v3}, Lcom/lewa/reflection/ReflUtils;->bindAppWidgetIdIfAllowed(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 801
    .end local v11           #appWidgetId:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 802
    .local v15, ex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem allocating appWidgetId"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 807
    .end local v15           #ex:Ljava/lang/RuntimeException;
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v15

    .line 808
    .local v15, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 810
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 811
    if-eqz v14, :cond_1

    .line 812
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 815
    .end local v15           #ex:Landroid/database/SQLException;
    :cond_1
    :goto_2
    return-void

    .line 751
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_4
    const-string v3, "spanX"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string v3, "spanY"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 810
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 811
    if-eqz v14, :cond_3

    .line 812
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 767
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v19       #updateWhere:Ljava/lang/String;
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_4
    const/16 v3, 0x3ea

    move/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 772
    :try_start_5
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v11, v3}, Lcom/lewa/reflection/ReflUtils;->bindAppWidgetIdIfAllowed(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;)Z

    goto/16 :goto_0

    .line 775
    :cond_5
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_0

    .line 779
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v11, v3}, Lcom/lewa/reflection/ReflUtils;->bindAppWidgetIdIfAllowed(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;)Z

    goto/16 :goto_0

    .line 784
    :cond_6
    const/16 v3, 0x3e8

    move/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 786
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.alarmclock"

    const-string v5, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v11, v3}, Lcom/lewa/reflection/ReflUtils;->bindAppWidgetId(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;)Z

    goto/16 :goto_0

    .line 789
    :cond_7
    const/16 v3, 0x3ea

    move/from16 v0, v18

    if-ne v0, v3, :cond_8

    .line 791
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v11, v3}, Lcom/lewa/reflection/ReflUtils;->bindAppWidgetId(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;)Z

    goto/16 :goto_0

    .line 794
    :cond_8
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_0

    .line 796
    invoke-direct/range {p0 .. p0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v12, v11, v3}, Lcom/lewa/reflection/ReflUtils;->bindAppWidgetId(Landroid/appwidget/AppWidgetManager;ILandroid/content/ComponentName;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 806
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :cond_9
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 810
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 811
    if-eqz v14, :cond_1

    .line 812
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 711
    nop

    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
        0xe9t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 29
    .parameter "db"
    .parameter "c"

    .prologue
    .line 378
    const-string v25, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 379
    .local v15, idIndex:I
    const-string v25, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 380
    .local v16, intentIndex:I
    const-string v25, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 381
    .local v21, titleIndex:I
    const-string v25, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 382
    .local v14, iconTypeIndex:I
    const-string v25, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 383
    .local v11, iconIndex:I
    const-string v25, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 384
    .local v12, iconPackageIndex:I
    const-string v25, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 385
    .local v13, iconResourceIndex:I
    const-string v25, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 386
    .local v7, containerIndex:I
    const-string v25, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 387
    .local v17, itemTypeIndex:I
    const-string v25, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 388
    .local v20, screenIndex:I
    const-string v25, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 389
    .local v5, cellXIndex:I
    const-string v25, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 390
    .local v6, cellYIndex:I
    const-string v25, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 391
    .local v23, uriIndex:I
    const-string v25, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 393
    .local v8, displayModeIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v19, v0

    .line 394
    .local v19, rows:[Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 395
    .local v9, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 396
    new-instance v24, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v25

    invoke-direct/range {v24 .. v25}, Landroid/content/ContentValues;-><init>(I)V

    .line 397
    .local v24, values:Landroid/content/ContentValues;
    const-string v25, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    const-string v25, "intent"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v25, "title"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v25, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v25, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 402
    const-string v25, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v25, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v25, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    const-string v25, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string v25, "appWidgetId"

    const/16 v26, -0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v25, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    const-string v25, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    const-string v25, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    const-string v25, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v25, "displayMode"

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .local v10, i:I
    aput-object v24, v19, v9

    move v9, v10

    .line 413
    .end local v10           #i:I
    .restart local v9       #i:I
    goto/16 :goto_0

    .line 415
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 416
    const/16 v22, 0x0

    .line 418
    .local v22, total:I
    :try_start_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 419
    .local v18, numValues:I
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 420
    const-string v25, "favorites"

    const/16 v26, 0x0

    aget-object v27, v19, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    #calls: Lcom/lewa/launcher/LauncherProvider;->dbInsertAndCheck(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lewa/launcher/LauncherProvider;->access$100(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-gez v25, :cond_1

    .line 421
    const/16 v22, 0x0

    .line 428
    .end local v22           #total:I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 431
    :goto_2
    return v22

    .line 423
    .restart local v22       #total:I
    :cond_1
    add-int/lit8 v22, v22, 0x1

    .line 419
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 426
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v18           #numValues:I
    :catchall_0
    move-exception v25

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v25
.end method

.method private getAllApps(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 5
    .parameter "packageManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1071
    .local v2, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1073
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Lcom/lewa/launcher/Utilities$PackageInstalledTimeComparator;

    invoke-direct {v1, p1}, Lcom/lewa/launcher/Utilities$PackageInstalledTimeComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 1074
    .local v1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1075
    return-object v0
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 1234
    iget-object v5, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1235
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 1236
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_1

    move-object v2, v6

    .line 1244
    :cond_0
    :goto_0
    return-object v2

    .line 1237
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1238
    .local v3, providerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1239
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1240
    .local v2, provider:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1238
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #provider:Landroid/content/ComponentName;
    :cond_3
    move-object v2, v6

    .line 1244
    goto :goto_0
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 1219
    iget-object v2, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 1223
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-static {v1}, Lcom/lewa/reflection/ReflUtils;->getGlobalSearchActivity(Landroid/app/SearchManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1225
    .local v0, searchComponent:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 1226
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6
    .parameter "db"

    .prologue
    .line 686
    const-string v4, "SELECT MAX(_id) FROM favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 689
    .local v0, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 690
    .local v3, maxIdIndex:I
    const-wide/16 v1, -0x1

    .line 691
    .local v1, id:J
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 692
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 694
    :cond_0
    if-eqz v0, :cond_1

    .line 695
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 698
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    .line 699
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: could not query max id"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 702
    :cond_2
    return-wide v1
.end method

.method private loadAllApps(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;III)I
    .locals 24
    .parameter "db"
    .parameter "pm"
    .parameter "startX"
    .parameter "startY"
    .parameter "startScreen"

    .prologue
    .line 1092
    const/16 v16, 0x0

    .line 1094
    .local v16, load:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->getAllApps(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v6

    .line 1095
    .local v6, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v15, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v15, intent:Landroid/content/Intent;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1097
    .local v19, values:Landroid/content/ContentValues;
    move/from16 v11, p3

    .line 1098
    .local v11, curX:I
    move/from16 v12, p4

    .line 1099
    .local v12, curY:I
    move/from16 v9, p5

    .line 1100
    .local v9, curScr:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->getScreenId(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v10

    .line 1101
    .local v10, curScrId:I
    const/4 v7, 0x0

    .local v7, className:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1103
    .local v17, packageName:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 1104
    .local v18, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1105
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1106
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    invoke-direct {v8, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    .local v8, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mCustomApps:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 1108
    .local v5, added:Ljava/lang/Boolean;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1111
    :cond_1
    invoke-virtual {v15, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1112
    const/high16 v20, 0x1020

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1114
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 1115
    const-string v20, "container"

    const/16 v21, -0x64

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1117
    const-string v20, "screen"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1118
    const-string v20, "cellX"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    const-string v20, "cellY"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1120
    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    const-string v20, "intent"

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v20, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v20, "itemType"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1124
    const-string v20, "spanX"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1125
    const-string v20, "spanY"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    const-string v20, "_id"

    invoke-virtual/range {p0 .. p0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1127
    const-string v20, "favorites"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v19

    #calls: Lcom/lewa/launcher/LauncherProvider;->dbInsertAndCheck(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lewa/launcher/LauncherProvider;->access$100(Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_2

    .line 1128
    const/16 v20, -0x1

    .line 1149
    .end local v5           #added:Ljava/lang/Boolean;
    .end local v8           #cn:Landroid/content/ComponentName;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v18           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_1
    return v20

    .line 1130
    .restart local v5       #added:Ljava/lang/Boolean;
    .restart local v8       #cn:Landroid/content/ComponentName;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v18       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$300()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v11, v0, :cond_3

    .line 1131
    add-int/lit8 v11, v11, 0x1

    .line 1142
    :goto_2
    add-int/lit8 v16, v16, 0x1

    .line 1143
    goto/16 :goto_0

    .line 1133
    :cond_3
    const/4 v11, 0x0

    .line 1134
    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$400()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v12, v0, :cond_4

    .line 1135
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1137
    :cond_4
    const/4 v12, 0x0

    .line 1138
    add-int/lit8 v9, v9, 0x1

    .line 1139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->getScreenId(Landroid/database/sqlite/SQLiteDatabase;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_2

    .line 1144
    .end local v5           #added:Ljava/lang/Boolean;
    .end local v8           #cn:Landroid/content/ComponentName;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v18           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v13

    .line 1145
    .local v13, e:Ljava/lang/RuntimeException;
    const-string v20, "Launcher.LauncherProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to add app: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v13           #e:Ljava/lang/RuntimeException;
    :cond_5
    move/from16 v20, v16

    .line 1149
    goto :goto_1
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 62
    .parameter "db"
    .parameter "workspaceResourceId"

    .prologue
    .line 842
    const/16 v30, 0x0

    .line 843
    .local v30, noCustomArea_X:I
    const/16 v31, 0x0

    .line 844
    .local v31, noCustomArea_Y:I
    const/16 v32, 0x2

    .line 845
    .local v32, noCustomArea_Scr:I
    const/16 v27, 0x0

    .line 846
    .local v27, lastX:I
    const/16 v28, 0x0

    .line 847
    .local v28, lastY:I
    const/16 v29, 0x0

    .line 849
    .local v29, lastScr:I
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v8, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 850
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 853
    .local v5, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 854
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mCustomApps:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 855
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mCustomApps:Ljava/util/HashMap;

    .line 857
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mScreenIds:Ljava/util/List;

    if-nez v3, :cond_1

    .line 858
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mScreenIds:Ljava/util/List;

    .line 860
    :cond_1
    const/16 v50, 0x0

    .line 863
    .local v50, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lewa/launcher/LauncherApplication;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 864
    const v54, 0x7f050000

    .line 868
    .local v54, resId:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 869
    .local v10, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    .line 870
    .local v11, attrs:Landroid/util/AttributeSet;
    const-string v3, "favorites"

    invoke-static {v10, v3}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 872
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v43

    .line 876
    .local v43, depth:I
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v3, 0x3

    if-ne v12, v3, :cond_3

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v43

    if-le v3, v0, :cond_8

    :cond_3
    const/4 v3, 0x1

    if-eq v12, v3, :cond_8

    .line 878
    const/4 v3, 0x2

    if-ne v12, v3, :cond_2

    .line 882
    const/16 v39, 0x0

    .line 883
    .local v39, added:Z
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v53

    .line 884
    .local v53, name:Ljava/lang/String;
    const/16 v21, 0x1

    .line 885
    .local v21, spanX:I
    const/16 v22, 0x1

    .line 887
    .local v22, spanY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/lewa/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v3, v11, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 889
    .local v6, a:Landroid/content/res/TypedArray;
    const-wide/16 v41, -0x64

    .line 890
    .local v41, container:J
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 891
    const/4 v3, 0x2

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 894
    :cond_4
    const/4 v3, 0x3

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 895
    .local v55, screen:Ljava/lang/String;
    if-nez v55, :cond_b

    const/16 v57, 0x0

    .line 896
    .local v57, screenIdx:I
    :goto_2
    move/from16 v56, v57

    .line 897
    .local v56, screenId:I
    const-wide/16 v3, -0x64

    cmp-long v3, v41, v3

    if-nez v3, :cond_5

    .line 898
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->getScreenId(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v56

    .line 901
    :cond_5
    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 902
    .local v60, x:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 904
    .local v61, y:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 905
    const-string v3, "container"

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 906
    const-string v3, "screen"

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    const-string v3, "cellX"

    move-object/from16 v0, v60

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v3, "cellY"

    move-object/from16 v0, v61

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v3, "favorite"

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 911
    invoke-direct/range {v3 .. v8}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v51

    .line 912
    .local v51, id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v51, v3

    if-ltz v3, :cond_c

    const/16 v39, 0x1

    .line 989
    .end local v51           #id:J
    :cond_6
    :goto_3
    if-eqz v39, :cond_7

    .line 990
    add-int/lit8 v50, v50, 0x1

    .line 991
    const/4 v3, 0x1

    move-object/from16 v0, v60

    invoke-static {v0, v3}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertToInt(Ljava/lang/String;I)I

    move-result v18

    const/4 v3, 0x1

    move-object/from16 v0, v61

    invoke-static {v0, v3}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertToInt(Ljava/lang/String;I)I

    move-result v19

    const/4 v3, 0x0

    move-object/from16 v0, v55

    invoke-static {v0, v3}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertToInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->nextCell(IIIII)[I

    move-result-object v40

    .line 993
    .local v40, cellPos:[I
    const/4 v3, 0x0

    aget v24, v40, v3

    const/4 v3, 0x1

    aget v25, v40, v3

    const/4 v3, 0x2

    aget v26, v40, v3

    move-object/from16 v23, p0

    invoke-virtual/range {v23 .. v29}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->positionComparator(IIIIII)I

    move-result v3

    if-lez v3, :cond_7

    .line 994
    const/4 v3, 0x0

    aget v27, v40, v3

    .line 995
    const/4 v3, 0x1

    aget v28, v40, v3

    .line 996
    const/4 v3, 0x2

    aget v29, v40, v3

    .line 1000
    .end local v40           #cellPos:[I
    :cond_7
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    .line 1002
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v10           #parser:Landroid/content/res/XmlResourceParser;
    .end local v11           #attrs:Landroid/util/AttributeSet;
    .end local v12           #type:I
    .end local v21           #spanX:I
    .end local v22           #spanY:I
    .end local v39           #added:Z
    .end local v41           #container:J
    .end local v43           #depth:I
    .end local v53           #name:Ljava/lang/String;
    .end local v54           #resId:I
    .end local v55           #screen:Ljava/lang/String;
    .end local v56           #screenId:I
    .end local v57           #screenIdx:I
    .end local v60           #x:Ljava/lang/String;
    .end local v61           #y:Ljava/lang/String;
    :catch_0
    move-exception v44

    .line 1003
    .local v44, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v44

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v44           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_8
    :goto_4
    move-object/from16 v26, p0

    .line 1009
    invoke-virtual/range {v26 .. v32}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->positionComparator(IIIIII)I

    move-result v3

    if-lez v3, :cond_9

    .line 1011
    const-string v3, "Launcher.LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Position overlap, non-customized area start(x, y, scr):"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "; But last position:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    move/from16 v30, v27

    .line 1015
    move/from16 v31, v28

    .line 1016
    move/from16 v32, v29

    :cond_9
    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move-object/from16 v35, v7

    move/from16 v36, v30

    move/from16 v37, v31

    move/from16 v38, v32

    .line 1019
    invoke-direct/range {v33 .. v38}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->loadAllApps(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/pm/PackageManager;III)I

    .line 1020
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mCustomApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1021
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mCustomApps:Ljava/util/HashMap;

    .line 1022
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mScreenIds:Ljava/util/List;

    .line 1023
    return v50

    .line 866
    :cond_a
    const/high16 v54, 0x7f05

    .restart local v54       #resId:I
    goto/16 :goto_0

    .line 895
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v10       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v11       #attrs:Landroid/util/AttributeSet;
    .restart local v12       #type:I
    .restart local v21       #spanX:I
    .restart local v22       #spanY:I
    .restart local v39       #added:Z
    .restart local v41       #container:J
    .restart local v43       #depth:I
    .restart local v53       #name:Ljava/lang/String;
    .restart local v55       #screen:Ljava/lang/String;
    :cond_b
    :try_start_1
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v57

    goto/16 :goto_2

    .line 912
    .restart local v51       #id:J
    .restart local v56       #screenId:I
    .restart local v57       #screenIdx:I
    .restart local v60       #x:Ljava/lang/String;
    .restart local v61       #y:Ljava/lang/String;
    :cond_c
    const/16 v39, 0x0

    goto/16 :goto_3

    .line 913
    .end local v51           #id:J
    :cond_d
    const-string v3, "search"

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 914
    const/16 v21, 0x4

    .line 915
    const/16 v21, 0x1

    .line 916
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v39

    goto/16 :goto_3

    .line 917
    :cond_e
    const-string v3, "clock"

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 918
    const/16 v21, 0x2

    .line 919
    const/16 v21, 0x2

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v39

    goto/16 :goto_3

    .line 921
    :cond_f
    const-string v3, "appwidget"

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 922
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    .line 923
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    .line 924
    invoke-direct/range {v9 .. v16}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v39

    goto/16 :goto_3

    .line 925
    :cond_10
    const-string v3, "shortcut"

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 926
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v51

    .line 927
    .restart local v51       #id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v51, v3

    if-ltz v3, :cond_11

    const/16 v39, 0x1

    .line 928
    :goto_5
    goto/16 :goto_3

    .line 927
    :cond_11
    const/16 v39, 0x0

    goto :goto_5

    .line 928
    .end local v51           #id:J
    :cond_12
    const-string v3, "folder"

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 930
    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v59

    .line 931
    .local v59, titleResId:I
    const/4 v3, -0x1

    move/from16 v0, v59

    if-eq v0, v3, :cond_16

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v59

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v58

    .line 936
    .local v58, title:Ljava/lang/String;
    :goto_6
    const-string v3, "title"

    move-object/from16 v0, v58

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v46

    .line 938
    .local v46, folderId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v46, v3

    if-ltz v3, :cond_17

    const/16 v39, 0x1

    .line 940
    :goto_7
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v48, folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v45

    .line 944
    .local v45, folderDepth:I
    :cond_13
    :goto_8
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v3, 0x3

    if-ne v12, v3, :cond_14

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v45

    if-le v3, v0, :cond_1a

    .line 945
    :cond_14
    const/4 v3, 0x2

    if-ne v12, v3, :cond_13

    .line 948
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v49

    .line 950
    .local v49, folder_item_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/lewa/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v3, v11, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 952
    .local v16, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 953
    const-string v3, "container"

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 955
    const-string v3, "favorite"

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-wide/16 v3, 0x0

    cmp-long v3, v46, v3

    if-ltz v3, :cond_18

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 956
    invoke-direct/range {v13 .. v18}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v51

    .line 958
    .restart local v51       #id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v51, v3

    if-ltz v3, :cond_15

    .line 959
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    :cond_15
    :goto_9
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_8

    .line 1004
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v10           #parser:Landroid/content/res/XmlResourceParser;
    .end local v11           #attrs:Landroid/util/AttributeSet;
    .end local v12           #type:I
    .end local v16           #ar:Landroid/content/res/TypedArray;
    .end local v21           #spanX:I
    .end local v22           #spanY:I
    .end local v39           #added:Z
    .end local v41           #container:J
    .end local v43           #depth:I
    .end local v45           #folderDepth:I
    .end local v46           #folderId:J
    .end local v48           #folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v49           #folder_item_name:Ljava/lang/String;
    .end local v51           #id:J
    .end local v53           #name:Ljava/lang/String;
    .end local v54           #resId:I
    .end local v55           #screen:Ljava/lang/String;
    .end local v56           #screenId:I
    .end local v57           #screenIdx:I
    .end local v58           #title:Ljava/lang/String;
    .end local v59           #titleResId:I
    .end local v60           #x:Ljava/lang/String;
    .end local v61           #y:Ljava/lang/String;
    :catch_1
    move-exception v44

    .line 1005
    .local v44, e:Ljava/io/IOException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v44

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 934
    .end local v44           #e:Ljava/io/IOException;
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v10       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v11       #attrs:Landroid/util/AttributeSet;
    .restart local v12       #type:I
    .restart local v21       #spanX:I
    .restart local v22       #spanY:I
    .restart local v39       #added:Z
    .restart local v41       #container:J
    .restart local v43       #depth:I
    .restart local v53       #name:Ljava/lang/String;
    .restart local v54       #resId:I
    .restart local v55       #screen:Ljava/lang/String;
    .restart local v56       #screenId:I
    .restart local v57       #screenIdx:I
    .restart local v59       #titleResId:I
    .restart local v60       #x:Ljava/lang/String;
    .restart local v61       #y:Ljava/lang/String;
    :cond_16
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v58

    .restart local v58       #title:Ljava/lang/String;
    goto/16 :goto_6

    .line 938
    .restart local v46       #folderId:J
    :cond_17
    const/16 v39, 0x0

    goto/16 :goto_7

    .line 961
    .restart local v16       #ar:Landroid/content/res/TypedArray;
    .restart local v45       #folderDepth:I
    .restart local v48       #folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v49       #folder_item_name:Ljava/lang/String;
    :cond_18
    const-string v3, "shortcut"

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-wide/16 v3, 0x0

    cmp-long v3, v46, v3

    if-ltz v3, :cond_19

    .line 962
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v5, v2}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v51

    .line 963
    .restart local v51       #id:J
    const-wide/16 v3, 0x0

    cmp-long v3, v51, v3

    if-ltz v3, :cond_15

    .line 964
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    .line 1006
    .end local v6           #a:Landroid/content/res/TypedArray;
    .end local v10           #parser:Landroid/content/res/XmlResourceParser;
    .end local v11           #attrs:Landroid/util/AttributeSet;
    .end local v12           #type:I
    .end local v16           #ar:Landroid/content/res/TypedArray;
    .end local v21           #spanX:I
    .end local v22           #spanY:I
    .end local v39           #added:Z
    .end local v41           #container:J
    .end local v43           #depth:I
    .end local v45           #folderDepth:I
    .end local v46           #folderId:J
    .end local v48           #folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v49           #folder_item_name:Ljava/lang/String;
    .end local v51           #id:J
    .end local v53           #name:Ljava/lang/String;
    .end local v54           #resId:I
    .end local v55           #screen:Ljava/lang/String;
    .end local v56           #screenId:I
    .end local v57           #screenIdx:I
    .end local v58           #title:Ljava/lang/String;
    .end local v59           #titleResId:I
    .end local v60           #x:Ljava/lang/String;
    .end local v61           #y:Ljava/lang/String;
    :catch_2
    move-exception v44

    .line 1007
    .local v44, e:Ljava/lang/RuntimeException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Got exception parsing favorites."

    move-object/from16 v0, v44

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 967
    .end local v44           #e:Ljava/lang/RuntimeException;
    .restart local v6       #a:Landroid/content/res/TypedArray;
    .restart local v10       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v11       #attrs:Landroid/util/AttributeSet;
    .restart local v12       #type:I
    .restart local v16       #ar:Landroid/content/res/TypedArray;
    .restart local v21       #spanX:I
    .restart local v22       #spanY:I
    .restart local v39       #added:Z
    .restart local v41       #container:J
    .restart local v43       #depth:I
    .restart local v45       #folderDepth:I
    .restart local v46       #folderId:J
    .restart local v48       #folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v49       #folder_item_name:Ljava/lang/String;
    .restart local v53       #name:Ljava/lang/String;
    .restart local v54       #resId:I
    .restart local v55       #screen:Ljava/lang/String;
    .restart local v56       #screenId:I
    .restart local v57       #screenIdx:I
    .restart local v58       #title:Ljava/lang/String;
    .restart local v59       #titleResId:I
    .restart local v60       #x:Ljava/lang/String;
    .restart local v61       #y:Ljava/lang/String;
    :cond_19
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Folders can contain only shortcuts"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 975
    .end local v16           #ar:Landroid/content/res/TypedArray;
    .end local v49           #folder_item_name:Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_6

    const-wide/16 v3, 0x0

    cmp-long v3, v46, v3

    if-ltz v3, :cond_6

    .line 977
    move-object/from16 v0, p1

    move-wide/from16 v1, v46

    #calls: Lcom/lewa/launcher/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    invoke-static {v0, v1, v2}, Lcom/lewa/launcher/LauncherProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 978
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 979
    const/4 v3, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p1

    #calls: Lcom/lewa/launcher/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    invoke-static {v0, v3, v4}, Lcom/lewa/launcher/LauncherProvider;->access$200(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 981
    :cond_1b
    const/16 v39, 0x0

    goto/16 :goto_3

    .line 983
    .end local v45           #folderDepth:I
    .end local v46           #folderId:J
    .end local v48           #folderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v58           #title:Ljava/lang/String;
    .end local v59           #titleResId:I
    :cond_1c
    const-string v3, "noncustom"

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 984
    const/4 v3, 0x0

    move-object/from16 v0, v60

    invoke-static {v0, v3}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertToInt(Ljava/lang/String;I)I

    move-result v30

    .line 985
    const/4 v3, 0x0

    move-object/from16 v0, v61

    invoke-static {v0, v3}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertToInt(Ljava/lang/String;I)I

    move-result v31

    .line 986
    const/4 v3, 0x0

    move-object/from16 v0, v55

    invoke-static {v0, v3}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertToInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v32

    goto/16 :goto_3
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    .line 617
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 623
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 624
    .local v9, logged:Z
    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 627
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 630
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 631
    .local v8, idIndex:I
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 633
    .local v5, iconIndex:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 634
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 635
    .local v6, id:J
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 637
    .local v2, data:[B
    const/4 v11, 0x0

    :try_start_1
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/lewa/launcher/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 640
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 641
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 642
    invoke-static {v0}, Lcom/lewa/launcher/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 643
    if-eqz v2, :cond_1

    .line 644
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 645
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 647
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 649
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 650
    .local v3, e:Ljava/lang/Exception;
    if-nez v9, :cond_2

    .line 651
    :try_start_2
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 653
    :cond_2
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 659
    .end local v2           #data:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iconIndex:I
    .end local v6           #id:J
    .end local v8           #idIndex:I
    :catch_1
    move-exception v4

    .line 660
    .local v4, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 662
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 663
    if-eqz v10, :cond_3

    .line 664
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 666
    :cond_3
    if-eqz v1, :cond_4

    .line 667
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 670
    .end local v4           #ex:Landroid/database/SQLException;
    :cond_4
    :goto_2
    return-void

    .line 658
    .restart local v5       #iconIndex:I
    .restart local v8       #idIndex:I
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 662
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 663
    if-eqz v10, :cond_6

    .line 664
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 666
    :cond_6
    if-eqz v1, :cond_4

    .line 667
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 662
    .end local v5           #iconIndex:I
    .end local v8           #idIndex:I
    :catchall_0
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 663
    if-eqz v10, :cond_7

    .line 664
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 666
    :cond_7
    if-eqz v1, :cond_8

    .line 667
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/lewa/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 284
    return-void
.end method

.method private setFlagToLoadDefaultWorkspaceLater()V
    .locals 5

    .prologue
    .line 333
    invoke-static {}, Lcom/lewa/launcher/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, spKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 335
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 336
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "DB_CREATED_BUT_DEFAULT_WORKSPACE_NOT_LOADED"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    return-void
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 26
    .parameter "db"

    .prologue
    .line 537
    const-string v3, "itemType"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v7, 0x1

    aput v7, v4, v5

    invoke-static {v3, v4}, Lcom/lewa/launcher/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, selectWhere:Ljava/lang/String;
    const/4 v12, 0x0

    .line 541
    .local v12, c:Landroid/database/Cursor;
    const-string v11, "com.android.contacts.action.QUICK_CONTACT"

    .line 542
    .local v11, actionQuickContact:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 545
    :try_start_0
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "intent"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 548
    if-nez v12, :cond_1

    const/4 v3, 0x0

    .line 607
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 608
    if-eqz v12, :cond_0

    .line 609
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_0
    :goto_0
    return v3

    .line 552
    :cond_1
    :try_start_1
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 553
    .local v18, idIndex:I
    const-string v3, "intent"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 555
    .local v20, intentIndex:I
    :cond_2
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 556
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 557
    .local v16, favoriteId:J
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v21

    .line 558
    .local v21, intentUri:Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 560
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, v21

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v19

    .line 561
    .local v19, intent:Landroid/content/Intent;
    const-string v3, "Home"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 563
    .local v24, uri:Landroid/net/Uri;
    if-eqz v24, :cond_2

    .line 564
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 565
    .local v13, data:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    const-string v3, "content://contacts/people/"

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 571
    :cond_4
    new-instance v22, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v22, newIntent:Landroid/content/Intent;
    const v3, 0x10008000

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 579
    const-string v3, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 587
    .local v25, values:Landroid/content/ContentValues;
    const-string v3, "intent"

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 591
    .local v23, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 594
    .end local v13           #data:Ljava/lang/String;
    .end local v19           #intent:Landroid/content/Intent;
    .end local v22           #newIntent:Landroid/content/Intent;
    .end local v23           #updateWhere:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/Uri;
    .end local v25           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 595
    .local v15, ex:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 603
    .end local v15           #ex:Ljava/lang/RuntimeException;
    .end local v16           #favoriteId:J
    .end local v18           #idIndex:I
    .end local v20           #intentIndex:I
    .end local v21           #intentUri:Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 604
    .local v15, ex:Landroid/database/SQLException;
    :try_start_4
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem while upgrading contacts"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 605
    const/4 v3, 0x0

    .line 607
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 608
    if-eqz v12, :cond_0

    .line 609
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 596
    .end local v15           #ex:Landroid/database/SQLException;
    .restart local v16       #favoriteId:J
    .restart local v18       #idIndex:I
    .restart local v20       #intentIndex:I
    .restart local v21       #intentUri:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 597
    .local v14, e:Ljava/net/URISyntaxException;
    :try_start_5
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 607
    .end local v14           #e:Ljava/net/URISyntaxException;
    .end local v16           #favoriteId:J
    .end local v18           #idIndex:I
    .end local v20           #intentIndex:I
    .end local v21           #intentUri:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 608
    if-eqz v12, :cond_5

    .line 609
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 602
    .restart local v18       #idIndex:I
    .restart local v20       #intentIndex:I
    :cond_6
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    .line 607
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 608
    if-eqz v12, :cond_7

    .line 609
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public generateNewId()J
    .locals 4

    .prologue
    .line 678
    iget-wide v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 679
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_0
    iget-wide v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 682
    iget-wide v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    return-wide v0
.end method

.method getScreenId(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 6
    .parameter "db"
    .parameter "screenIdx"

    .prologue
    .line 1027
    const-wide/16 v1, 0x1

    .line 1028
    .local v1, screenId:J
    iget-object v4, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mScreenIds:Ljava/util/List;

    if-eqz v4, :cond_0

    if-gez p2, :cond_1

    const/16 v4, 0x64

    if-lt p2, v4, :cond_1

    .line 1029
    :cond_0
    long-to-int v4, v1

    .line 1042
    :goto_0
    return v4

    .line 1031
    :cond_1
    iget-object v4, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mScreenIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p2, v4, :cond_2

    .line 1032
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1033
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mScreenIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, c:I
    :goto_1
    if-gt v0, p2, :cond_3

    .line 1034
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1035
    const-string v4, "screenOrder"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1036
    const-string v4, "screens"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1037
    iget-object v4, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mScreenIds:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1040
    .end local v0           #c:I
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mScreenIds:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1042
    :cond_3
    long-to-int v4, v1

    goto :goto_0
.end method

.method nextCell(IIIII)[I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "scr"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1052
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 1053
    .local v0, result:[I
    add-int v1, p1, p4

    aput v1, v0, v3

    .line 1054
    add-int v1, p2, p5

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v4

    .line 1055
    aput p3, v0, v5

    .line 1057
    aget v1, v0, v3

    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$300()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1058
    aput v3, v0, v3

    .line 1059
    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 1061
    :cond_0
    aget v1, v0, v4

    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$400()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1062
    aput v3, v0, v3

    .line 1063
    aput v3, v0, v4

    .line 1064
    aget v1, v0, v5

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    .line 1066
    :cond_1
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 290
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 292
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGERcallCount INTEGERisHide    INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    const-string v0, "DROP TABLE IF EXISTS screens"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    const-string v0, "CREATE TABLE screens (_id INTEGER PRIMARY KEY, screenOrder INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 321
    invoke-direct {p0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 324
    :cond_0
    invoke-direct {p0, p1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 329
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v4, 0x3

    .line 438
    move v1, p2

    .line 439
    .local v1, version:I
    if-ge v1, v4, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 444
    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    const/4 v1, 0x3

    .line 452
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 456
    :goto_0
    if-ne v1, v4, :cond_0

    .line 457
    invoke-direct {p0, p1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 461
    :cond_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 462
    const/4 v1, 0x4

    .line 473
    :cond_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 475
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 477
    :try_start_1
    const-string v2, "UPDATE favorites SET screen=(screen + 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 483
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 487
    :goto_1
    invoke-direct {p0, p1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    const/4 v1, 0x6

    .line 492
    :cond_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 494
    invoke-direct {p0, p1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 495
    const/4 v1, 0x7

    .line 498
    :cond_3
    const/16 v2, 0x8

    if-ge v1, v2, :cond_4

    .line 502
    invoke-direct {p0, p1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 503
    const/16 v1, 0x8

    .line 506
    :cond_4
    const/16 v2, 0x9

    if-ge v1, v2, :cond_6

    .line 509
    iget-wide v2, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 510
    invoke-direct {p0, p1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->mMaxId:J

    .line 514
    :cond_5
    const/high16 v2, 0x7f05

    invoke-direct {p0, p1, v2}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 515
    const/16 v1, 0x9

    .line 521
    :cond_6
    const/16 v2, 0xc

    if-ge v1, v2, :cond_7

    .line 525
    invoke-direct {p0, p1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 526
    const/16 v1, 0xc

    .line 529
    :cond_7
    const/16 v2, 0xd

    if-eq v1, v2, :cond_8

    .line 530
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0, p1}, Lcom/lewa/launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 534
    :cond_8
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 450
    .local v0, ex:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 479
    :catch_1
    move-exception v0

    .line 481
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_3
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method positionComparator(IIIIII)I
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "scr1"
    .parameter "x2"
    .parameter "y2"
    .parameter "scr2"

    .prologue
    .line 1046
    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$300()I

    move-result v0

    mul-int/2addr v0, p3

    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$400()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$300()I

    move-result v1

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$300()I

    move-result v1

    mul-int/2addr v1, p6

    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$400()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/lewa/launcher/LauncherProvider;->access$300()I

    move-result v2

    mul-int/2addr v2, p5

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    sub-int/2addr v0, v1

    return v0
.end method
