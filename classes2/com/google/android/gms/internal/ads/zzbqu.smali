.class public final Lcom/google/android/gms/internal/ads/zzbqu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final zzfrx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbqo;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfrx:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfrx:Ljava/util/List;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcta;)Lcom/google/android/gms/internal/ads/zzcta;
    .registers 3
    .param p0    # Lcom/google/android/gms/internal/ads/zzcta;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "Lcom/google/android/gms/internal/ads/zzbqu;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbqw;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcsz;-><init>(Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzdvu;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcvl;)Lcom/google/android/gms/internal/ads/zzcta;
    .registers 3
    .param p0    # Lcom/google/android/gms/internal/ads/zzcvl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvl<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "Lcom/google/android/gms/internal/ads/zzbqu;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbqt;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcsz;-><init>(Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzdvu;)V

    return-object v0
.end method
