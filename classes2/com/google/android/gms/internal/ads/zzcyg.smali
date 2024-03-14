.class final Lcom/google/android/gms/internal/ads/zzcyg;
.super Lcom/google/android/gms/internal/ads/zzbot;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyb;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbql;Lcom/google/android/gms/internal/ads/zzdnu;)V
    .registers 6

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzbot;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbql;Lcom/google/android/gms/internal/ads/zzdnu;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzbvr;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbvs;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/zzbvr;"
        }
    .end annotation

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbvr;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzbvr;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
