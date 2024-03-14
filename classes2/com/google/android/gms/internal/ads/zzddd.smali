.class public final Lcom/google/android/gms/internal/ads/zzddd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdcz;",
        ">;"
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

.field private final zzesu:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfnm:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzfnm:Lcom/google/android/gms/internal/ads/zzeph;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzesr:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzt(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzddd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzddd;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzddd;-><init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzesu:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzfnm:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzesr:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdcz;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdcz;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method
