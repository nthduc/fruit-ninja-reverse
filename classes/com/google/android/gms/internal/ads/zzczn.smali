.class public final Lcom/google/android/gms/internal/ads/zzczn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwl;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzgtc:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzyi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzczn;->zzgtc:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzvp;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczn;->zzgtc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzczq;-><init>(Lcom/google/android/gms/internal/ads/zzvp;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdll;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdlk;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzyi;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczn;->zzgtc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
