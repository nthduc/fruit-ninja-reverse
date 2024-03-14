.class final Lcom/google/android/gms/internal/ads/zzbmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzfnt:Lcom/google/android/gms/internal/ads/zzbml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbml;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmq;->zzfnt:Lcom/google/android/gms/internal/ads/zzbml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmq;->zzfnt:Lcom/google/android/gms/internal/ads/zzbml;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbml;->zza(Lcom/google/android/gms/internal/ads/zzbml;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmq;->zzfnt:Lcom/google/android/gms/internal/ads/zzbml;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbml;->zza(Lcom/google/android/gms/internal/ads/zzbml;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbmp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbmp;-><init>(Lcom/google/android/gms/internal/ads/zzbmq;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
