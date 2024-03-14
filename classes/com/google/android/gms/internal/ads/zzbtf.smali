.class final Lcom/google/android/gms/internal/ads/zzbtf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzftp:Lcom/google/android/gms/internal/ads/zzbtd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbtd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtf;->zzftp:Lcom/google/android/gms/internal/ads/zzbtd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtf;->zzftp:Lcom/google/android/gms/internal/ads/zzbtd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtd;->zza(Lcom/google/android/gms/internal/ads/zzbtd;)Lcom/google/android/gms/internal/ads/zzbuu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbuu;->onAdImpression()V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
