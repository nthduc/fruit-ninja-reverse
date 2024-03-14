.class final synthetic Lcom/google/android/gms/internal/ads/zzdmt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlk;


# instance fields
.field private final zzeeh:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzeeh:I

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzeeh:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaug;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaug;->onRewardedVideoAdFailedToLoad(I)V

    return-void
.end method
