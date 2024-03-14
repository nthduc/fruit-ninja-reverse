.class final synthetic Lcom/google/android/gms/internal/ads/zzcup;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzgoy:Lcom/google/android/gms/internal/ads/zzcun;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcun;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcup;->zzgoy:Lcom/google/android/gms/internal/ads/zzcun;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcup;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcup;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->zzgoy:Lcom/google/android/gms/internal/ads/zzcun;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcup;->zzgcx:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcup;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcun;->zzd(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)V

    return-void
.end method
