.class final Lcom/google/android/gms/internal/ads/zzbrq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Lcom/google/android/gms/internal/ads/zzatc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfsx:Lcom/google/android/gms/internal/ads/zzbrl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbrl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrq;->zzfsx:Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzatc;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrq;->zzfsx:Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zza(Lcom/google/android/gms/internal/ads/zzbrl;)Lcom/google/android/gms/internal/ads/zzbyg;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbyg;->zzbg(Z)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrq;->zzfsx:Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zza(Lcom/google/android/gms/internal/ads/zzbrl;)Lcom/google/android/gms/internal/ads/zzbyg;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbyg;->zzbg(Z)V

    return-void
.end method
