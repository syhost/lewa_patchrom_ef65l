.class Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;
.super Ljava/lang/Object;
.source "BluetoothMns.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMns$EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendEventTask"
.end annotation


# instance fields
.field final mMasId:I

.field final mXml:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "xml"
    .parameter "masId"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;->mXml:Ljava/lang/String;

    .line 415
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;->mMasId:I

    .line 416
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 419
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BtMns"

    const-string v1, "MNS_SEND_EVENT started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;->mMasId:I

    #calls: Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->setTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->access$1200(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;I)V

    .line 421
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->this$0:Lcom/android/bluetooth/map/BluetoothMns;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;->mXml:Ljava/lang/String;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;->mMasId:I

    #calls: Lcom/android/bluetooth/map/BluetoothMns;->sendEvent(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMns;->access$1300(Lcom/android/bluetooth/map/BluetoothMns;Ljava/lang/String;I)V

    .line 422
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMns$EventHandler$SendEventTask;->this$1:Lcom/android/bluetooth/map/BluetoothMns$EventHandler;

    #calls: Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->removeTimeout()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMns$EventHandler;->access$1400(Lcom/android/bluetooth/map/BluetoothMns$EventHandler;)V

    .line 423
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMns;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BtMns"

    const-string v1, "MNS_SEND_EVENT finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    return-void
.end method
