.class public Lcom/google/android/gms/nearby/messages/MessageListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleSignalChanged(Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/BleSignal;)V
    .registers 3

    return-void
.end method

.method public onDistanceChanged(Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/Distance;)V
    .registers 3

    return-void
.end method

.method public onFound(Lcom/google/android/gms/nearby/messages/Message;)V
    .registers 2

    return-void
.end method

.method public onLost(Lcom/google/android/gms/nearby/messages/Message;)V
    .registers 2

    return-void
.end method
