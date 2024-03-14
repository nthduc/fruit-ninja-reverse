.class public final Lcom/google/android/gms/internal/ads/zzbsy;
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
        "Lcom/google/android/gms/internal/ads/zzbvs;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfop:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbtk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzftg:Lcom/google/android/gms/internal/ads/zzbsj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbsj;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbsj;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbtk;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsy;->zzftg:Lcom/google/android/gms/internal/ads/zzbsj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsy;->zzfop:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbsj;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzbsy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbsj;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbtk;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbsy;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbsy;-><init>(Lcom/google/android/gms/internal/ads/zzbsj;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsy;->zzfop:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtk;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcab;

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcab;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcab;

    return-object v0
.end method
