.class public final Lcom/google/android/gms/internal/ads/zzdfv;
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
.field private final zzfui:Ljava/lang/String;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfv;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfv;->zzfui:Ljava/lang/String;

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

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfv;->zzfui:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    .line 7
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdfu;-><init>(Lcom/google/android/gms/internal/ads/zzdfv;)V

    .line 8
    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzq(Landroid/os/Bundle;)V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfv;->zzvr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rewarded_sku_package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
