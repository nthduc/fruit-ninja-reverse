.class public abstract Lcom/google/android/gms/internal/ads/zzayl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile thread:Ljava/lang/Thread;

.field private final zzeae:Ljava/lang/Runnable;

.field private zzeaf:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzayk;-><init>(Lcom/google/android/gms/internal/ads/zzayl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayl;->zzeae:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayl;->zzeaf:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayl;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayl;->thread:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract zzvb()V
.end method

.method public final zzwz()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeq:Lcom/google/android/gms/internal/ads/zzdzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayl;->zzeae:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zzg(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
