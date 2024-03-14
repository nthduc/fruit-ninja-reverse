.class final Lcom/google/android/gms/internal/ads/zzbgp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzeni:Lcom/google/android/gms/internal/ads/zzbgi;

.field private final synthetic zzenl:Ljava/util/List;

.field private final synthetic zzenm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgi;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgp;->zzeni:Lcom/google/android/gms/internal/ads/zzbgi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgp;->zzenl:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgp;->zzenm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    .line 3
    check-cast p1, Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgp;->zzeni:Lcom/google/android/gms/internal/ads/zzbgi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgp;->zzenl:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgp;->zzenm:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Lcom/google/android/gms/internal/ads/zzbgi;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
