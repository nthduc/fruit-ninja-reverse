.class public final Lcom/google/android/gms/internal/ads/zzcmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbui;
.implements Lcom/google/android/gms/internal/ads/zzbvs;
.implements Lcom/google/android/gms/internal/ads/zzbws;


# instance fields
.field private final zzghd:Lcom/google/android/gms/internal/ads/zzcms;

.field private final zzghe:Lcom/google/android/gms/internal/ads/zzcmz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcms;Lcom/google/android/gms/internal/ads/zzcmz;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghd:Lcom/google/android/gms/internal/ads/zzcms;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghe:Lcom/google/android/gms/internal/ads/zzcmz;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghd:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcms;->zzru()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "loaded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghe:Lcom/google/android/gms/internal/ads/zzcmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghd:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcms;->zzru()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmz;->zzn(Ljava/util/Map;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdog;)V
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghd:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcms;->zzc(Lcom/google/android/gms/internal/ads/zzdog;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghd:Lcom/google/android/gms/internal/ads/zzcms;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatc;->zzdty:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcms;->zzj(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghd:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcms;->zzru()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ftl"

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghd:Lcom/google/android/gms/internal/ads/zzcms;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcms;->zzru()Ljava/util/Map;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghd:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcms;->zzru()Ljava/util/Map;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzva;->zzcgx:Ljava/lang/String;

    const-string v1, "ed"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghe:Lcom/google/android/gms/internal/ads/zzcmz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmk;->zzghd:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcms;->zzru()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcmz;->zzn(Ljava/util/Map;)V

    return-void
.end method
