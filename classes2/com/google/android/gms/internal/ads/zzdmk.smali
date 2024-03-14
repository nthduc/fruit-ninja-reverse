.class final synthetic Lcom/google/android/gms/internal/ads/zzdmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlk;


# static fields
.field static final zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdmk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhaw:Lcom/google/android/gms/internal/ads/zzdlk;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaug;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaug;->onRewardedVideoCompleted()V

    return-void
.end method
