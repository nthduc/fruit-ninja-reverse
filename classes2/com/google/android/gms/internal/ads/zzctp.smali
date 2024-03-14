.class final synthetic Lcom/google/android/gms/internal/ads/zzctp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgog:Lcom/google/android/gms/internal/ads/zzctq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctq;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctp;->zzgog:Lcom/google/android/gms/internal/ads/zzctq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctp;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctp;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctp;->zzgog:Lcom/google/android/gms/internal/ads/zzctq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctp;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzctp;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzctq;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
