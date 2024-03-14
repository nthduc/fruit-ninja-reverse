.class public final Lcom/google/android/gms/internal/ads/zzbrk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzbrh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfch:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbvh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbvh;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrk;->zzfch:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzbrk;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzbvh;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbrk;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbrk;-><init>(Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrk;->zzfch:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvh;

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbrh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbrh;-><init>(Lcom/google/android/gms/internal/ads/zzbvh;)V

    return-object v1
.end method
