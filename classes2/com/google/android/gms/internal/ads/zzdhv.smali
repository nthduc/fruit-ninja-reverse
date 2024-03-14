.class public final Lcom/google/android/gms/internal/ads/zzdhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgx<",
        "Lcom/google/android/gms/internal/ads/zzdhs;",
        ">;"
    }
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgyy:Lcom/google/android/gms/internal/ads/zzatj;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatj;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdzb;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/ads/zzatj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhv;->zzgyy:Lcom/google/android/gms/internal/ads/zzatj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhv;->zzvr:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdhv;->packageName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdhv;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    return-void
.end method


# virtual methods
.method public final zzarj()Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdhs;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhv;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdhu;-><init>(Lcom/google/android/gms/internal/ads/zzdhv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzasd()Lcom/google/android/gms/internal/ads/zzdhs;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhv;->zzgyy:Lcom/google/android/gms/internal/ads/zzatj;

    if-eqz v1, :cond_10

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhv;->zzvr:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdhv;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzatj;->zza(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 11
    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdhs;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
