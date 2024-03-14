.class final Lcom/google/firebase/iid/zzal;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.7"


# instance fields
.field private final zza:Landroid/os/Messenger;

.field private final zzb:Lcom/google/firebase/iid/zzj;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.IMessenger"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 4
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzal;->zza:Landroid/os/Messenger;

    .line 5
    iput-object v2, p0, Lcom/google/firebase/iid/zzal;->zzb:Lcom/google/firebase/iid/zzj;

    return-void

    :cond_1a
    const-string v1, "com.google.android.gms.iid.IMessengerCompat"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 7
    new-instance v0, Lcom/google/firebase/iid/zzj;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/zzj;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzal;->zzb:Lcom/google/firebase/iid/zzj;

    .line 8
    iput-object v2, p0, Lcom/google/firebase/iid/zzal;->zza:Landroid/os/Messenger;

    return-void

    :cond_2c
    const-string p1, "Invalid interface descriptor: "

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_3d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_43
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method


# virtual methods
.method final zza(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/firebase/iid/zzal;->zza:Landroid/os/Messenger;

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    .line 13
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/zzal;->zzb:Lcom/google/firebase/iid/zzj;

    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzj;->zza(Landroid/os/Message;)V

    return-void

    .line 15
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Both messengers are null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
