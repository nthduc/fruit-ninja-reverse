.class final synthetic Lcom/google/android/gms/internal/ads/zzcuv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzgnz:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgoa:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgob:Lcom/google/android/gms/internal/ads/zzckj;

.field private final zzgpe:Lcom/google/android/gms/internal/ads/zzcuw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcuw;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzckj;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgpe:Lcom/google/android/gms/internal/ads/zzcuw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgnz:Lcom/google/android/gms/internal/ads/zzdnv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgoa:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgob:Lcom/google/android/gms/internal/ads/zzckj;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgpe:Lcom/google/android/gms/internal/ads/zzcuw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgnz:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgoa:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcuv;->zzgob:Lcom/google/android/gms/internal/ads/zzckj;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcuw;->zzb(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzckj;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
