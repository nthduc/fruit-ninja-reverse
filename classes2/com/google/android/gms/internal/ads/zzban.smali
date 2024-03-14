.class final Lcom/google/android/gms/internal/ads/zzban;
.super Lcom/google/android/gms/internal/ads/zzbcg;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzbcg<",
        "TT;>;",
        "Lcom/google/android/gms/internal/ads/zzal<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbaj;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzban;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    return-void
.end method
