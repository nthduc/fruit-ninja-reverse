.class final Lcom/google/android/gms/internal/ads/zzbfm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzecs:Ljava/lang/String;

.field private final synthetic zzeln:Ljava/lang/String;

.field private final synthetic zzelo:I

.field private final synthetic zzelp:I

.field private final synthetic zzelq:Z

.field private final synthetic zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

.field private final synthetic zzelt:J

.field private final synthetic zzelu:J

.field private final synthetic zzelv:I

.field private final synthetic zzelw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfl;Ljava/lang/String;Ljava/lang/String;IIJJZII)V
    .registers 13

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeln:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelo:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelp:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelt:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelu:J

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelq:Z

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelv:I

    iput p12, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelw:I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzecs:Ljava/lang/String;

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzeln:Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bytesLoaded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelp:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bufferedDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelu:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelq:Z

    if-eqz v1, :cond_4d

    const-string v1, "1"

    goto :goto_4f

    :cond_4d
    const-string v1, "0"

    :goto_4f
    const-string v2, "cacheReady"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelv:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelw:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerPreparedCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfm;->zzelr:Lcom/google/android/gms/internal/ads/zzbfl;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zza(Lcom/google/android/gms/internal/ads/zzbfl;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
