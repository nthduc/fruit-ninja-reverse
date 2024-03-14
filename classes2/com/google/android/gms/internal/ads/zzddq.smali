.class public final Lcom/google/android/gms/internal/ads/zzddq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzddr;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgup:Ljava/lang/String;

.field private final zzgwl:Lcom/google/android/gms/internal/ads/zzckw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzckw;Lcom/google/android/gms/internal/ads/zzdok;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddq;->zzgwl:Lcom/google/android/gms/internal/ads/zzckw;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzddq;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzddq;->zzgup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzddr;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzddt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzddt;-><init>(Lcom/google/android/gms/internal/ads/zzddq;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzarp()Lcom/google/android/gms/internal/ads/zzddr;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcsr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    .line 12
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddq;->zzgwl:Lcom/google/android/gms/internal/ads/zzckw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzddq;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzddq;->zzgup:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzckw;->zzq(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_23

    return-object v1

    .line 15
    :cond_23
    new-instance v1, Lcom/google/android/gms/internal/ads/zzddr;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzddr;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
