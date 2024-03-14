.class public final Lcom/google/android/gms/internal/ads/zzdec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdeh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaai:Landroid/content/Context;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdzb;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdec;->zzaai:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdec;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdeh;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdec;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdef;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdef;-><init>(Lcom/google/android/gms/internal/ads/zzdec;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzarq()Lcom/google/android/gms/internal/ads/zzdeh;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdeh;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdec;->zzaai:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayu;->zzba(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcwf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_20

    goto :goto_2f

    .line 13
    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdec;->zzaai:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "mobileads_consent"

    .line 14
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "fc_consent"

    .line 15
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    :goto_2f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdec;->zzaai:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayu;->zzbb(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdeh;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzdee;)V

    return-object v0
.end method
