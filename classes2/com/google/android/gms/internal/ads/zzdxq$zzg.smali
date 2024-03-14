.class final Lcom/google/android/gms/internal/ads/zzdxq$zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lcom/google/android/gms/internal/ads/zzdzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final zzhrz:Lcom/google/android/gms/internal/ads/zzdxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxq<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxq;Lcom/google/android/gms/internal/ads/zzdzc;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxq<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->zzhrz:Lcom/google/android/gms/internal/ads/zzdxq;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzc;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->zzhrz:Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->zzb(Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_9

    return-void

    .line 7
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->future:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->zzf(Lcom/google/android/gms/internal/ads/zzdzc;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdxq;->zzaxw()Lcom/google/android/gms/internal/ads/zzdxq$zzb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->zzhrz:Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdxq$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdxq;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxq$zzg;->zzhrz:Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->zzc(Lcom/google/android/gms/internal/ads/zzdxq;)V

    :cond_20
    return-void
.end method
