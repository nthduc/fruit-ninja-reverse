.class final Lcom/google/android/gms/internal/ads/zzarz;
.super Lcom/google/android/gms/internal/ads/zzars;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final synthetic zzdqg:Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzarw;Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarz;->zzdqg:Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzars;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarz;->zzdqg:Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarz;->zzdqg:Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/UpdateImpressionUrlsCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
