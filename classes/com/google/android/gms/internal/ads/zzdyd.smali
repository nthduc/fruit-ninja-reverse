.class abstract Lcom/google/android/gms/internal/ads/zzdyd;
.super Lcom/google/android/gms/internal/ads/zzdxu;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdxu<",
        "TV;TC;>;"
    }
.end annotation


# instance fields
.field private zzhsv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdyf<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwk;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwk<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzdxu;-><init>(Lcom/google/android/gms/internal/ads/zzdwk;ZZ)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwk;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwp;->zzaxo()Lcom/google/android/gms/internal/ads/zzdwp;

    move-result-object p2

    goto :goto_17

    .line 4
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwk;->size()I

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwx;->zzep(I)Ljava/util/ArrayList;

    move-result-object p2

    :goto_17
    const/4 v0, 0x0

    .line 5
    :goto_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwk;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    const/4 v1, 0x0

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 8
    :cond_25
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyd;->zzhsv:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzdxu$zza;)V
    .registers 2

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxu;->zza(Lcom/google/android/gms/internal/ads/zzdxu$zza;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyd;->zzhsv:Ljava/util/List;

    return-void
.end method

.method final zzaxz()V
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyd;->zzhsv:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyd;->zzk(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->set(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method final zzb(ILjava/lang/Object;)V
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyd;->zzhsv:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyf;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzdyf;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method abstract zzk(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdyf<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method
