.class final Lcom/google/android/gms/internal/ads/zzcqk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzdog;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgkv:Lcom/google/android/gms/internal/ads/zzcqi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqi;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgkv:Lcom/google/android/gms/internal/ads/zzcqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdog;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgkv:Lcom/google/android/gms/internal/ads/zzcqi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqi;->zzb(Lcom/google/android/gms/internal/ads/zzcqi;)Lcom/google/android/gms/internal/ads/zzbwr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwr;->zzb(Lcom/google/android/gms/internal/ads/zzdog;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
