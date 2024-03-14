.class final synthetic Lcom/google/android/gms/internal/ads/zzbqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfrz:Lcom/google/android/gms/internal/ads/zzdyr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfrz:Lcom/google/android/gms/internal/ads/zzdyr;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzfrz:Lcom/google/android/gms/internal/ads/zzdyr;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfy:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
