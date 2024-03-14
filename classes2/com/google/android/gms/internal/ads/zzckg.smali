.class final synthetic Lcom/google/android/gms/internal/ads/zzckg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhu;


# instance fields
.field private final zzbvu:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzbvu:Lcom/google/android/gms/internal/ads/zzbcg;

    return-void
.end method


# virtual methods
.method public final zzai(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckg;->zzbvu:Lcom/google/android/gms/internal/ads/zzbcg;

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_9
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "Ad Web View failed to load."

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
