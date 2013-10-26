.class public Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;
.super Ljava/lang/Object;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MasInstanceInfo"
.end annotation


# instance fields
.field mMnsClientClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/bluetooth/map/BluetoothMns$MnsClient;",
            ">;"
        }
    .end annotation
.end field

.field mRfcommPort:I

.field mSupportedMessageTypes:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;I)V
    .locals 0
    .parameter "smt"
    .parameter
    .parameter "port"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/bluetooth/map/BluetoothMns$MnsClient;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, _class:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/bluetooth/map/BluetoothMns$MnsClient;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mSupportedMessageTypes:I

    .line 190
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mMnsClientClass:Ljava/lang/Class;

    .line 191
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;->mRfcommPort:I

    .line 192
    return-void
.end method
