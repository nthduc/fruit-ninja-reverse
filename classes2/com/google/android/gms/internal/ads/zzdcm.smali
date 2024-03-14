.class public final Lcom/google/android/gms/internal/ads/zzdcm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdcn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzdok;Lcom/google/android/gms/internal/ads/zzbbx;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcm;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcm;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdcm;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdcn;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcm;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdcp;-><init>(Lcom/google/android/gms/internal/ads/zzdcm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzarm()Lcom/google/android/gms/internal/ads/zzdcn;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdcm;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdok;->zzhfe:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdcm;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcn;-><init>(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzbbx;)V

    return-object v0
.end method
