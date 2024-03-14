.class final Lcom/google/android/gms/internal/ads/zzdxd;
.super Lcom/google/android/gms/internal/ads/zzdws;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdws<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient zzhqo:Lcom/google/android/gms/internal/ads/zzdwp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwp<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient zzhrd:Lcom/google/android/gms/internal/ads/zzdwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwt<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwt;Lcom/google/android/gms/internal/ads/zzdwp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwt<",
            "TK;*>;",
            "Lcom/google/android/gms/internal/ads/zzdwp<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdws;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzhrd:Lcom/google/android/gms/internal/ads/zzdwt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzhqo:Lcom/google/android/gms/internal/ads/zzdwp;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzhrd:Lcom/google/android/gms/internal/ads/zzdwt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdwt;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwk;->zzaxi()Lcom/google/android/gms/internal/ads/zzdxg;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzhrd:Lcom/google/android/gms/internal/ads/zzdwt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwt;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwk;->zzaxm()Lcom/google/android/gms/internal/ads/zzdwp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwk;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzaxi()Lcom/google/android/gms/internal/ads/zzdxg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdxg<",
            "TK;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwk;->zzaxm()Lcom/google/android/gms/internal/ads/zzdwp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwk;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxg;

    return-object v0
.end method

.method public final zzaxm()Lcom/google/android/gms/internal/ads/zzdwp;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdwp<",
            "TK;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzhqo:Lcom/google/android/gms/internal/ads/zzdwp;

    return-object v0
.end method

.method final zzaxn()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
