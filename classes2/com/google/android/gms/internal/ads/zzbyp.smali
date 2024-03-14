.class public final Lcom/google/android/gms/internal/ads/zzbyp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzbyg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfqq:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbyo;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbyo;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfqq:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzs(Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzbyp;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbyo;",
            ">;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzbyp;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbyp;-><init>(Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyp;->zzfqq:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyg;-><init>(Ljava/util/Set;)V

    return-object v1
.end method
