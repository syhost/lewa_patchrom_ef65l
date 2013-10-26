.class public Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;
.super Lcom/android/bluetooth/map/BluetoothMasAppIf;
.source "BluetoothMasAppSmsMms.java"


# static fields
.field private static final MMS:Ljava/lang/String; = "MMS"

.field private static final SMS_CDMA:Ljava/lang/String; = "SMS_CDMA"

.field private static final SMS_GSM:Ljava/lang/String; = "SMS_GSM"


# instance fields
.field private final MMS_OFFSET_START:J

.field private final SMS_OFFSET_START:J

.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "handler"
    .parameter "mnsClient"
    .parameter "masId"
    .parameter "remoteDeviceName"

    .prologue
    .line 92
    const/16 v3, 0xe

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMasAppIf;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/bluetooth/map/BluetoothMns;ILjava/lang/String;)V

    .line 81
    const-string v0, "BluetoothMasAppSmsMms"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->TAG:Ljava/lang/String;

    .line 93
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_START:J

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->SMS_OFFSET_START:J

    .line 94
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_START:J

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_END:J

    iget-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_START:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    .line 97
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->cleanUp()V

    .line 99
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppSmsMms"

    const-string v1, "BluetoothMasAppSmsMms Constructor called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method private addToMmsFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "folderName"
    .parameter "mmsMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 1496
    if-nez p1, :cond_1

    .line 1497
    const/16 v16, 0x0

    .line 1625
    :cond_0
    :goto_0
    return-object v16

    .line 1499
    :cond_1
    const-string v18, "draft"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1500
    const-string p1, "drafts"

    .line 1502
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->getFolderTypeMms(Ljava/lang/String;)I

    move-result v7

    .line 1503
    .local v7, folderType:I
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fromBmessageMMS(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    move-result-object v5

    .line 1504
    .local v5, bMsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-virtual {v5}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getRecipientVcard_phone_number()Ljava/lang/String;

    move-result-object v4

    .line 1505
    .local v4, address:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getBody_msg()Ljava/lang/String;

    move-result-object v8

    .line 1512
    .local v8, mmsText:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1513
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1514
    .local v13, values:Landroid/content/ContentValues;
    const-string v18, "msg_box"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1516
    const-string v18, "deleted"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1517
    const-string v18, "thread_id"

    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1523
    :goto_1
    const-string v18, "read"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1524
    const-string v18, "seen"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1525
    const-string v18, "sub_cs"

    const/16 v19, 0x6a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1526
    const-string v18, "ct_t"

    const-string v19, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v18, "exp"

    const v19, 0x93a80

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1528
    const-string v18, "m_cls"

    const-string v19, "personal"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v18, "m_type"

    const/16 v19, 0x80

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1530
    const-string v18, "v"

    const/16 v19, 0x12

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1531
    const-string v18, "pri"

    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1532
    const-string v18, "rr"

    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1533
    const-string v18, "tr_id"

    const-string v19, "T12dc2e87182"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const-string v18, "d_rpt"

    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1535
    const-string v18, "locked"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1538
    const-string v18, "deleted"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1539
    const-string v18, "content://mms/inbox"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1543
    .local v12, uri:Landroid/net/Uri;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1544
    .local v6, cr:Landroid/content/ContentResolver;
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1546
    if-nez v12, :cond_5

    .line 1548
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unabled to insert MMS "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const-string v16, "ERROR"

    goto/16 :goto_0

    .line 1519
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_3
    const-string v18, "thread_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->createMMSThread(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1541
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .restart local v12       #uri:Landroid/net/Uri;
    goto :goto_2

    .line 1551
    .restart local v6       #cr:Landroid/content/ContentResolver;
    :cond_5
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 1552
    .local v11, msgNum:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1553
    .local v9, msgID:J
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_6

    .line 1554
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    move-wide/from16 v18, v0

    add-long v14, v9, v18

    .line 1559
    .local v14, virtualMsgId:J
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1561
    const-string v18, "seq"

    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1562
    const-string v18, "ct"

    const-string v19, "application/smil"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string v18, "cid"

    const-string v19, "<smil>"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v18, "cl"

    const-string v19, "smil.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v18, "text"

    const-string v19, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par dur=\"5000ms\"><text src=\"text_0.txt\" region=\"Text\"/></par></body></smil>"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/part"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1571
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1572
    if-eqz v12, :cond_7

    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_7

    .line 1573
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_7
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1577
    const-string v18, "seq"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1578
    const-string v18, "ct"

    const-string v19, "text/plain"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string v18, "name"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    const-string v18, "chset"

    const/16 v19, 0x6a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1581
    const-string v18, "cd"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const-string v18, "fn"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string v18, "cid"

    const-string v19, "<smil>"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    const-string v18, "cl"

    const-string v19, "text_0.txt"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const-string v18, "ctt_s"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string v18, "ctt_t"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const-string v18, "_data"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v18, "text"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/part"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1591
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1592
    if-eqz v12, :cond_8

    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_8

    .line 1593
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_8
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1597
    const-string v18, "contact_id"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string v18, "address"

    const-string v19, "insert-address-token"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const-string v18, "type"

    const/16 v19, 0x89

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1600
    const-string v18, "charset"

    const/16 v19, 0x6a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1602
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/addr"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1603
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1604
    if-eqz v12, :cond_9

    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_9

    .line 1605
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_9
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1609
    const-string v18, "contact_id"

    const-string v19, "null"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const-string v18, "address"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-string v18, "type"

    const/16 v19, 0x97

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    const-string v18, "charset"

    const/16 v19, 0x6a

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1614
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mms/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/addr"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1615
    invoke-virtual {v6, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 1616
    if-eqz v12, :cond_a

    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v18, :cond_a

    .line 1617
    const-string v18, "BluetoothMasAppSmsMms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " NEW URI "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_a
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 1621
    .local v16, virtualMsgIdStr:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "address LIKE \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' AND type = 125"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1622
    .local v17, whereClause:Ljava/lang/String;
    const-string v18, "deleted"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "content://sms/"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private addToSmsFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "folder"
    .parameter "address"
    .parameter "text"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 585
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 587
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "body"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v4, "address"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v4, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    const-string v4, "seen"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    const-string v4, "status"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    const-string v4, "locked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v4, "error_code"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://sms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 602
    .local v2, uri:Landroid/net/Uri;
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_0

    .line 603
    const-string v5, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " NEW URI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_1

    const-string v4, "null"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    if-nez v2, :cond_2

    .line 607
    const-string v4, "ERROR"

    .line 617
    :goto_1
    return-object v4

    .line 603
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 609
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, str:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, splitStr:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    .line 612
    const-string v4, "ERROR"

    goto :goto_1

    .line 614
    :cond_3
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_4

    .line 615
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " NEW HANDLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_4
    aget-object v4, v0, v7

    goto :goto_1
.end method

.method private bldMMSBody(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;ZJ)Ljava/lang/String;
    .locals 9
    .parameter "bMsg"
    .parameter "msgType"
    .parameter "msgID"

    .prologue
    const/16 v8, 0x3e8

    .line 1633
    const/4 v0, 0x1

    .line 1634
    .local v0, MIME:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1636
    .local v5, sb:Ljava/lang/StringBuilder;
    if-ne p2, v0, :cond_1

    .line 1637
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1638
    .local v3, randomGenerator:Ljava/util/Random;
    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1639
    .local v4, randomInt:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageBoundary."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, boundary:Ljava/lang/String;
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v2

    .line 1641
    .local v2, mmsMsgTxt:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1642
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1643
    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1644
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageBoundary."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1647
    :cond_0
    const-string v6, "To:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    const-string v6, "Mime-Version: 1.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Type: multipart/mixed; boundary=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    const-string v6, "Content-Transfer-Encoding: 7bit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    const-string v6, "MIME Message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    const-string v6, "Content-Type: text/plain"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    const-string v6, "Content-Transfer-Encoding: 8bit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    const-string v6, "Content-Disposition:inline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    .end local v1           #boundary:Ljava/lang/String;
    .end local v2           #mmsMsgTxt:Ljava/lang/String;
    .end local v3           #randomGenerator:Ljava/util/Random;
    .end local v4           #randomInt:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1665
    :cond_1
    const-string v6, "Subject:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Not Implemented"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    const-string v6, "From:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private bldMmsBmsg(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 25
    .parameter "msgID"
    .parameter "rsp"

    .prologue
    .line 1233
    const/4 v15, 0x0

    .line 1234
    .local v15, cr:Landroid/database/Cursor;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1235
    .local v5, uri:Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " _id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1236
    .local v7, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1238
    if-nez v15, :cond_0

    .line 1239
    const/16 v4, 0xc6

    move-object/from16 v0, p3

    iput v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 1314
    :goto_0
    return-object p3

    .line 1242
    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1243
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1244
    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsContainingFolder(J)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMapVirtualFolderName(I)Ljava/lang/String;

    move-result-object v14

    .line 1245
    .local v14, containingFolder:Ljava/lang/String;
    new-instance v12, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v12}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 1248
    .local v12, bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    const-string v4, "MMS"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 1250
    const-string v4, "1.0"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 1251
    const-string v4, "read"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1252
    const-string v4, "READ"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 1257
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "telecom/msg/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 1259
    const-string v4, "2.1"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setVcard_version(Ljava/lang/String;)V

    .line 1260
    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getVcardContent(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;

    move-result-object v24

    .line 1261
    .local v24, vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    const-string v4, "msg_box"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1263
    .local v23, type:Ljava/lang/String;
    const-string v4, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1264
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_phone_number(Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 1276
    :goto_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1277
    .local v21, sb:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v8, v4

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1278
    .local v16, date:Ljava/util/Date;
    const-string v4, "Date: "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    const/4 v11, 0x1

    .line 1281
    .local v11, MIME:Z
    move/from16 v20, v11

    .line 1282
    .local v20, msgFormat:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, p1

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldMMSBody(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;ZJ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 1285
    const-string v4, "8BIT"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 1287
    invoke-static {v12}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->toBmessageMMS(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;

    move-result-object v22

    .line 1288
    .local v22, str:Ljava/lang/String;
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_1

    const-string v4, "BluetoothMasAppSmsMms"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMasId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1291
    .local v10, FILENAME:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1292
    .local v13, bos:Ljava/io/FileOutputStream;
    new-instance v18, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v18, file:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 1296
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v10, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v13

    .line 1297
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1298
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 1299
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1306
    :goto_3
    new-instance v19, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v19, fileR:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 1308
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->file:Ljava/io/File;

    .line 1309
    const/4 v4, 0x1

    move-object/from16 v0, p3

    iput-byte v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->fractionDeliver:B

    .line 1313
    .end local v10           #FILENAME:Ljava/lang/String;
    .end local v11           #MIME:Z
    .end local v12           #bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .end local v13           #bos:Ljava/io/FileOutputStream;
    .end local v14           #containingFolder:Ljava/lang/String;
    .end local v16           #date:Ljava/util/Date;
    .end local v18           #file:Ljava/io/File;
    .end local v19           #fileR:Ljava/io/File;
    .end local v20           #msgFormat:I
    .end local v21           #sb:Ljava/lang/StringBuilder;
    .end local v22           #str:Ljava/lang/String;
    .end local v23           #type:Ljava/lang/String;
    .end local v24           #vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1254
    .restart local v12       #bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .restart local v14       #containingFolder:Ljava/lang/String;
    :cond_3
    const-string v4, "UNREAD"

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1269
    .restart local v23       #type:Ljava/lang/String;
    .restart local v24       #vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_4
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 1270
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_phone_number(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1300
    .restart local v10       #FILENAME:Ljava/lang/String;
    .restart local v11       #MIME:Z
    .restart local v13       #bos:Ljava/io/FileOutputStream;
    .restart local v16       #date:Ljava/util/Date;
    .restart local v18       #file:Ljava/io/File;
    .restart local v20       #msgFormat:I
    .restart local v21       #sb:Ljava/lang/StringBuilder;
    .restart local v22       #str:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1301
    .local v17, e:Ljava/io/FileNotFoundException;
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to write "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1302
    .end local v17           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v17

    .line 1303
    .local v17, e:Ljava/io/IOException;
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to write "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method private bldMmsMsgLstItem(JLcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .locals 12
    .parameter "mmsMsgID"
    .parameter "appParams"
    .parameter "folderName"
    .parameter "datetimeStr"

    .prologue
    .line 1331
    new-instance v1, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    invoke-direct {v1}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;-><init>()V

    .line 1334
    .local v1, ml:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    iget-wide v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    add-long/2addr v8, p1

    invoke-virtual {v1, v8, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_handle(J)V

    .line 1337
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 1338
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgSubject(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSubject(Ljava/lang/String;)V

    .line 1339
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendSubject:Z

    .line 1343
    :cond_0
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1344
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setDatetime(Ljava/lang/String;)V

    .line 1348
    :cond_1
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x200

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 1349
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 1350
    const-string v8, "yes"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setContains_text(Ljava/lang/String;)V

    .line 1358
    :cond_2
    :goto_0
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x80

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    .line 1359
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v3

    .line 1360
    .local v3, mmsMsgTxt:Ljava/lang/String;
    if-nez v3, :cond_10

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSize(I)V

    .line 1364
    .end local v3           #mmsMsgTxt:Ljava/lang/String;
    :cond_3
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x40

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 1365
    const-string v8, "MMS"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setType(Ljava/lang/String;)V

    .line 1368
    :cond_4
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 1372
    const/4 v5, 0x0

    .line 1373
    .local v5, recipientName:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v8

    if-nez v8, :cond_11

    .line 1374
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v5

    .line 1378
    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_name(Ljava/lang/String;)V

    .line 1381
    .end local v5           #recipientName:Ljava/lang/String;
    :cond_5
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 1384
    const/4 v4, 0x0

    .line 1385
    .local v4, recipientAddressing:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1386
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v4

    .line 1390
    :goto_3
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_addressing(Ljava/lang/String;)V

    .line 1391
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSendRecipient_addressing(Z)V

    .line 1394
    .end local v4           #recipientAddressing:Ljava/lang/String;
    :cond_6
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    .line 1395
    const/4 v7, 0x0

    .line 1396
    .local v7, senderName:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 1397
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    .line 1401
    :goto_4
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_name(Ljava/lang/String;)V

    .line 1404
    .end local v7           #senderName:Ljava/lang/String;
    :cond_7
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 1405
    const/4 v6, 0x0

    .line 1406
    .local v6, senderAddressing:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingMMSMessage(J)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 1407
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v6

    .line 1411
    :goto_5
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_addressing(Ljava/lang/String;)V

    .line 1415
    .end local v6           #senderAddressing:Ljava/lang/String;
    :cond_8
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x1000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 1416
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgReadStatus(J)Ljava/lang/String;

    move-result-object v2

    .line 1417
    .local v2, mmsMsgStatus:Ljava/lang/String;
    if-eqz v2, :cond_15

    const-string v8, "yes"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1418
    const-string v8, "yes"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    .line 1425
    .end local v2           #mmsMsgStatus:Ljava/lang/String;
    :cond_9
    :goto_6
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x800

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    .line 1426
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgPriority(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setPriority(Ljava/lang/String;)V

    .line 1430
    :cond_a
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x4000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    .line 1431
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgProtected(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_protected(Ljava/lang/String;)V

    .line 1435
    :cond_b
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x2000

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c

    .line 1436
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgReadSent(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSent(Ljava/lang/String;)V

    .line 1440
    :cond_c
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x100

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_d

    .line 1441
    const-string v8, "complete"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setReception_status(Ljava/lang/String;)V

    .line 1445
    :cond_d
    iget-wide v8, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v10, 0x400

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_e

    .line 1446
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAttachSize(J)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setAttachment_size(I)V

    .line 1449
    :cond_e
    return-object v1

    .line 1352
    :cond_f
    const-string v8, "no"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setContains_text(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1360
    .restart local v3       #mmsMsgTxt:Ljava/lang/String;
    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    goto/16 :goto_1

    .line 1376
    .end local v3           #mmsMsgTxt:Ljava/lang/String;
    .restart local v5       #recipientName:Ljava/lang/String;
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1388
    .end local v5           #recipientName:Ljava/lang/String;
    .restart local v4       #recipientAddressing:Ljava/lang/String;
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1399
    .end local v4           #recipientAddressing:Ljava/lang/String;
    .restart local v7       #senderName:Ljava/lang/String;
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 1409
    .end local v7           #senderName:Ljava/lang/String;
    .restart local v6       #senderAddressing:Ljava/lang/String;
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 1420
    .end local v6           #senderAddressing:Ljava/lang/String;
    .restart local v2       #mmsMsgStatus:Ljava/lang/String;
    :cond_15
    const-string v8, "no"

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private bldMmsWhereClause(Lcom/android/bluetooth/map/BluetoothMasAppParams;I)Ljava/lang/String;
    .locals 8
    .parameter "appParams"
    .parameter "foldertype"

    .prologue
    .line 882
    const-string v2, ""

    .line 883
    .local v2, whereClause:Ljava/lang/String;
    if-eqz p2, :cond_9

    .line 885
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_box="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND thread_id <> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    :goto_0
    iget-byte v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    if-eqz v3, :cond_3

    .line 893
    iget-byte v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 894
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 897
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read=0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 899
    :cond_1
    iget-byte v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    .line 900
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 903
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read=1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 908
    :cond_3
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 910
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 912
    .local v1, time:Landroid/text/format/Time;
    :try_start_0
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 913
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 916
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 924
    .end local v1           #time:Landroid/text/format/Time;
    :cond_5
    :goto_1
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 926
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 928
    .restart local v1       #time:Landroid/text/format/Time;
    :try_start_1
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 929
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 932
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 939
    .end local v1           #time:Landroid/text/format/Time;
    :cond_7
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 942
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d_rpt > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 944
    return-object v2

    .line 888
    :cond_9
    const-string v2, "thread_id = -1"

    goto/16 :goto_0

    .line 917
    .restart local v1       #time:Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 918
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad formatted FilterPeriodBegin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 933
    .end local v0           #e:Landroid/util/TimeFormatException;
    :catch_1
    move-exception v0

    .line 934
    .restart local v0       #e:Landroid/util/TimeFormatException;
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad formatted FilterPeriodEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private bldSmsBmsg(JLandroid/content/Context;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;
    .locals 9
    .parameter "msgHandle"
    .parameter "context"
    .parameter "cr"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 1710
    const/4 v4, 0x0

    .line 1711
    .local v4, str:Ljava/lang/String;
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1712
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1713
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContainingFolder(J)Ljava/lang/String;

    move-result-object v1

    .line 1714
    .local v1, containingFolder:Ljava/lang/String;
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v0}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 1718
    .local v0, bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1719
    const-string v7, "SMS_CDMA"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 1724
    :goto_0
    const-string v7, "1.0"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 1725
    const-string v7, "read"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1726
    const-string v7, "READ"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 1731
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "telecom/msg/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 1733
    const-string v7, "2.1"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setVcard_version(Ljava/lang/String;)V

    .line 1734
    const-string v7, "address"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getVcardContent(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;

    move-result-object v6

    .line 1737
    .local v6, vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    const-string v7, "type"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1738
    .local v5, type:Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1740
    iget-object v7, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1741
    iget-object v7, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_phone_number(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 1751
    :goto_2
    const-string v2, " "

    .line 1753
    .local v2, smsBody:Ljava/lang/String;
    iget-byte v7, p5, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1754
    const-string v7, "UTF-8"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_charset(Ljava/lang/String;)V

    .line 1755
    const-string v7, "body"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1758
    :cond_0
    iget-byte v7, p5, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    if-nez v7, :cond_1

    .line 1759
    const-string v7, "G-7BIT"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 1760
    const-string v7, "body"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1761
    .local v3, smsBodyUnicode:Ljava/lang/String;
    const-string v7, "date"

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-direct {p0, v3, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getSMSDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1765
    .end local v3           #smsBodyUnicode:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x16

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 1767
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 1768
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 1771
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v7, :cond_2

    .line 1772
    const-string v7, "BluetoothMasAppSmsMms"

    const-string v8, "bMessageSMS test\n"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    const-string v7, "BluetoothMasAppSmsMms"

    const-string v8, "=======================\n\n"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_2
    invoke-static {v0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->toBmessageSMS(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;

    move-result-object v4

    .line 1777
    .end local v0           #bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .end local v1           #containingFolder:Ljava/lang/String;
    .end local v2           #smsBody:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_3
    return-object v4

    .line 1721
    .restart local v0       #bmsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .restart local v1       #containingFolder:Ljava/lang/String;
    :cond_4
    const-string v7, "SMS_GSM"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1728
    :cond_5
    const-string v7, "UNREAD"

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1745
    .restart local v5       #type:Ljava/lang/String;
    .restart local v6       #vcard:Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;
    :cond_6
    iget-object v7, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_name(Ljava/lang/String;)V

    .line 1746
    iget-object v7, v6, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils$VcardContent;->tel:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_phone_number(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private bldSmsMsgLstItem(Lcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .locals 13
    .parameter "appParams"
    .parameter "subject"
    .parameter "timestamp"
    .parameter "address"
    .parameter "msgId"
    .parameter "readStatus"
    .parameter "msgType"

    .prologue
    .line 1783
    new-instance v2, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    invoke-direct {v2}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;-><init>()V

    .line 1784
    .local v2, ml:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v2, v9, v10}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_handle(J)V

    .line 1786
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 1787
    .local v8, time:Landroid/text/format/Time;
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1789
    invoke-virtual {v8}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0xf

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1791
    .local v1, datetimeStr:Ljava/lang/String;
    iget-object v9, v2, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    invoke-virtual {v9, v1}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->setDateTime(Ljava/lang/String;)V

    .line 1793
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x1

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    .line 1798
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSendSubject(Z)V

    .line 1799
    if-nez p2, :cond_10

    .line 1800
    const-string p2, ""

    .line 1805
    :cond_0
    :goto_0
    invoke-virtual {v2, p2}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSubject(Ljava/lang/String;)V

    .line 1808
    :cond_1
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x2

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 1809
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setDatetime(Ljava/lang/String;)V

    .line 1812
    :cond_2
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x4

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    .line 1814
    const/4 v7, 0x0

    .line 1815
    .local v7, senderName:Ljava/lang/String;
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    .line 1816
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    .line 1820
    :goto_1
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_name(Ljava/lang/String;)V

    .line 1823
    .end local v7           #senderName:Ljava/lang/String;
    :cond_3
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x8

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 1826
    const/4 v6, 0x0

    .line 1827
    .local v6, senderAddressing:Ljava/lang/String;
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 1828
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v6

    .line 1832
    :goto_2
    invoke-virtual {v2, v6}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSender_addressing(Ljava/lang/String;)V

    .line 1835
    .end local v6           #senderAddressing:Ljava/lang/String;
    :cond_4
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x10

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 1838
    const/4 v5, 0x0

    .line 1839
    .local v5, recipientName:Ljava/lang/String;
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1840
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v5

    .line 1844
    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_name(Ljava/lang/String;)V

    .line 1847
    .end local v5           #recipientName:Ljava/lang/String;
    :cond_5
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x20

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    .line 1850
    const/4 v4, 0x0

    .line 1851
    .local v4, recipientAddressing:Ljava/lang/String;
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1852
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v4

    .line 1856
    :goto_4
    invoke-virtual {v2, v4}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRecepient_addressing(Ljava/lang/String;)V

    .line 1857
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSendRecipient_addressing(Z)V

    .line 1860
    .end local v4           #recipientAddressing:Ljava/lang/String;
    :cond_6
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x40

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 1861
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 1862
    .local v3, phoneType:I
    const/4 v9, 0x2

    if-ne v3, v9, :cond_15

    .line 1863
    const-string v9, "SMS_CDMA"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setType(Ljava/lang/String;)V

    .line 1869
    .end local v3           #phoneType:I
    :cond_7
    :goto_5
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x80

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_8

    .line 1870
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSize(I)V

    .line 1873
    :cond_8
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x100

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 1874
    const-string v9, "complete"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setReception_status(Ljava/lang/String;)V

    .line 1877
    :cond_9
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x200

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    .line 1879
    const-string v9, "yes"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setContains_text(Ljava/lang/String;)V

    .line 1882
    :cond_a
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x400

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b

    .line 1883
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setAttachment_size(I)V

    .line 1886
    :cond_b
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x800

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    .line 1888
    const-string v9, "no"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setPriority(Ljava/lang/String;)V

    .line 1891
    :cond_c
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x1000

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 1892
    const-string v9, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1893
    const-string v9, "yes"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    .line 1899
    :cond_d
    :goto_6
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x2000

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_e

    .line 1901
    const/4 v9, 0x2

    move/from16 v0, p7

    if-ne v0, v9, :cond_17

    .line 1902
    const-string v9, "yes"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSent(Ljava/lang/String;)V

    .line 1908
    :cond_e
    :goto_7
    iget-wide v9, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ParameterMask:J

    const-wide/16 v11, 0x4000

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    .line 1909
    const-string v9, "no"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setMsg_protected(Ljava/lang/String;)V

    .line 1912
    :cond_f
    return-object v2

    .line 1801
    :cond_10
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    iget-short v10, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    if-le v9, v10, :cond_0

    .line 1802
    const/4 v9, 0x0

    iget-short v10, p1, Lcom/android/bluetooth/map/BluetoothMasAppParams;->SubjectLength:S

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 1818
    .restart local v7       #senderName:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1830
    .end local v7           #senderName:Ljava/lang/String;
    .restart local v6       #senderAddressing:Ljava/lang/String;
    :cond_12
    move-object/from16 v6, p4

    goto/16 :goto_2

    .line 1842
    .end local v6           #senderAddressing:Ljava/lang/String;
    .restart local v5       #recipientName:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 1854
    .end local v5           #recipientName:Ljava/lang/String;
    .restart local v4       #recipientAddressing:Ljava/lang/String;
    :cond_14
    move-object/from16 v4, p4

    goto/16 :goto_4

    .line 1865
    .end local v4           #recipientAddressing:Ljava/lang/String;
    .restart local v3       #phoneType:I
    :cond_15
    const-string v9, "SMS_GSM"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setType(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1895
    .end local v3           #phoneType:I
    :cond_16
    const-string v9, "no"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setRead(Ljava/lang/String;)V

    goto :goto_6

    .line 1904
    :cond_17
    const-string v9, "no"

    invoke-virtual {v2, v9}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->setSent(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "thread_id = -1"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "thread_id = -1"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method private createMMSThread(Ljava/lang/String;)I
    .locals 10
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1678
    const/4 v7, 0x0

    .line 1679
    .local v7, returnValue:I
    if-eqz p1, :cond_2

    .line 1680
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    .line 1681
    const-string v0, "BluetoothMasAppSmsMms"

    const-string v3, "Inside adress not null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1684
    .local v9, tempValue:Landroid/content/ContentValues;
    const-string v0, "address"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    const-string v0, "type"

    const/16 v3, 0x7d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1686
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1689
    .local v1, tempUri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 1690
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1692
    .local v8, tempCr:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1693
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1694
    const-string v0, "thread_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1696
    .local v6, newThreadIdStr:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1697
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1699
    .end local v6           #newThreadIdStr:Ljava/lang/String;
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_2

    .line 1700
    const-string v0, "BluetoothMasAppSmsMms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread ID::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    .end local v1           #tempUri:Landroid/net/Uri;
    .end local v8           #tempCr:Landroid/database/Cursor;
    .end local v9           #tempValue:Landroid/content/ContentValues;
    :cond_2
    return v7
.end method

.method private deleteMMS(J)V
    .locals 11
    .parameter "handle"

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 628
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 630
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 632
    .local v9, threadId:I
    if-eq v9, v10, :cond_2

    .line 634
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateMMSThreadId(JI)V

    .line 643
    .end local v9           #threadId:I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 644
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 646
    :cond_1
    return-void

    .line 637
    .restart local v9       #threadId:I
    :cond_2
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    add-long v7, p1, v0

    .line 638
    .local v7, msgId:J
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteSMS(J)V
    .locals 11
    .parameter "handle"

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 725
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 727
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 729
    .local v9, threadId:I
    if-eq v9, v10, :cond_2

    .line 731
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateSMSThreadId(JI)V

    .line 740
    .end local v9           #threadId:I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 741
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_1
    return-void

    .line 734
    .restart local v9       #threadId:I
    :cond_2
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->SMS_OFFSET_START:J

    add-long v7, p1, v0

    .line 735
    .local v7, msgHandle:J
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getContainingFolder(J)Ljava/lang/String;
    .locals 8
    .parameter "msgHandle"

    .prologue
    const/4 v3, 0x0

    .line 436
    const/4 v7, 0x0

    .line 437
    .local v7, folder:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://sms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "thread_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 440
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 442
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 443
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMAPFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 446
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_1
    return-object v7
.end method

.method private getMAPFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "threadId"

    .prologue
    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, folder:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 403
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMasAppSmsMms"

    const-string v2, "getMapFolder cannot parse folder type"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1
    const/4 v1, 0x0

    .line 429
    :goto_0
    return-object v1

    .line 407
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 408
    const-string v0, "deleted"

    :goto_1
    move-object v1, v0

    .line 429
    goto :goto_0

    .line 410
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 412
    :pswitch_0
    const-string v0, "inbox"

    .line 413
    goto :goto_1

    .line 415
    :pswitch_1
    const-string v0, "sent"

    .line 416
    goto :goto_1

    .line 418
    :pswitch_2
    const-string v0, "draft"

    .line 419
    goto :goto_1

    .line 423
    :pswitch_3
    const-string v0, "outbox"

    .line 424
    goto :goto_1

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getMessageMms(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 6
    .parameter "msgHandle"
    .parameter "rsp"

    .prologue
    .line 2157
    const-wide/16 v1, 0x0

    .line 2159
    .local v1, mmsMsgID:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgHndToID(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2164
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 2165
    invoke-direct {p0, v1, v2, p3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldMmsBmsg(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 2167
    .end local p3
    .local v3, rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    :goto_0
    return-object v3

    .line 2160
    .end local v3           #rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .restart local p3
    :catch_0
    move-exception v0

    .line 2161
    .local v0, e:Ljava/lang/Exception;
    const/16 v4, 0xc0

    iput v4, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    move-object v3, p3

    .line 2162
    .end local p3
    .restart local v3       #rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    goto :goto_0
.end method

.method private getMessageSms(JLandroid/content/Context;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 20
    .parameter "msgHandle"
    .parameter "context"
    .parameter "rsp"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 2111
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->SMS_OFFSET_START:J

    sub-long v17, p1, v6

    .line 2112
    .local v17, smsHandle:J
    const/4 v10, 0x0

    .line 2113
    .local v10, cr:Landroid/database/Cursor;
    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2114
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2116
    .local v5, whereClause:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 2122
    if-nez v10, :cond_1

    .line 2123
    const/16 v2, 0xc0

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 2153
    :cond_0
    :goto_0
    return-object p4

    .line 2118
    :catch_0
    move-exception v14

    .line 2119
    .local v14, e:Ljava/lang/Exception;
    const/16 v2, 0xc0

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    goto :goto_0

    .end local v14           #e:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v6, p0

    move-wide/from16 v7, v17

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    .line 2126
    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldSmsBmsg(JLandroid/content/Context;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;

    move-result-object v19

    .line 2127
    .local v19, strSms:Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2128
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v2, :cond_2

    const-string v2, "BluetoothMasAppSmsMms"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_2
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMasId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2132
    .local v12, FILENAME:Ljava/lang/String;
    const/4 v13, 0x0

    .line 2133
    .local v13, bos:Ljava/io/FileOutputStream;
    new-instance v15, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v15, file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 2137
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v13

    .line 2138
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2139
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 2140
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2147
    :goto_1
    new-instance v16, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2148
    .local v16, fileR:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 2149
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->file:Ljava/io/File;

    .line 2150
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-byte v2, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->fractionDeliver:B

    goto/16 :goto_0

    .line 2141
    .end local v16           #fileR:Ljava/io/File;
    :catch_1
    move-exception v14

    .line 2142
    .local v14, e:Ljava/io/FileNotFoundException;
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2143
    .end local v14           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v14

    .line 2144
    .local v14, e:Ljava/io/IOException;
    const-string v2, "BluetoothMasAppSmsMms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getMmsContainingFolder(J)I
    .locals 10
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1174
    const/4 v7, 0x0

    .line 1175
    .local v7, folderNum:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1176
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1177
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1178
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1179
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1180
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1181
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1182
    const-string v2, "msg_box"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1183
    .local v8, msgboxInd:I
    const-string v2, "thread_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1184
    .local v9, thread_id:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 1186
    const/4 v7, 0x0

    .line 1191
    .end local v8           #msgboxInd:I
    .end local v9           #thread_id:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1193
    :cond_1
    return v7

    .line 1188
    .restart local v8       #msgboxInd:I
    .restart local v9       #thread_id:Ljava/lang/String;
    :cond_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_0
.end method

.method private getMmsMapVirtualFolderName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1202
    const/4 v0, 0x0

    .line 1204
    .local v0, folderName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1226
    :goto_0
    return-object v0

    .line 1206
    :pswitch_0
    const-string v0, "deleted"

    .line 1207
    goto :goto_0

    .line 1209
    :pswitch_1
    const-string v0, "inbox"

    .line 1210
    goto :goto_0

    .line 1212
    :pswitch_2
    const-string v0, "sent"

    .line 1213
    goto :goto_0

    .line 1215
    :pswitch_3
    const-string v0, "draft"

    .line 1216
    goto :goto_0

    .line 1220
    :pswitch_4
    const-string v0, "outbox"

    .line 1221
    goto :goto_0

    .line 1204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private getMmsMsgAddress(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1154
    const/4 v8, 0x0

    .line 1155
    .local v8, text:Ljava/lang/String;
    const-string v3, " address != \"insert-address-token\""

    .line 1156
    .local v3, whereClause:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1157
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1158
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1159
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1160
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1161
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1162
    const-string v2, "address"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1163
    .local v6, addressInd:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1165
    .end local v6           #addressInd:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1167
    :cond_1
    return-object v8
.end method

.method private getMmsMsgAttachSize(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1031
    const/4 v6, 0x0

    .line 1032
    .local v6, attachSize:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1033
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1034
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1035
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1036
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1037
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1038
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1039
    const-string v2, "m_size"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1040
    .local v8, sizeInd:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1042
    .end local v8           #sizeInd:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1044
    :cond_1
    return v6
.end method

.method private getMmsMsgBox(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 951
    const/4 v8, -0x1

    .line 952
    .local v8, val:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 953
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 954
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 955
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 956
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 957
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 958
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 959
    const-string v2, "msg_box"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 960
    .local v7, msgBoxInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 962
    .end local v7           #msgBoxInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 964
    :cond_1
    return v8
.end method

.method private getMmsMsgDate(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1011
    const-string v8, "0"

    .line 1012
    .local v8, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1013
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1014
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1015
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1016
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1017
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    const-string v2, "date"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1019
    .local v7, dateInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1021
    .end local v7           #dateInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1023
    :cond_1
    return-object v8
.end method

.method private getMmsMsgHndToID(J)Ljava/lang/Long;
    .locals 12
    .parameter "msgHandle"

    .prologue
    const/4 v2, 0x0

    .line 841
    const-wide/16 v8, -0x1

    .line 842
    .local v8, msgID:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mid= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    sub-long v10, p1, v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 843
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/part"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 844
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 845
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 846
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 847
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 848
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 849
    const-string v2, "mid"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 850
    .local v7, handleInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 852
    .end local v7           #handleInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 854
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private getMmsMsgMIDs(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "whereClause"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 861
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v8, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v3, "content://mms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 863
    .local v1, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 864
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 865
    .local v6, crID:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 866
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 867
    .local v7, idInd:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 868
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 870
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 873
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 875
    .end local v7           #idInd:I
    :cond_2
    return-object v8
.end method

.method private getMmsMsgPriority(J)Ljava/lang/String;
    .locals 12
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1090
    const/16 v7, 0x80

    .line 1091
    .local v7, PRIORITY_LOW:I
    const/16 v8, 0x81

    .line 1092
    .local v8, PRIORITY_NORMAL:I
    const/16 v6, 0x82

    .line 1094
    .local v6, PRIORITY_HIGH:I
    const/4 v11, 0x0

    .line 1095
    .local v11, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1097
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1098
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1099
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1100
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1101
    const-string v2, "pri"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1103
    .local v10, priInd:I
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1115
    const-string v11, "no"

    .line 1119
    .end local v10           #priInd:I
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 1120
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1122
    :cond_1
    return-object v11

    .line 1105
    .restart local v10       #priInd:I
    :pswitch_0
    const-string v11, "no"

    .line 1106
    goto :goto_0

    .line 1108
    :pswitch_1
    const-string v11, "no"

    .line 1109
    goto :goto_0

    .line 1111
    :pswitch_2
    const-string v11, "yes"

    .line 1112
    goto :goto_0

    .line 1103
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMmsMsgProtected(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1129
    const/4 v8, 0x0

    .line 1130
    .local v8, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1131
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1132
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1133
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1134
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1135
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1136
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1137
    const-string v2, "locked"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1138
    .local v7, readInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1139
    const-string v8, "no"

    .line 1144
    .end local v7           #readInd:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1146
    :cond_1
    return-object v8

    .line 1141
    .restart local v7       #readInd:I
    :cond_2
    const-string v8, "yes"

    goto :goto_0
.end method

.method private getMmsMsgReadSent(J)Ljava/lang/String;
    .locals 3
    .parameter "msgID"

    .prologue
    .line 1076
    const/4 v0, 0x0

    .line 1077
    .local v0, text:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgBox(J)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1079
    const-string v0, "yes"

    .line 1083
    :goto_0
    return-object v0

    .line 1081
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method private getMmsMsgReadStatus(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 1052
    const/4 v8, 0x0

    .line 1053
    .local v8, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1054
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1055
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 1056
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1057
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1058
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1059
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1060
    const-string v2, "read"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1061
    .local v7, readInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1062
    const-string v8, "no"

    .line 1067
    .end local v7           #readInd:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1069
    :cond_1
    return-object v8

    .line 1064
    .restart local v7       #readInd:I
    :cond_2
    const-string v8, "yes"

    goto :goto_0
.end method

.method private getMmsMsgSubject(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 991
    const/4 v8, 0x0

    .line 992
    .local v8, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 994
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 995
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 996
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 997
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 999
    const-string v2, "sub"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1000
    .local v7, subjectInd:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1002
    .end local v7           #subjectInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1004
    :cond_1
    return-object v8
.end method

.method private getMmsMsgTxt(J)Ljava/lang/String;
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v2, 0x0

    .line 971
    const/4 v7, 0x0

    .line 972
    .local v7, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mid= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ct=\"text/plain\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms/part"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 974
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v4, v2

    move-object v5, v2

    .line 975
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 976
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 977
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 978
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 979
    const-string v2, "text"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 980
    .local v8, textInd:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 982
    .end local v8           #textInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 984
    :cond_1
    return-object v7
.end method

.method private getNumMmsMsgs(Ljava/lang/String;)I
    .locals 8
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 815
    const/4 v7, 0x0

    .line 817
    .local v7, msgCount:I
    const-string v3, "deleted"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 818
    const-string v3, "content://mms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 819
    .local v1, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 820
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "thread_id = -1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 821
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 822
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 823
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_0
    :goto_0
    return v7

    .line 826
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 827
    .restart local v1       #uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 828
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v3, "thread_id <> -1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 829
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 830
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 831
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getSMSDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 31
    .parameter "smsBody"
    .parameter "dateTime"
    .parameter "address"

    .prologue
    .line 455
    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    .line 456
    .local v26, time:Landroid/text/format/Time;
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 458
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v27

    .line 461
    .local v27, timeStr:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x2

    const/16 v30, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5

    const/16 v30, 0x7

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x8

    const/16 v30, 0xa

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0xb

    const/16 v30, 0xd

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0xe

    const/16 v30, 0x10

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x11

    const/16 v30, 0x13

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 469
    .local v25, tempTimeStr:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 470
    .local v23, tZoneStr:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 471
    .local v24, tempInt:I
    div-int/lit8 v22, v24, 0xf

    .line 473
    .local v22, tZone15offset:I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x3

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    mul-int/lit8 v28, v28, 0x4

    add-int v22, v22, v28

    .line 475
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 476
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    .line 479
    :cond_0
    const-string v21, ""

    .line 482
    .local v21, tZone15OffsetHexStr:Ljava/lang/String;
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 483
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 485
    :cond_1
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 487
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 490
    const-string v9, ""

    .line 491
    .local v9, encodedTimeStr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_2

    .line 492
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v10, 0x1

    add-int/lit8 v30, v10, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 493
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v10, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 491
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 499
    .local v7, byteAddress:[B
    const-string v16, "0681000000000004"

    .line 502
    .local v16, smsPdu:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 503
    .local v18, strbufAddress:Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_5

    .line 504
    sget-boolean v28, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v28, :cond_3

    .line 505
    const-string v28, "BluetoothMasAppSmsMms"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " VAL "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    add-int/lit8 v30, v10, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_3
    aget-byte v28, v7, v10

    const/16 v29, 0x30

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_4

    aget-byte v28, v7, v10

    const/16 v29, 0x39

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_4

    .line 508
    add-int/lit8 v28, v10, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 503
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 512
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 514
    .local v5, addressLength:I
    const-string v6, ""

    .line 516
    .local v6, addressLengthStr:Ljava/lang/String;
    and-int/lit16 v0, v5, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 517
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 518
    :cond_6
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 520
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 521
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "81"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 523
    new-instance v17, Ljava/lang/String;

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 526
    .local v17, strAddress:Ljava/lang/String;
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v11, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 528
    .local v11, msg:[B
    const/16 v28, 0x2

    aget-byte v28, v11, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 529
    .local v4, addLength:I
    rem-int/lit8 v28, v4, 0x2

    if-eqz v28, :cond_7

    .line 530
    add-int/lit8 v4, v4, 0x1

    .line 532
    :cond_7
    div-int/lit8 v4, v4, 0x2

    .line 535
    add-int/lit8 v13, v4, 0x7

    .line 536
    .local v13, msgOffset:I
    array-length v0, v11

    move/from16 v28, v0

    sub-int v12, v28, v13

    .line 538
    .local v12, msgLength:I
    new-instance v20, Ljava/lang/StringBuffer;

    mul-int/lit8 v28, v12, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 541
    .local v20, strbufMessage:Ljava/lang/StringBuffer;
    move v10, v13

    :goto_2
    add-int v28, v12, v13

    move/from16 v0, v28

    if-ge v10, v0, :cond_9

    .line 542
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 543
    const-string v28, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    :cond_8
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x10

    invoke-static/range {v28 .. v30}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 548
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    div-int/lit8 v8, v28, 0x2

    .line 549
    .local v8, encodedAddressLength:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v28

    rem-int/lit8 v28, v28, 0x2

    if-eqz v28, :cond_a

    .line 550
    add-int/lit8 v8, v8, 0x1

    .line 553
    :cond_a
    new-instance v19, Ljava/lang/StringBuffer;

    mul-int/lit8 v28, v12, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 556
    .local v19, strbufAddress1:Ljava/lang/StringBuffer;
    const/4 v10, 0x4

    :goto_3
    add-int/lit8 v28, v8, 0x4

    move/from16 v0, v28

    if-ge v10, v0, :cond_c

    .line 558
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    .line 559
    const-string v28, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    :cond_b
    aget-byte v28, v11, v10

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x10

    invoke-static/range {v28 .. v30}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 563
    :cond_c
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 564
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0000"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 565
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 567
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 568
    .local v14, smsBodyLength:I
    const-string v15, ""

    .line 570
    .local v15, smsMessageTextLengthStr:Ljava/lang/String;
    and-int/lit16 v0, v14, 0xff

    move/from16 v28, v0

    const/16 v29, 0x10

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 571
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 573
    :cond_d
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 575
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 576
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 577
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 578
    return-object v16
.end method

.method private isOutgoingMMSMessage(J)Z
    .locals 2
    .parameter "mmsMsgID"

    .prologue
    const/4 v0, 0x1

    .line 1318
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgBox(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1319
    const/4 v0, 0x0

    .line 1321
    :cond_0
    return v0
.end method

.method private isOutgoingSMSMessage(I)Z
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 390
    if-ne p1, v0, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 393
    :cond_0
    return v0
.end method

.method private moveMMSfromDraftstoOutbox()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1459
    const/4 v7, 0x0

    .line 1463
    .local v7, handle:Ljava/lang/String;
    const-string v4, "content://mms/drafts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1464
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1465
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1466
    .local v6, crID:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1467
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1468
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1469
    const-string v4, "_id"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1470
    .local v8, msgIDInd:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1472
    .end local v8           #msgIDInd:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1475
    :cond_1
    if-eqz v7, :cond_3

    .line 1476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1477
    .local v3, whereClause:Ljava/lang/String;
    const-string v4, "content://mms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    .line 1478
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1479
    if-eqz v6, :cond_3

    .line 1480
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1481
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1482
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1483
    .local v9, values:Landroid/content/ContentValues;
    const-string v4, "msg_box"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1484
    invoke-virtual {v0, v1, v9, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1486
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1489
    .end local v3           #whereClause:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private msgListMms(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    .locals 15
    .parameter
    .parameter "name"
    .parameter "rsp"
    .parameter "appParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;",
            "Lcom/android/bluetooth/map/BluetoothMasAppParams;",
            ")",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;"
        }
    .end annotation

    .prologue
    .line 2068
    .local p1, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    new-instance v7, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    invoke-direct {v7}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;-><init>()V

    .line 2070
    .local v7, bmlr:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getNumMmsMsgs(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 2071
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->getFolderTypeMms(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldMmsWhereClause(Lcom/android/bluetooth/map/BluetoothMasAppParams;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgMIDs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 2073
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2074
    .local v13, msgId:I
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v1, :cond_0

    .line 2075
    const-string v1, "BluetoothMasAppSmsMms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n MMS Text message ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v3, v13

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgTxt(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v1, :cond_1

    .line 2079
    const-string v1, "BluetoothMasAppSmsMms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n MMS message subject ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v3, v13

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgSubject(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :cond_1
    int-to-long v1, v13

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgDate(J)Ljava/lang/String;

    move-result-object v8

    .line 2084
    .local v8, datetime:Ljava/lang/String;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 2085
    .local v14, time:Landroid/text/format/Time;
    new-instance v9, Ljava/util/Date;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2086
    .local v9, dt:Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v14, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2088
    invoke-virtual {v14}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2090
    .local v6, datetimeStr:Ljava/lang/String;
    int-to-long v2, v13

    move-object v1, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldMmsMsgLstItem(JLcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    move-result-object v12

    .line 2091
    .local v12, mmsl:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    iget-object v1, v12, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msgInfo:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;

    invoke-virtual {v1, v6}, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts$MsgInfo;->setDateTime(Ljava/lang/String;)V

    .line 2093
    move-object/from16 v0, p3

    iget-byte v1, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    if-nez v1, :cond_2

    const-string v1, "no"

    int-to-long v2, v13

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgReadStatus(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2095
    const/4 v1, 0x1

    move-object/from16 v0, p3

    iput-byte v1, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    .line 2098
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2099
    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p3

    iput v1, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    goto/16 :goto_0

    .line 2102
    .end local v6           #datetimeStr:Ljava/lang/String;
    .end local v8           #datetime:Ljava/lang/String;
    .end local v9           #dt:Ljava/util/Date;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12           #mmsl:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .end local v13           #msgId:I
    .end local v14           #time:Landroid/text/format/Time;
    :cond_3
    const/16 v1, 0xa0

    move-object/from16 v0, p3

    iput v1, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 2103
    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    iput v1, v7, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->messageListingSize:I

    .line 2104
    move-object/from16 v0, p3

    iput-object v0, v7, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 2105
    move-object/from16 v0, p1

    iput-object v0, v7, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    .line 2106
    return-object v7
.end method

.method private msgListSms(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    .locals 32
    .parameter
    .parameter "folder"
    .parameter "rsp"
    .parameter "appParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;",
            "Lcom/android/bluetooth/map/BluetoothMasAppParams;",
            ")",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;"
        }
    .end annotation

    .prologue
    .line 1916
    .local p1, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    new-instance v15, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    invoke-direct {v15}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;-><init>()V

    .line 1917
    .local v15, bmlr:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    const-string v31, "content://sms/"

    .line 1918
    .local v31, url:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1919
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1920
    .local v2, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->getConditionStringSms(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;

    move-result-object v5

    .line 1922
    .local v5, whereClause:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1925
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_0

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_0

    .line 1926
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move to First"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_0
    if-eqz v17, :cond_1

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_1

    .line 1929
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move to Liststartoffset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->ListStartOffset:I

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_1
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1933
    const-string v4, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1934
    .local v20, idInd:I
    const-string v4, "address"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1935
    .local v14, addressInd:I
    const-string v4, "person"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1936
    .local v24, personInd:I
    const-string v4, "date"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1937
    .local v18, dateInd:I
    const-string v4, "read"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1938
    .local v25, readInd:I
    const-string v4, "status"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1939
    .local v28, statusInd:I
    const-string v4, "subject"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1940
    .local v29, subjectInd:I
    const-string v4, "type"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1941
    .local v30, typeInd:I
    const-string v4, "body"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1953
    .local v16, bodyInd:I
    :cond_2
    const/16 v19, 0x0

    .line 1954
    .local v19, filterString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerName()Ljava/lang/String;

    move-result-object v22

    .line 1955
    .local v22, oname:Ljava/lang/String;
    if-nez v22, :cond_3

    .line 1956
    const-string v22, ""

    .line 1958
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getOwnerNumber()Ljava/lang/String;

    move-result-object v23

    .line 1959
    .local v23, onumber:Ljava/lang/String;
    if-nez v23, :cond_4

    .line 1960
    const-string v23, ""

    .line 1963
    :cond_4
    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1964
    .local v13, msgType:I
    const/16 v26, 0x0

    .line 1965
    .local v26, regExpOrig:Ljava/lang/String;
    const/16 v27, 0x0

    .line 1966
    .local v27, regExpRecipient:Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1967
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    const-string v6, "*"

    const-string v7, ".*[0-9A-Za-z].*"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1969
    :cond_5
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1970
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    const-string v6, "*"

    const-string v7, ".*[0-9A-Za-z].*"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 1972
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_b

    .line 1973
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2054
    :cond_7
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2056
    .end local v13           #msgType:I
    .end local v14           #addressInd:I
    .end local v16           #bodyInd:I
    .end local v18           #dateInd:I
    .end local v19           #filterString:Ljava/lang/String;
    .end local v20           #idInd:I
    .end local v22           #oname:Ljava/lang/String;
    .end local v23           #onumber:Ljava/lang/String;
    .end local v24           #personInd:I
    .end local v25           #readInd:I
    .end local v26           #regExpOrig:Ljava/lang/String;
    .end local v27           #regExpRecipient:Ljava/lang/String;
    .end local v28           #statusInd:I
    .end local v29           #subjectInd:I
    .end local v30           #typeInd:I
    :cond_8
    if-eqz v17, :cond_9

    .line 2057
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2059
    :cond_9
    const/16 v4, 0xa0

    move-object/from16 v0, p3

    iput v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 2060
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    iput v4, v15, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->messageListingSize:I

    .line 2061
    move-object/from16 v0, p3

    iput-object v0, v15, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 2062
    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    .line 2063
    return-object v15

    .line 1979
    .restart local v13       #msgType:I
    .restart local v14       #addressInd:I
    .restart local v16       #bodyInd:I
    .restart local v18       #dateInd:I
    .restart local v19       #filterString:Ljava/lang/String;
    .restart local v20       #idInd:I
    .restart local v22       #oname:Ljava/lang/String;
    .restart local v23       #onumber:Ljava/lang/String;
    .restart local v24       #personInd:I
    .restart local v25       #readInd:I
    .restart local v26       #regExpOrig:Ljava/lang/String;
    .restart local v27       #regExpRecipient:Ljava/lang/String;
    .restart local v28       #statusInd:I
    .restart local v29       #subjectInd:I
    .restart local v30       #typeInd:I
    :cond_a
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    .line 1981
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 1982
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_b

    .line 1983
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appParams.FilterRecipient"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->isOutgoingSMSMessage(I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1989
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterRecipient:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1995
    :cond_c
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    .line 1997
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 1998
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_d

    .line 1999
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appParams.FilterOriginator"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterOriginator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_d
    if-eqz v19, :cond_f

    .line 2006
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_e

    .line 2007
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filterString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_e
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->allowEntry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_12

    .line 2011
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_f

    .line 2012
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++ ALLOWED +++++++++ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_f
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_10

    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " msgListSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_10
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    iput v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->msgListingSize:I

    .line 2034
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->MaxListCount:I

    if-eqz v4, :cond_7

    .line 2037
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2038
    .local v11, msgIdSms:Ljava/lang/String;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2039
    .local v8, subjectSms:Ljava/lang/String;
    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2040
    .local v9, timestampSms:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2041
    .local v10, addressSms:Ljava/lang/String;
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, readStatusSms:Ljava/lang/String;
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    .line 2043
    invoke-direct/range {v6 .. v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->bldSmsMsgLstItem(Lcom/android/bluetooth/map/BluetoothMasAppParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    move-result-object v21

    .line 2048
    .local v21, ml:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    move-object/from16 v0, p3

    iget-byte v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    if-nez v4, :cond_11

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_11

    .line 2050
    const/4 v4, 0x1

    move-object/from16 v0, p3

    iput-byte v4, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->newMessage:B

    .line 2053
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2018
    .end local v8           #subjectSms:Ljava/lang/String;
    .end local v9           #timestampSms:Ljava/lang/String;
    .end local v10           #addressSms:Ljava/lang/String;
    .end local v11           #msgIdSms:Ljava/lang/String;
    .end local v12           #readStatusSms:Ljava/lang/String;
    .end local v21           #ml:Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    :cond_12
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v4, :cond_7

    .line 2019
    const-string v4, "BluetoothMasAppSmsMms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++ DENIED +++++++++ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private pushMessageMms(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .locals 11
    .parameter "rsp"
    .parameter "readStr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xc4

    const/16 v8, 0xa0

    .line 2172
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    .line 2173
    .local v1, fullPath:Ljava/lang/String;
    :goto_0
    const-string v6, "telecom/msg/outbox"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2174
    const-string v6, "drafts"

    invoke-direct {p0, v6, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->addToMmsFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2175
    .local v2, handle:Ljava/lang/String;
    const-string v6, "ERROR"

    if-ne v6, v2, :cond_2

    .line 2176
    iput v9, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 2213
    .end local v2           #handle:Ljava/lang/String;
    :goto_1
    return-object p1

    .line 2172
    .end local v1           #fullPath:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2179
    .restart local v1       #fullPath:Ljava/lang/String;
    .restart local v2       #handle:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->moveMMSfromDraftstoOutbox()V

    .line 2180
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v6, :cond_3

    const-string v6, "BluetoothMasAppSmsMms"

    const-string v7, "\nBroadcasting Intent to MmsSystemEventReceiver\n "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MMS_PUSH"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2182
    .local v3, sendIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2183
    iput-object v2, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2184
    iput v8, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_1

    .line 2187
    .end local v2           #handle:Ljava/lang/String;
    .end local v3           #sendIntent:Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2188
    .local v4, splitStrings:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v7, "+"

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 2189
    array-length v5, v4

    .line 2191
    .local v5, tmp:I
    if-eqz p3, :cond_6

    .line 2192
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 2193
    add-int/lit8 v6, v5, -0x1

    aget-object v0, v4, v6

    .line 2200
    .local v0, folderName:Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_8

    const-string v6, "draft"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2201
    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->addToMmsFolder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2202
    .restart local v2       #handle:Ljava/lang/String;
    const-string v6, "ERROR"

    if-ne v6, v2, :cond_7

    .line 2203
    iput-object v10, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2204
    iput v9, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_1

    .line 2195
    .end local v0           #folderName:Ljava/lang/String;
    .end local v2           #handle:Ljava/lang/String;
    :cond_5
    move-object v0, p3

    .restart local v0       #folderName:Ljava/lang/String;
    goto :goto_2

    .line 2198
    .end local v0           #folderName:Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v5, -0x1

    aget-object v0, v4, v6

    .restart local v0       #folderName:Ljava/lang/String;
    goto :goto_2

    .line 2207
    .restart local v2       #handle:Ljava/lang/String;
    :cond_7
    iput-object v2, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2208
    iput v8, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_1

    .line 2211
    .end local v2           #handle:Ljava/lang/String;
    :cond_8
    iput-object v10, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2212
    const/16 v6, 0xc3

    iput v6, p1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_1
.end method

.method private pushMessageSms(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .locals 16
    .parameter "rsp"
    .parameter "readStr"
    .parameter "name"
    .parameter "bluetoothMasAppParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 2220
    invoke-static/range {p2 .. p2}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fromBmessageSMS(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    move-result-object v7

    .line 2221
    .local v7, bMsg:Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-virtual {v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getRecipientVcard_phone_number()Ljava/lang/String;

    move-result-object v2

    .line 2222
    .local v2, address:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->getBody_msg()Ljava/lang/String;

    move-result-object v13

    .line 2223
    .local v13, smsText:Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    .line 2224
    .local v10, fullPath:Ljava/lang/String;
    :goto_0
    const-string v3, "telecom/msg/outbox"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2226
    .local v14, splitStrings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v5, "+"

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 2227
    array-length v15, v14

    .line 2229
    .local v15, tmp:I
    if-eqz p3, :cond_3

    .line 2230
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 2231
    add-int/lit8 v3, v15, -0x1

    aget-object v9, v14, v3

    .line 2238
    .local v9, folderName:Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_5

    const-string v3, "draft"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2239
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->addToSmsFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2240
    .local v11, handle:Ljava/lang/String;
    const-string v3, "ERROR"

    if-ne v3, v11, :cond_4

    .line 2241
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2242
    const/16 v3, 0xc4

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 2290
    .end local v9           #folderName:Ljava/lang/String;
    .end local v11           #handle:Ljava/lang/String;
    .end local v14           #splitStrings:[Ljava/lang/String;
    .end local v15           #tmp:I
    :goto_2
    return-object p1

    .line 2223
    .end local v10           #fullPath:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 2233
    .restart local v10       #fullPath:Ljava/lang/String;
    .restart local v14       #splitStrings:[Ljava/lang/String;
    .restart local v15       #tmp:I
    :cond_2
    move-object/from16 v9, p3

    .restart local v9       #folderName:Ljava/lang/String;
    goto :goto_1

    .line 2236
    .end local v9           #folderName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v15, -0x1

    aget-object v9, v14, v3

    .restart local v9       #folderName:Ljava/lang/String;
    goto :goto_1

    .line 2245
    .restart local v11       #handle:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2246
    const/16 v3, 0xa0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_2

    .line 2249
    .end local v11           #handle:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2250
    const/16 v3, 0xc3

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_2

    .line 2254
    .end local v9           #folderName:Ljava/lang/String;
    .end local v14           #splitStrings:[Ljava/lang/String;
    .end local v15           #tmp:I
    :cond_6
    const-string v3, ""

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2255
    move-object/from16 v0, p4

    iget-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    if-nez v3, :cond_a

    .line 2256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v5, "+"

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 2257
    const-string v3, "queued"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v13}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->addToSmsFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2258
    .restart local v11       #handle:Ljava/lang/String;
    const-string v3, "ERROR"

    if-ne v3, v11, :cond_7

    .line 2259
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2260
    const/16 v3, 0xc4

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto :goto_2

    .line 2263
    :cond_7
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2264
    const/16 v3, 0xa0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 2277
    .end local v11           #handle:Ljava/lang/String;
    :cond_8
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_9

    .line 2278
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, " Trying to send SMS "

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_9
    :try_start_0
    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2284
    .local v12, sendIntentSms:Landroid/content/Intent;
    const-string v3, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v12, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2285
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v12, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2287
    .end local v12           #sendIntentSms:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 2288
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 2265
    .end local v8           #e:Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p4

    iget-byte v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Transparent:B

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    .line 2266
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2267
    .local v4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 2268
    .local v1, sms:Landroid/telephony/SmsManager;
    invoke-virtual {v1, v13}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    const-string v5, "+"

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMns;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 2271
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2272
    const-string v3, "-1"

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 2273
    const/16 v3, 0xa0

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    goto/16 :goto_2
.end method

.method private setMsgStatusMms(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I
    .locals 12
    .parameter "msgHandle"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 2319
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgHndToID(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2320
    .local v7, handle:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " _id= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2321
    .local v11, whereClause:Ljava/lang/String;
    const-string v0, "content://mms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2322
    .local v1, uri:Landroid/net/Uri;
    const-wide/16 v2, 0x0

    cmp-long v0, v7, v2

    if-lez v0, :cond_5

    .line 2323
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2324
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 2325
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2326
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2327
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-nez v0, :cond_1

    .line 2329
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2330
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "read"

    iget-byte v2, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2331
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 2333
    .local v9, rowUpdate:I
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    .line 2334
    const-string v0, "BluetoothMasAppSmsMms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nRows updated => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :cond_0
    const/16 v0, 0xa0

    .line 2349
    .end local v6           #cr:Landroid/database/Cursor;
    .end local v9           #rowUpdate:I
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_0
    return v0

    .line 2338
    .restart local v6       #cr:Landroid/database/Cursor;
    :cond_1
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2339
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->deleteMMS(J)V

    .line 2343
    :cond_2
    :goto_1
    const/16 v0, 0xa0

    goto :goto_0

    .line 2340
    :cond_3
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-nez v0, :cond_2

    .line 2341
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->unDeleteMMS(J)V

    goto :goto_1

    .line 2346
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2349
    .end local v6           #cr:Landroid/database/Cursor;
    :cond_5
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method private setMsgStatusSms(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I
    .locals 10
    .parameter "msgHandle"
    .parameter "bluetoothMasAppParams"

    .prologue
    const/4 v2, 0x0

    .line 2294
    iget-wide v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->SMS_OFFSET_START:J

    sub-long v7, p1, v3

    .line 2295
    .local v7, handle:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2296
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2297
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-nez v0, :cond_2

    .line 2300
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2301
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "read"

    iget-byte v3, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2302
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v9, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2311
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 2312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2315
    :cond_1
    const/16 v0, 0xa0

    return v0

    .line 2304
    :cond_2
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2305
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->deleteSMS(J)V

    goto :goto_0

    .line 2306
    :cond_3
    iget-byte v0, p3, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-nez v0, :cond_0

    .line 2307
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->unDeleteSMS(J)V

    goto :goto_0
.end method

.method private unDeleteMMS(J)V
    .locals 17
    .parameter "msgHandle"

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 651
    .local v10, cr:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 652
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_0

    .line 653
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to query content://mms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 659
    const-string v3, "thread_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 660
    .local v12, currentThreadId:Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 661
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_0

    .line 662
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, " Not in delete folder"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMmsMsgAddress(J)Ljava/lang/String;

    move-result-object v9

    .line 671
    .local v9, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://mms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND thread_id != -1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 673
    .local v11, crThreadId:Landroid/database/Cursor;
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 675
    const-string v3, "thread_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 676
    .local v16, threadIdStr:Ljava/lang/String;
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_3

    .line 677
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " THREAD ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateMMSThreadId(JI)V

    .line 706
    .end local v16           #threadIdStr:Ljava/lang/String;
    :goto_1
    if-eqz v11, :cond_4

    .line 707
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 714
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #crThreadId:Landroid/database/Cursor;
    .end local v12           #currentThreadId:Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 685
    .restart local v9       #address:Ljava/lang/String;
    .restart local v11       #crThreadId:Landroid/database/Cursor;
    .restart local v12       #currentThreadId:Ljava/lang/String;
    :cond_5
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 686
    .local v15, tempValue:Landroid/content/ContentValues;
    const-string v3, "address"

    invoke-virtual {v15, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v3, "type"

    const-string v5, "20"

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 691
    .local v4, tempUri:Landroid/net/Uri;
    if-eqz v4, :cond_7

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 694
    .local v14, tempCr:Landroid/database/Cursor;
    if-eqz v14, :cond_6

    .line 695
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 696
    const-string v3, "thread_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 698
    .local v13, newThreadIdStr:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 699
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateMMSThreadId(JI)V

    .line 701
    .end local v13           #newThreadIdStr:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 703
    .end local v14           #tempCr:Landroid/database/Cursor;
    :cond_7
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, "Error in undelete"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 710
    .end local v4           #tempUri:Landroid/net/Uri;
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #crThreadId:Landroid/database/Cursor;
    .end local v12           #currentThreadId:Ljava/lang/String;
    .end local v15           #tempValue:Landroid/content/ContentValues;
    :cond_8
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_4

    .line 711
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, "msgHandle not found"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private unDeleteSMS(J)V
    .locals 17
    .parameter "msgHandle"

    .prologue
    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://sms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 748
    .local v10, cr:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 754
    const-string v3, "thread_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 755
    .local v12, currentThreadId:Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 756
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_0

    .line 757
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, " Not in delete folder"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 763
    :cond_2
    const-string v3, "address"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 766
    .local v9, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND thread_id != -1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 768
    .local v11, crThreadId:Landroid/database/Cursor;
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 770
    const-string v3, "thread_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 771
    .local v16, threadIdStr:Ljava/lang/String;
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_3

    .line 772
    const-string v3, "BluetoothMasAppSmsMms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " THREAD ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateSMSThreadId(JI)V

    .line 800
    .end local v16           #threadIdStr:Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 801
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 808
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #crThreadId:Landroid/database/Cursor;
    .end local v12           #currentThreadId:Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 780
    .restart local v9       #address:Ljava/lang/String;
    .restart local v11       #crThreadId:Landroid/database/Cursor;
    .restart local v12       #currentThreadId:Ljava/lang/String;
    :cond_6
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 781
    .local v15, tempValue:Landroid/content/ContentValues;
    const-string v3, "address"

    invoke-virtual {v15, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v3, "type"

    const-string v5, "20"

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 786
    .local v4, tempUri:Landroid/net/Uri;
    if-eqz v4, :cond_4

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 789
    .local v14, tempCr:Landroid/database/Cursor;
    if-eqz v14, :cond_7

    .line 790
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 791
    const-string v3, "thread_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 793
    .local v13, newThreadIdStr:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 794
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->updateSMSThreadId(JI)V

    .line 797
    .end local v13           #newThreadIdStr:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 804
    .end local v4           #tempUri:Landroid/net/Uri;
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #crThreadId:Landroid/database/Cursor;
    .end local v12           #currentThreadId:Ljava/lang/String;
    .end local v14           #tempCr:Landroid/database/Cursor;
    .end local v15           #tempValue:Landroid/content/ContentValues;
    :cond_8
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v3, :cond_5

    .line 805
    const-string v3, "BluetoothMasAppSmsMms"

    const-string v5, "msgHandle not found"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateMMSThreadId(JI)V
    .locals 5
    .parameter "handle"
    .parameter "threadId"

    .prologue
    const/4 v4, 0x0

    .line 621
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 622
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 625
    return-void
.end method

.method private updateSMSThreadId(JI)V
    .locals 5
    .parameter "msgHandle"
    .parameter "threadId"

    .prologue
    const/4 v4, 0x0

    .line 718
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 719
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 722
    return-void
.end method


# virtual methods
.method public checkPrecondition()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method protected getCompleteFolderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/android/bluetooth/map/MapUtils/SmsMmsUtils;->FORLDER_LIST_SMS_MMS:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getMessageSpecific(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
    .locals 8
    .parameter "msgHandle"
    .parameter "rsp"
    .parameter "bluetoothMasAppParams"

    .prologue
    .line 244
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 246
    .local v6, handle:J
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    cmp-long v0, v6, v0

    if-ltz v0, :cond_1

    .line 251
    iget-byte v0, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->Charset:B

    if-nez v0, :cond_0

    .line 252
    const/16 v0, 0xc0

    iput v0, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;->rsp:I

    .line 257
    .end local p3
    :goto_0
    return-object p3

    .line 255
    .restart local p3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMessageMms(JLcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    move-result-object p3

    goto :goto_0

    .line 257
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getMessageSms(JLandroid/content/Context;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;

    move-result-object p3

    goto :goto_0
.end method

.method protected msgListingSpecific(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    .locals 11
    .parameter
    .parameter "name"
    .parameter "rsp"
    .parameter "appParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;",
            "Lcom/android/bluetooth/map/BluetoothMasAppParams;",
            ")",
            "Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, msgList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    invoke-direct {v0}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;-><init>()V

    .line 152
    .local v0, bmlr:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    const/4 v7, 0x0

    .line 153
    .local v7, validFilter:Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    .line 155
    .local v4, fullPath:Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_2

    .line 157
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 158
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 238
    :goto_1
    return-object v0

    .line 153
    .end local v4           #fullPath:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->getCompleteFolderList()Ljava/util/List;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    invoke-static {p2, v8, v9, v10}, Lcom/android/bluetooth/map/MapUtils/CommonUtils;->getFullPath(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 162
    .restart local v4       #fullPath:Ljava/lang/String;
    :cond_2
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v8, :cond_3

    .line 163
    const-string v8, "BluetoothMasAppSmsMms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "appParams.FilterMessageType ::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v8, "BluetoothMasAppSmsMms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Condition result::"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-byte v10, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v10, v10, 0xb

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, splitStrings:[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    .line 168
    const/4 v8, 0x2

    aget-object v3, v6, v8

    .line 169
    .local v3, folderName:Ljava/lang/String;
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v8, :cond_4

    const-string v8, "BluetoothMasAppSmsMms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "folderName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_4
    invoke-static {p4}, Lcom/android/bluetooth/map/MapUtils/CommonUtils;->validateFilterPeriods(Lcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v8

    if-nez v8, :cond_5

    .line 171
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 172
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto :goto_1

    .line 175
    :cond_5
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterReadStatus:B

    const/4 v9, 0x2

    if-le v8, v9, :cond_6

    .line 176
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 177
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 191
    :cond_6
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    if-eqz v8, :cond_7

    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    .line 192
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 193
    .local v5, phoneType:I
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_9

    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_8

    const/4 v8, 0x1

    if-eq v5, v8, :cond_9

    :cond_8
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_a

    const/4 v8, 0x2

    if-ne v5, v8, :cond_a

    .line 198
    :cond_9
    const/4 v7, 0x1

    .line 199
    invoke-direct {p0, p1, v3, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->msgListSms(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    move-result-object v2

    .line 201
    .local v2, bmlrSms:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    iget-object v8, v2, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    iput-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    .line 202
    iget-object v8, v2, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    iput-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 207
    .end local v2           #bmlrSms:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    :cond_a
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterMessageType:B

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_c

    .line 208
    const-string v8, "BluetoothMasAppSmsMms"

    const-string v9, "About to retrieve msgListMms "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v7, 0x1

    .line 212
    const-string v8, "draft"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 213
    const-string v3, "drafts"

    .line 215
    :cond_b
    invoke-direct {p0, p1, v3, p3, p4}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->msgListMms(Ljava/util/List;Ljava/lang/String;Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;

    move-result-object v1

    .line 216
    .local v1, bmlrMms:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    iget-object v8, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    iput-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    .line 217
    iget-object v8, v1, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    iput-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    .line 219
    .end local v1           #bmlrMms:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;
    :cond_c
    const/4 v8, 0x1

    if-eq v7, v8, :cond_f

    .line 220
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v8, :cond_d

    const-string v8, "BluetoothMasAppSmsMms"

    const-string v9, "Invalid filter in msgListingSpecific"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_d
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 222
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 226
    .end local v5           #phoneType:I
    :cond_e
    iget-byte v8, p4, Lcom/android/bluetooth/map/BluetoothMasAppParams;->FilterPriority:B

    const/4 v9, 0x2

    if-le v8, v9, :cond_f

    .line 227
    const/16 v8, 0xc0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 228
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1

    .line 235
    .end local v3           #folderName:Ljava/lang/String;
    :cond_f
    iget-object v8, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->msgList:Ljava/util/List;

    new-instance v9, Lcom/android/bluetooth/map/MapUtils/SortMsgListByDate;

    invoke-direct {v9}, Lcom/android/bluetooth/map/MapUtils/SortMsgListByDate;-><init>()V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 236
    const/16 v8, 0xa0

    iput v8, p3, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;->rsp:I

    .line 237
    iput-object p3, v0, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMsgListRsp;->rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;

    goto/16 :goto_1
.end method

.method public msgStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I
    .locals 5
    .parameter "msgHandle"
    .parameter "bluetoothMasAppParams"

    .prologue
    const/16 v2, 0xcc

    const/4 v4, 0x1

    .line 359
    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-eqz v3, :cond_1

    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusIndicator:B

    if-eq v3, v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v2

    .line 363
    :cond_1
    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-eqz v3, :cond_2

    iget-byte v3, p2, Lcom/android/bluetooth/map/BluetoothMasAppParams;->StatusValue:B

    if-ne v3, v4, :cond_0

    .line 367
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 368
    .local v0, handle:J
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_START:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->OFFSET_END:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 369
    const/16 v2, 0xc4

    goto :goto_0

    .line 371
    :cond_3
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->MMS_OFFSET_START:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    .line 372
    invoke-direct {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->setMsgStatusMms(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v2

    goto :goto_0

    .line 374
    :cond_4
    invoke-direct {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->setMsgStatusSms(JLcom/android/bluetooth/map/BluetoothMasAppParams;)I

    move-result v2

    goto :goto_0
.end method

.method public msgUpdate()I
    .locals 2

    .prologue
    .line 384
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppSmsMms"

    const-string v1, "Message Update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    const/16 v0, 0xd1

    return v0
.end method

.method public onConnect()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->cleanUp()V

    .line 146
    return-void
.end method

.method public pushMsg(Ljava/lang/String;Ljava/io/File;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .locals 19
    .parameter "name"
    .parameter "file"
    .parameter "bluetoothMasAppParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    invoke-direct {v13}, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;-><init>()V

    .line 269
    .local v13, rsp:Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    const/16 v15, 0xd3

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 270
    const/4 v15, 0x0

    iput-object v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 272
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->checkPath(ZLjava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    const-string v16, "telecom"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mCurrentPath:Ljava/lang/String;

    const-string v16, "telecom/msg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 276
    :cond_0
    const/16 v15, 0xc0

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move-object v15, v13

    .line 350
    :goto_0
    return-object v15

    .line 280
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mContext:Landroid/content/Context;

    const-string v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 281
    .local v5, am:Landroid/app/ActivityManager;
    new-instance v9, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v9}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 282
    .local v9, outInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v5, v9}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 283
    iget-wide v15, v9, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v0, v9, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    move-wide/from16 v17, v0

    sub-long v3, v15, v17

    .line 285
    .local v3, allowedMem:J
    const/4 v10, 0x0

    .line 286
    .local v10, readBytes:[B
    const/4 v7, 0x0

    .line 288
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 289
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-lez v15, :cond_3

    .line 290
    const/16 v15, 0xcd

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    .line 291
    const/4 v15, 0x0

    iput-object v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->msgHandle:Ljava/lang/String;

    .line 292
    const-string v15, "BluetoothMasAppSmsMms"

    const-string v16, "Message body is larger than the max length allowed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_b

    .line 308
    if-eqz v8, :cond_2

    .line 310
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_2
    :goto_1
    move-object v15, v13

    .line 293
    goto :goto_0

    .line 295
    :cond_3
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    long-to-int v15, v15

    new-array v10, v15, [B

    .line 296
    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_b

    .line 308
    if-eqz v8, :cond_4

    .line 310
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 317
    :cond_4
    :goto_2
    const-string v11, ""

    .line 318
    .local v11, readStr:Ljava/lang/String;
    const-string v14, ""

    .line 320
    .local v14, type:Ljava/lang/String;
    :try_start_5
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 321
    .end local v11           #readStr:Ljava/lang/String;
    .local v12, readStr:Ljava/lang/String;
    :try_start_6
    invoke-static {v12}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    move-result-object v14

    .line 325
    if-nez v14, :cond_9

    .line 326
    const/16 v15, 0xc0

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move-object v15, v13

    .line 327
    goto :goto_0

    .line 298
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #readStr:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    .line 299
    .local v6, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_7
    const-string v15, "BluetoothMasAppSmsMms"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 308
    if-eqz v7, :cond_5

    .line 310
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .end local v6           #e:Ljava/io/FileNotFoundException;
    :cond_5
    :goto_4
    move-object v15, v13

    .line 300
    goto :goto_0

    .line 301
    :catch_1
    move-exception v6

    .line 302
    .local v6, e:Ljava/io/IOException;
    :goto_5
    :try_start_9
    const-string v15, "BluetoothMasAppSmsMms"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 308
    if-eqz v7, :cond_6

    .line 310
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_6
    move-object v15, v13

    .line 303
    goto/16 :goto_0

    .line 304
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 305
    .local v6, e:Ljava/lang/SecurityException;
    :goto_7
    :try_start_b
    const-string v15, "BluetoothMasAppSmsMms"

    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 308
    if-eqz v7, :cond_7

    .line 310
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .end local v6           #e:Ljava/lang/SecurityException;
    :cond_7
    :goto_8
    move-object v15, v13

    .line 306
    goto/16 :goto_0

    .line 308
    :catchall_0
    move-exception v15

    :goto_9
    if-eqz v7, :cond_8

    .line 310
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 308
    :cond_8
    :goto_a
    throw v15

    .line 322
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v11       #readStr:Ljava/lang/String;
    .restart local v14       #type:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 323
    .local v6, e:Ljava/lang/Exception;
    :goto_b
    new-instance v15, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 329
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #readStr:Ljava/lang/String;
    .restart local v12       #readStr:Ljava/lang/String;
    :cond_9
    const-string v15, "SMS_GSM"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string v15, "SMS_CDMA"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 330
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v13, v12, v1, v2}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->pushMessageSms(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    move-result-object v15

    goto/16 :goto_0

    .line 331
    :cond_b
    const-string v15, "MMS"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 335
    const-string v15, "MMS"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v12, v1}, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->pushMessageMms(Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;

    move-result-object v13

    move-object v15, v13

    .line 346
    goto/16 :goto_0

    .line 349
    :cond_c
    const/16 v15, 0xc0

    iput v15, v13, Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;->response:I

    move-object v15, v13

    .line 350
    goto/16 :goto_0

    .line 311
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #readStr:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    .line 312
    .local v6, e:Ljava/io/IOException;
    const-string v16, "BluetoothMasAppSmsMms"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error while closing stream"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 311
    .local v6, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v6

    .line 312
    .local v6, e:Ljava/io/IOException;
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 311
    :catch_6
    move-exception v6

    .line 312
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 311
    .local v6, e:Ljava/lang/SecurityException;
    :catch_7
    move-exception v6

    .line 312
    .local v6, e:Ljava/io/IOException;
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 311
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    .line 312
    .restart local v6       #e:Ljava/io/IOException;
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 311
    .end local v6           #e:Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 312
    .restart local v6       #e:Ljava/io/IOException;
    const-string v15, "BluetoothMasAppSmsMms"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while closing stream"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 322
    .end local v6           #e:Ljava/io/IOException;
    .restart local v12       #readStr:Ljava/lang/String;
    .restart local v14       #type:Ljava/lang/String;
    :catch_a
    move-exception v6

    move-object v11, v12

    .end local v12           #readStr:Ljava/lang/String;
    .restart local v11       #readStr:Ljava/lang/String;
    goto/16 :goto_b

    .line 308
    .end local v11           #readStr:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 304
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_b
    move-exception v6

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 301
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v6

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 298
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_d
    move-exception v6

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public startMnsSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "remoteDevice"

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppSmsMms"

    const-string v1, "Start MNS Client"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method

.method public stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "remoteDevice"

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasAppSmsMms"

    const-string v1, "Stop MNS Client"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasAppSmsMms;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMns;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method
