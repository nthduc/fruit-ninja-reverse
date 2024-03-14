.class public final Lcom/google/android/gms/internal/ads/zzcbs;
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
        "Lcom/google/android/gms/internal/ads/zzbuh;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzfpj:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbtd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfwx:Lcom/google/android/gms/internal/ads/zzcbf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcbf;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbf;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbtd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbs;->zzfwx:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbs;->zzfpj:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzcbf;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzcbs;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbf;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbtd;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcbs;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcbs;-><init>(Lcom/google/android/gms/internal/ads/zzcbf;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbs;->zzfwx:Lcom/google/android/gms/internal/ads/zzcbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbs;->zzfpj:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbtd;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbf;->zzb(Lcom/google/android/gms/internal/ads/zzbtd;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
