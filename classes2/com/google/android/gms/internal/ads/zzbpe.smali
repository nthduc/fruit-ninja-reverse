.class public final Lcom/google/android/gms/internal/ads/zzbpe;
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
        "Lcom/google/android/gms/internal/ads/zzbvs;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzfpj:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbqf;",
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
            "Lcom/google/android/gms/internal/ads/zzbqf;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpe;->zzfqp:Lcom/google/android/gms/internal/ads/zzbot;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpe;->zzfpj:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbot;Lcom/google/android/gms/internal/ads/zzbqf;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbot;",
            "Lcom/google/android/gms/internal/ads/zzbqf;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbvs;",
            ">;>;"
        }
    .end annotation

    .line 6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcab;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcab;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpe;->zzfqp:Lcom/google/android/gms/internal/ads/zzbot;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpe;->zzfpj:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbpe;->zza(Lcom/google/android/gms/internal/ads/zzbot;Lcom/google/android/gms/internal/ads/zzbqf;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
