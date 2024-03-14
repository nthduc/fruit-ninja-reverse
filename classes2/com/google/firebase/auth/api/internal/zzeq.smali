.class public final Lcom/google/firebase/auth/api/internal/zzeq;
.super Lcom/google/android/gms/internal/firebase_auth/zzb;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzeo;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final i_()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x5

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 47
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 48
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xc

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzeh;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 55
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xe

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzej;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 59
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xf

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzff;Lcom/google/android/gms/internal/firebase_auth/zzew;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 9
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_auth/zzfm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 39
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xa

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzb()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzc()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xd

    .line 52
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xb

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
