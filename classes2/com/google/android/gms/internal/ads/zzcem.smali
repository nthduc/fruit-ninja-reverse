.class public Lcom/google/android/gms/internal/ads/zzcem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field protected final zzgah:Lcom/google/android/gms/internal/ads/zzdnv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnv;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    return-void
.end method


# virtual methods
.method public zzalw()Z
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzdtm:Z

    return v0
.end method

.method public zzaml()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzamm()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzamn()Z
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzdkx:Z

    return v0
.end method

.method public zzamo()Z
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgah:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzdkw:Z

    return v0
.end method
