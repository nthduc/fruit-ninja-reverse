.class public final Lcom/google/android/gms/internal/ads/zzbyw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzbug;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwg:Lcom/google/android/gms/internal/ads/zzbys;

.field private final zzfwh:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbui;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbys;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbys;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbui;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyw;->zzfwg:Lcom/google/android/gms/internal/ads/zzbys;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyw;->zzfwh:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbys;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzbyw;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbys;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbui;",
            ">;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzbyw;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbyw;-><init>(Lcom/google/android/gms/internal/ads/zzbys;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyw;->zzfwg:Lcom/google/android/gms/internal/ads/zzbys;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyw;->zzfwh:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbys;->zzc(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzbug;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbug;

    return-object v0
.end method
