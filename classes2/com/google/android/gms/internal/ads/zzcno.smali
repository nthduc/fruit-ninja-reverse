.class public final Lcom/google/android/gms/internal/ads/zzcno;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzcab<",
        "Lcom/google/android/gms/ads/doubleclick/AppEventListener;",
        ">;>;>;"
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

.field private final zzggl:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcns;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgia:Lcom/google/android/gms/internal/ads/zzcni;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcni;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcni;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcns;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzgia:Lcom/google/android/gms/internal/ads/zzcni;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzggl:Lcom/google/android/gms/internal/ads/zzeph;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzesr:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzcni;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzcno;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcni;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcns;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcno;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcno;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcno;-><init>(Lcom/google/android/gms/internal/ads/zzcni;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzggl:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcns;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcno;->zzesr:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcni;->zzb(Lcom/google/android/gms/internal/ads/zzcns;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
