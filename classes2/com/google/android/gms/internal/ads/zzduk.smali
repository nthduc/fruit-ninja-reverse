.class public final Lcom/google/android/gms/internal/ads/zzduk;
.super Lcom/google/android/gms/ads/internal/zzc;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/ads/internal/zzc<",
        "Lcom/google/android/gms/internal/ads/zzdun;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzhnq:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V
    .registers 13

    const/16 v3, 0x74

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    .line 2
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzduk;->zzhnq:I

    return-void
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    .line 12
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdun;

    if-eqz v1, :cond_11

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdun;

    return-object v0

    .line 15
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzduq;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .registers 2

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzduk;->zzhnq:I

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.gass.internal.IGassService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.gass.START"

    return-object v0
.end method

.method public final zzawm()Lcom/google/android/gms/internal/ads/zzdun;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 7
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzc;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdun;

    return-object v0
.end method
