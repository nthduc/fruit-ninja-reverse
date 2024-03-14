.class public final Lcom/google/android/gms/internal/ads/zzddk;
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
.field private final zzgwe:Lcom/google/android/gms/internal/ads/zzdlf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdlf;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzdlf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgwe:Lcom/google/android/gms/internal/ads/zzdlf;

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

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgwe:Lcom/google/android/gms/internal/ads/zzdlf;

    if-eqz v0, :cond_1c

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlf;->zzasz()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgwe:Lcom/google/android/gms/internal/ads/zzdlf;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlf;->zzasz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzddn;-><init>(Lcom/google/android/gms/internal/ads/zzddk;)V

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 9
    :goto_1d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzp(Landroid/os/Bundle;)V
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddk;->zzgwe:Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlf;->zzasz()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_schema"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
