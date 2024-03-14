.class public final Lcom/google/android/gms/internal/ads/zzdhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdgw<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final zzesr:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgym:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdgu<",
            "TT;>;>;>;>;"
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
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdgu<",
            "TT;>;>;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zzesr:Lcom/google/android/gms/internal/ads/zzeph;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zzgym:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zza(Ljava/util/concurrent/Executor;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdgw;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdgu<",
            "TT;>;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzdgw<",
            "TT;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdgw;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    return-object v0
.end method

.method public static zzbg(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzdhb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzdgx<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzdgu<",
            "TT;>;>;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzdhb<",
            "TT;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdhb;-><init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zzesr:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zzgym:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdhb;->zza(Ljava/util/concurrent/Executor;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdgw;

    move-result-object v0

    return-object v0
.end method
