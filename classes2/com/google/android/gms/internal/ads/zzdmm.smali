.class final synthetic Lcom/google/android/gms/internal/ads/zzdmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlk;


# instance fields
.field private final zzfus:Lcom/google/android/gms/internal/ads/zzva;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzfus:Lcom/google/android/gms/internal/ads/zzva;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmm;->zzfus:Lcom/google/android/gms/internal/ads/zzva;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavd;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzavd;->onRewardedAdFailedToShow(I)V

    return-void
.end method
