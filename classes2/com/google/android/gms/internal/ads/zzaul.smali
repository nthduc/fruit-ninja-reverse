.class public final Lcom/google/android/gms/internal/ads/zzaul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardItem;


# instance fields
.field private final zzdvw:Lcom/google/android/gms/internal/ads/zzatw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatw;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaul;->zzdvw:Lcom/google/android/gms/internal/ads/zzatw;

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaul;->zzdvw:Lcom/google/android/gms/internal/ads/zzatw;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 12
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatw;->getAmount()I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v2, "Could not forward getAmount to RewardItem"

    .line 14
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final getType()Ljava/lang/String;
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaul;->zzdvw:Lcom/google/android/gms/internal/ads/zzatw;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 6
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatw;->getType()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v2, "Could not forward getType to RewardItem"

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
