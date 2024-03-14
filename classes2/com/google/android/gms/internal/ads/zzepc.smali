.class public final Lcom/google/android/gms/internal/ads/zzepc;
.super Lcom/google/android/gms/internal/ads/zzeou;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzeou<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeou;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzeoz;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepc;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzeou;
    .registers 3

    .line 5
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeou;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzeou;

    return-object p0
.end method

.method public final zzbkj()Lcom/google/android/gms/internal/ads/zzepa;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzepa<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepc;->zziun:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzepa;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzeoz;)V

    return-object v0
.end method
