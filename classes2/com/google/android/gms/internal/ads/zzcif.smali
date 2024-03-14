.class public final Lcom/google/android/gms/internal/ads/zzcif;
.super Lcom/google/android/gms/internal/ads/zzaez;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzaai:Landroid/content/Context;

.field private final zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

.field private zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

.field private zzgee:Lcom/google/android/gms/internal/ads/zzcfe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzcfe;Lcom/google/android/gms/internal/ads/zzcdx;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaez;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzaai:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgee:Lcom/google/android/gms/internal/ads/zzcfe;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcif;)Lcom/google/android/gms/internal/ads/zzcdx;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V

    :cond_7
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgee:Lcom/google/android/gms/internal/ads/zzcfe;

    return-void
.end method

.method public final getAvailableAssetNames()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzami()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcei;->zzamk()Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    :goto_1a
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v6

    if-ge v4, v6, :cond_2d

    .line 14
    invoke-virtual {v0, v4}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 16
    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    if-ge v3, v0, :cond_40

    .line 17
    invoke-virtual {v1, v3}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 19
    :cond_40
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    return-object v0
.end method

.method public final performClick(Ljava/lang/String;)V
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zzfz(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final recordImpression()V
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzalp()V

    :cond_7
    return-void
.end method

.method public final zzcx(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamk()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final zzcy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaee;
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzami()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaee;

    return-object p1
.end method

.method public final zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .registers 5

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 35
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgee:Lcom/google/android/gms/internal/ads/zzcfe;

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    check-cast p1, Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfe;->zza(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    if-nez p1, :cond_1d

    return v1

    .line 41
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcei;->zzamf()Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcii;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcii;-><init>(Lcom/google/android/gms/internal/ads/zzcif;)V

    .line 43
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzads;)V

    return v2
.end method

.method public final zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 62
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_9

    return-void

    .line 64
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 66
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_1b

    .line 67
    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;->zzaa(Landroid/view/View;)V

    :cond_1b
    return-void
.end method

.method public final zzsk()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzsp()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzaai:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzsq()Z
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzalw()Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 48
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamg()Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    if-nez v0, :cond_15

    return v1

    .line 51
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamf()Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    if-eqz v0, :cond_1e

    return v1

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public final zzsr()Z
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlg()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqv;->zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    const/4 v0, 0x1

    return v0

    :cond_11
    const-string v0, "Trying to start OMID session before creation."

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzss()V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzfxu:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcei;->zzamj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "Illegal argument specified for omid partner name."

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v1, :cond_1c

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcdx;->zzi(Ljava/lang/String;Z)V

    :cond_1c
    return-void
.end method
