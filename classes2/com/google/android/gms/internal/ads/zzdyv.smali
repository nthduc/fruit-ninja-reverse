.class public final Lcom/google/android/gms/internal/ads/zzdyv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzhsj:Z

.field private final zzhtg:Lcom/google/android/gms/internal/ads/zzdwp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwp<",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLcom/google/android/gms/internal/ads/zzdwp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/android/gms/internal/ads/zzdwp<",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdyv;->zzhsj:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyv;->zzhtg:Lcom/google/android/gms/internal/ads/zzdwp;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/android/gms/internal/ads/zzdwp;Lcom/google/android/gms/internal/ads/zzdyt;)V
    .registers 4

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdyv;-><init>(ZLcom/google/android/gms/internal/ads/zzdwp;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TC;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdye;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyv;->zzhtg:Lcom/google/android/gms/internal/ads/zzdwp;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdyv;->zzhsj:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzdye;-><init>(Lcom/google/android/gms/internal/ads/zzdwk;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
