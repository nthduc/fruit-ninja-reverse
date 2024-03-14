.class public final Lcom/google/android/gms/internal/ads/zzcgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzcab<",
        "Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfop:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcjc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfqk:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgcr:Lcom/google/android/gms/internal/ads/zzcgf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgf;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcgf;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcjc;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzgcr:Lcom/google/android/gms/internal/ads/zzcgf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzfop:Lcom/google/android/gms/internal/ads/zzeph;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzfqk:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzfop:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzfqk:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcab;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcab;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 10
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcab;

    return-object v0
.end method
