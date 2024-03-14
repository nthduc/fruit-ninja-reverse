.class public final Lcom/google/android/gms/internal/ads/zzcmf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzcme;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzggl:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzts;",
            ">;"
        }
    .end annotation
.end field

.field private final zzggt:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzdsf;",
            "Lcom/google/android/gms/internal/ads/zzcmg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzts;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzdsf;",
            "Lcom/google/android/gms/internal/ads/zzcmg;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzggl:Lcom/google/android/gms/internal/ads/zzeph;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzggt:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzah(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzcmf;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzts;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzdsf;",
            "Lcom/google/android/gms/internal/ads/zzcmg;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/zzcmf;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcmf;-><init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzggl:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzggt:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcme;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcme;-><init>(Lcom/google/android/gms/internal/ads/zzts;Ljava/util/Map;)V

    return-object v2
.end method
