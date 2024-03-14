.class final synthetic Lcom/google/android/gms/internal/ads/zzchl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzdjk:Ljava/lang/String;

.field private final zzgdw:Lcom/google/android/gms/internal/ads/zzchj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchj;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzgdw:Lcom/google/android/gms/internal/ads/zzchj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzdgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzdjk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzgdw:Lcom/google/android/gms/internal/ads/zzchj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzdgm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzdjk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzchj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
