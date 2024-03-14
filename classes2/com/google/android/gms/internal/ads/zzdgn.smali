.class public final Lcom/google/android/gms/internal/ads/zzdgn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdgu<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzgxx:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdmd;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzdmd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdgn;->zzgxx:Z

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdgn;->zzgxx:Z

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdgu<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdgn;->zzgxx:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgm;->zzgxw:Lcom/google/android/gms/internal/ads/zzdgu;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 7
    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method
