.class public final Lcom/google/android/gms/internal/ads/zzcmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdso;


# instance fields
.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field private final zzghm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzdsf;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzghn:Lcom/google/android/gms/internal/ads/zzcms;

.field private final zzgho:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzdsf;",
            "Lcom/google/android/gms/internal/ads/zzcmx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcms;Ljava/util/Set;Lcom/google/android/gms/common/util/Clock;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcms;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcmx;",
            ">;",
            "Lcom/google/android/gms/common/util/Clock;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghn:Lcom/google/android/gms/internal/ads/zzcms;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghm:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgho:Ljava/util/Map;

    .line 6
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcmx;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgho:Ljava/util/Map;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcmx;->zza(Lcom/google/android/gms/internal/ads/zzcmx;)Lcom/google/android/gms/internal/ads/zzdsf;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 9
    :cond_2d
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdsf;Z)V
    .registers 8

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgho:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcmx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmx;->zzb(Lcom/google/android/gms/internal/ads/zzcmx;)Lcom/google/android/gms/internal/ads/zzdsf;

    move-result-object v0

    if-eqz p2, :cond_11

    const-string p2, "s."

    goto :goto_13

    :cond_11
    const-string p2, "f."

    .line 28
    :goto_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghm:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghm:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghn:Lcom/google/android/gms/internal/ads/zzcms;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcms;->zzru()Ljava/util/Map;

    move-result-object v0

    const-string v3, "label."

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgho:Ljava/util/Map;

    .line 32
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcmx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcmx;->zzc(Lcom/google/android/gms/internal/ads/zzcmx;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_56

    :cond_51
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_56
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6f

    :cond_69
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_6f
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdsf;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdsf;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .line 14
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghm:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_54

    .line 15
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghm:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghn:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcms;->zzru()Ljava/util/Map;

    move-result-object p3

    const-string v2, "task."

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_37

    :cond_32
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_37
    const-string v2, "f."

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_4c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_51
    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_54
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgho:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_60

    const/4 p2, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcmy;->zza(Lcom/google/android/gms/internal/ads/zzdsf;Z)V

    :cond_60
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdsf;Ljava/lang/String;)V
    .registers 5

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghm:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdsf;Ljava/lang/String;)V
    .registers 8

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghm:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzghn:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcms;->zzru()Ljava/util/Map;

    move-result-object v2

    const-string v3, "task."

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_37

    :cond_32
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_37
    const-string v3, "s."

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_4c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_51
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_54
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgho:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_60

    const/4 p2, 0x1

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcmy;->zza(Lcom/google/android/gms/internal/ads/zzdsf;Z)V

    :cond_60
    return-void
.end method
