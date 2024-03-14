.class final synthetic Lcom/google/android/gms/internal/ads/zzbyq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjf:Ljava/lang/Object;

.field private final zzfvq:Lcom/google/android/gms/internal/ads/zzbyt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbyt;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfvq:Lcom/google/android/gms/internal/ads/zzbyt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzdjf:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzfvq:Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyq;->zzdjf:Ljava/lang/Object;

    .line 2
    :try_start_4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzp(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    const-string v2, "EventEmitter.notify"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzayb;->zzb(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Event emitter exception."

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
