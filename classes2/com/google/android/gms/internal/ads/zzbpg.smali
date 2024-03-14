.class public final Lcom/google/android/gms/internal/ads/zzbpg;
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
.field private final zzfpj:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbqd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfqp:Lcom/google/android/gms/internal/ads/zzbot;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbot;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbot;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbqd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpg;->zzfqp:Lcom/google/android/gms/internal/ads/zzbot;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpg;->zzfpj:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbot;Lcom/google/android/gms/internal/ads/zzbqd;)Lcom/google/android/gms/internal/ads/zzcab;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbot;",
            "Lcom/google/android/gms/internal/ads/zzbqd;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbvs;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcab;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcab;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcab;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpg;->zzfqp:Lcom/google/android/gms/internal/ads/zzbot;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpg;->zzfpj:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbpg;->zza(Lcom/google/android/gms/internal/ads/zzbot;Lcom/google/android/gms/internal/ads/zzbqd;)Lcom/google/android/gms/internal/ads/zzcab;

    move-result-object v0

    return-object v0
.end method
