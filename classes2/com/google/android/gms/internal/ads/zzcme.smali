.class public final Lcom/google/android/gms/internal/ads/zzcme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdso;


# instance fields
.field private zzggj:Lcom/google/android/gms/internal/ads/zzts;

.field private zzggs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzdsf;",
            "Lcom/google/android/gms/internal/ads/zzcmg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzts;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzts;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzdsf;",
            "Lcom/google/android/gms/internal/ads/zzcmg;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggs:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggj:Lcom/google/android/gms/internal/ads/zzts;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdsf;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdsf;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggs:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggj:Lcom/google/android/gms/internal/ads/zzts;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggs:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcmg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcmg;->zzggw:Lcom/google/android/gms/internal/ads/zztu$zza$zzb;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zzb;)V

    :cond_17
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdsf;Ljava/lang/String;)V
    .registers 4

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggs:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggj:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcmg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcmg;->zzggu:Lcom/google/android/gms/internal/ads/zztu$zza$zzb;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zzb;)V

    :cond_17
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdsf;Ljava/lang/String;)V
    .registers 4

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggs:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggj:Lcom/google/android/gms/internal/ads/zzts;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzggs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcmg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcmg;->zzggv:Lcom/google/android/gms/internal/ads/zztu$zza$zzb;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zzb;)V

    :cond_17
    return-void
.end method
