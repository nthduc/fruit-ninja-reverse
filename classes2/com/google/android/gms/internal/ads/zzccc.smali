.class public final Lcom/google/android/gms/internal/ads/zzccc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;


# instance fields
.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzbwa;

.field private final zzfwz:Lcom/google/android/gms/internal/ads/zzbzx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbwa;Lcom/google/android/gms/internal/ads/zzbzx;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzfwy:Lcom/google/android/gms/internal/ads/zzbwa;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzfwz:Lcom/google/android/gms/internal/ads/zzbzx;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzfwy:Lcom/google/android/gms/internal/ads/zzbwa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwa;->onPause()V

    return-void
.end method

.method public final onResume()V
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzfwy:Lcom/google/android/gms/internal/ads/zzbwa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwa;->onResume()V

    return-void
.end method

.method public final zzum()V
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzfwy:Lcom/google/android/gms/internal/ads/zzbwa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwa;->zzum()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzfwz:Lcom/google/android/gms/internal/ads/zzbzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzx;->onHide()V

    return-void
.end method

.method public final zzun()V
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzfwy:Lcom/google/android/gms/internal/ads/zzbwa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwa;->zzun()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzfwz:Lcom/google/android/gms/internal/ads/zzbzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzx;->zzaku()V

    return-void
.end method
