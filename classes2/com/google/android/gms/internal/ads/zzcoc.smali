.class final synthetic Lcom/google/android/gms/internal/ads/zzcoc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

.field private final zzgim:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnu;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzgim:Lcom/google/android/gms/internal/ads/zzbcg;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzgim:Lcom/google/android/gms/internal/ads/zzbcg;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayb;->zzwt()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzayr;->zzxk()Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxy;->zzwg()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_1c
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
