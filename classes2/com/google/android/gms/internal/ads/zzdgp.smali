.class public final Lcom/google/android/gms/internal/ads/zzdgp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdgn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzftt:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdmd;",
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
            "Lcom/google/android/gms/internal/ads/zzdmd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgp;->zzftt:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzaq(Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzdgp;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdmd;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdgp;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdgp;-><init>(Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdmd;)Lcom/google/android/gms/internal/ads/zzdgn;
    .registers 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdgn;-><init>(Lcom/google/android/gms/internal/ads/zzdmd;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgp;->zzftt:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdmd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgp;->zzb(Lcom/google/android/gms/internal/ads/zzdmd;)Lcom/google/android/gms/internal/ads/zzdgn;

    move-result-object v0

    return-object v0
.end method
