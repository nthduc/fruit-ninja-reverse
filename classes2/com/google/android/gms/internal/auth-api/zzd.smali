.class public Lcom/google/android/gms/internal/auth-api/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.1.0"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final zzd:Landroid/os/IBinder;

.field private final zze:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zzd;->zzd:Landroid/os/IBinder;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zzd;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zzd;->zzd:Landroid/os/IBinder;

    return-object v0
.end method

.method protected final zzc()Landroid/os/Parcel;
    .registers 3

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api/zzd;->zze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final zzc(ILandroid/os/Parcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api/zzd;->zzd:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_14

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_14
    move-exception p1

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17
    throw p1
.end method
