.class final synthetic Lcom/google/android/gms/internal/ads/zzczw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgtn:Lcom/google/android/gms/internal/ads/zzczt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzgtn:Lcom/google/android/gms/internal/ads/zzczt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczw;->zzgtn:Lcom/google/android/gms/internal/ads/zzczt;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzczu;->zzd(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzczs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczs;->onAdLoaded()V

    return-void
.end method
