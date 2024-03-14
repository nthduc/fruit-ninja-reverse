.class public final Lcom/google/android/gms/internal/ads/zzblx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdya<",
        "Lcom/google/android/gms/internal/ads/zzdog;",
        "Lcom/google/android/gms/internal/ads/zzdog;",
        ">;"
    }
.end annotation


# instance fields
.field private zzfms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbma;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbma;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfms:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdog;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzheu:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdoh;

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfms:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdoh;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzblx;->zzfms:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdoh;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbma;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdoh;->zzhex:Ljava/util/Map;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzbma;->zzl(Ljava/util/Map;)V

    goto :goto_a

    .line 10
    :cond_30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
