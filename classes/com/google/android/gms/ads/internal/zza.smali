.class public final Lcom/google/android/gms/ads/internal/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzbof:Z

.field private zzbog:Lcom/google/android/gms/internal/ads/zzawl;

.field private zzboh:Lcom/google/android/gms/internal/ads/zzasr;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawl;Lcom/google/android/gms/internal/ads/zzasr;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzbog:Lcom/google/android/gms/internal/ads/zzawl;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzboh:Lcom/google/android/gms/internal/ads/zzasr;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzboh:Lcom/google/android/gms/internal/ads/zzasr;

    if-nez p1, :cond_15

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzasr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzboh:Lcom/google/android/gms/internal/ads/zzasr;

    :cond_15
    return-void
.end method

.method private final zzjy()Z
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzbog:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v0, :cond_c

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzawl;->zzvq()Lcom/google/android/gms/internal/ads/zzawg;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawg;->zzdxh:Z

    if-nez v0, :cond_12

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzboh:Lcom/google/android/gms/internal/ads/zzasr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzasr;->zzdtr:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final recordClick()V
    .registers 2

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzbof:Z

    return-void
.end method

.method public final zzbo(Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zza;->zzjy()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, ""

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    .line 17
    :goto_d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzbog:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 18
    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzawl;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    .line 20
    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzboh:Lcom/google/android/gms/internal/ads/zzasr;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzasr;->zzdtr:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzboh:Lcom/google/android/gms/internal/ads/zzasr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasr;->zzdts:Ljava/util/List;

    if-eqz v1, :cond_50

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzboh:Lcom/google/android/gms/internal/ads/zzasr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasr;->zzdts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 23
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{NAVIGATION_URL}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzvr:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzayu;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_50
    return-void
.end method

.method public final zzjz()Z
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zza;->zzjy()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzbof:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method
