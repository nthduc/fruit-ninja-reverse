.class public final Lcom/google/firebase/iid/zzw;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.7"

# interfaces
.implements Lcom/google/firebase/iid/zzx;


# instance fields
.field private final zza:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/zzw;->zza:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zza:Landroid/os/IBinder;

    return-object v0
.end method

.method public final zza(Landroid/os/Message;)V
    .registers 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "com.google.android.gms.iid.IMessengerCompat"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v2}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8
    :try_start_11
    iget-object p1, p0, Lcom/google/firebase/iid/zzw;->zza:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1b
    move-exception p1

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12
    throw p1
.end method
