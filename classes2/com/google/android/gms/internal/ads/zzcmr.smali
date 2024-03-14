.class public final Lcom/google/android/gms/internal/ads/zzcmr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzcms;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzetn:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcmz;",
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
            "Lcom/google/android/gms/internal/ads/zzcmz;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zzetn:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzab(Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzcmr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcmz;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcmr;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcmr;-><init>(Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmr;->zzetn:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcmz;

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcms;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcms;-><init>(Lcom/google/android/gms/internal/ads/zzcmz;)V

    return-object v1
.end method
