.class final Lcom/google/android/gms/internal/ads/zzeml;
.super Lcom/google/android/gms/internal/ads/zzemr;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzemr;"
    }
.end annotation


# instance fields
.field private final synthetic zzinm:Lcom/google/android/gms/internal/ads/zzemk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzemk;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeml;->zzinm:Lcom/google/android/gms/internal/ads/zzemk;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzemr;-><init>(Lcom/google/android/gms/internal/ads/zzemk;Lcom/google/android/gms/internal/ads/zzemj;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzemk;Lcom/google/android/gms/internal/ads/zzemj;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeml;-><init>(Lcom/google/android/gms/internal/ads/zzemk;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeml;->zzinm:Lcom/google/android/gms/internal/ads/zzemk;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzemm;-><init>(Lcom/google/android/gms/internal/ads/zzemk;Lcom/google/android/gms/internal/ads/zzemj;)V

    return-object v0
.end method
