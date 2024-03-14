.class final Lcom/google/android/gms/internal/ads/zzdxa;
.super Lcom/google/android/gms/internal/ads/zzdwp;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdwp<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzhrc:Lcom/google/android/gms/internal/ads/zzdxb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxb;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zzhrc:Lcom/google/android/gms/internal/ads/zzdxb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwp;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .registers 5

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zzhrc:Lcom/google/android/gms/internal/ads/zzdxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxb;->zza(Lcom/google/android/gms/internal/ads/zzdxb;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwd;->zzs(II)I

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zzhrc:Lcom/google/android/gms/internal/ads/zzdxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxb;->zzb(Lcom/google/android/gms/internal/ads/zzdxb;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zzhrc:Lcom/google/android/gms/internal/ads/zzdxb;

    .line 7
    aget-object v0, v0, p1

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdxb;->zzb(Lcom/google/android/gms/internal/ads/zzdxb;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zzhrc:Lcom/google/android/gms/internal/ads/zzdxb;

    add-int/lit8 p1, p1, 0x1

    .line 10
    aget-object p1, v1, p1

    .line 11
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxa;->zzhrc:Lcom/google/android/gms/internal/ads/zzdxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxb;->zza(Lcom/google/android/gms/internal/ads/zzdxb;)I

    move-result v0

    return v0
.end method

.method public final zzaxn()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
