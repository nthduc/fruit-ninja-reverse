.class final Lcom/google/android/gms/internal/ads/zzbfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzecs:Ljava/lang/String;

.field private final synthetic zzeln:Ljava/lang/String;

.field private final synthetic zzelq:Z

.field private final synthetic zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

.field private final synthetic zzelt:J

.field private final synthetic zzelu:J

.field private final synthetic zzelv:I

.field private final synthetic zzelw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfl;Ljava/lang/String;Ljava/lang/String;JJZII)V
    .registers 11

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzecs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzeln:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelt:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelu:J

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelq:Z

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelv:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheProgress"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzecs:Ljava/lang/String;

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzeln:Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bufferedDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelu:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelq:Z

    if-eqz v1, :cond_37

    const-string v1, "1"

    goto :goto_39

    :cond_37
    const-string v1, "0"

    :goto_39
    const-string v2, "cacheReady"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelv:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelw:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerPreparedCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Lcom/google/android/gms/internal/ads/zzbfl;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
