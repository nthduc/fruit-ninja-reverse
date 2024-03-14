.class public final Lcom/google/android/gms/internal/ads/zzccq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzy;


# instance fields
.field private final zzfxd:Lcom/google/android/gms/internal/ads/zzbvb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbvb;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfxd:Lcom/google/android/gms/internal/ads/zzbvb;

    return-void
.end method


# virtual methods
.method public final onHide()V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfxd:Lcom/google/android/gms/internal/ads/zzbvb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvb;->zzcc(Landroid/content/Context;)V

    return-void
.end method

.method public final zzaku()V
    .registers 1

    return-void
.end method
