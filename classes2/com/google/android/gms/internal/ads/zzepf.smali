.class public final Lcom/google/android/gms/internal/ads/zzepf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zziuu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final zziuv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeot;->zzhy(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepf;->zziuu:Ljava/util/List;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeot;->zzhy(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepf;->zziuv:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/android/gms/internal/ads/zzepg;)V
    .registers 4

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzepf;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final zzau(Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzepf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "+TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzepf<",
            "TT;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepf;->zziuu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzav(Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzepf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "+",
            "Ljava/util/Collection<",
            "+TT;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzepf<",
            "TT;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepf;->zziuv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzbkk()Lcom/google/android/gms/internal/ads/zzepd;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzepd<",
            "TT;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepf;->zziuu:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepf;->zziuv:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzepd;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzepg;)V

    return-object v0
.end method
