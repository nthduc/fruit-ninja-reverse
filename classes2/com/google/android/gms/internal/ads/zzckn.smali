.class public final Lcom/google/android/gms/internal/ads/zzckn;
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
        "Lcom/google/android/gms/internal/ads/zzbuy;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfpj:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzckm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgft:Lcom/google/android/gms/internal/ads/zzcko;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcko;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcko;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzckm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzgft:Lcom/google/android/gms/internal/ads/zzcko;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzfpj:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcko;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzckn;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcko;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzckm;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzckn;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzckn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzckn;-><init>(Lcom/google/android/gms/internal/ads/zzcko;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzfpj:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzckm;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcab;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcab;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcab;

    return-object v0
.end method
