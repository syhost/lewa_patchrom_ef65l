.class Lcom/android/bluetooth/map/BluetoothMasService$2;
.super Landroid/os/Handler;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMasService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMasService;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 376
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothMasService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler(): got msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMasService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 378
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    if-nez v3, :cond_1

    .line 379
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMns;

    invoke-direct {v4, v0}, Lcom/android/bluetooth/map/BluetoothMns;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    .line 382
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 414
    :goto_0
    :sswitch_0
    return-void

    .line 384
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #getter for: Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMasService;->access$100(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 385
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->startAll()V

    goto :goto_0

    .line 387
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    #calls: Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMasService;->access$200(Lcom/android/bluetooth/map/BluetoothMasService;)V

    goto :goto_0

    .line 391
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/map/BluetoothMasService;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    const v4, -0xf4245

    #calls: Lcom/android/bluetooth/map/BluetoothMasService;->removeMapNotification(I)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/map/BluetoothMasService;->access$300(Lcom/android/bluetooth/map/BluetoothMasService;I)V

    .line 397
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v3, :cond_3

    const-string v3, "BluetoothMasService"

    const-string v4, "MAS access request notification flag off"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    const/4 v4, 0x0

    #setter for: Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/map/BluetoothMasService;->access$402(Lcom/android/bluetooth/map/BluetoothMasService;Z)Z

    .line 399
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->stopObexServerSessionWaiting()V

    goto :goto_0

    .line 403
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 404
    .local v2, masId:I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMasService$2;->this$0:Lcom/android/bluetooth/map/BluetoothMasService;

    iget-object v3, v3, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->stopObexServerSession(I)V

    goto :goto_0

    .line 382
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x138c -> :sswitch_3
        0x138d -> :sswitch_0
        0x138e -> :sswitch_0
    .end sparse-switch
.end method
