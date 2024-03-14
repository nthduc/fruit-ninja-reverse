.class public final Lcom/google/android/gms/internal/ads/zzcfm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzfyt:Lcom/google/android/gms/internal/ads/zzceq;

.field private final zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

.field private final zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

.field private final zzgby:Lcom/google/android/gms/internal/ads/zzbnd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjt;Lcom/google/android/gms/internal/ads/zzcil;Lcom/google/android/gms/internal/ads/zzbnd;Lcom/google/android/gms/internal/ads/zzceq;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgby:Lcom/google/android/gms/internal/ads/zzbnd;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzfyt:Lcom/google/android/gms/internal/ads/zzceq;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 3

    const-string p2, "Hiding native ads overlay."

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgby:Lcom/google/android/gms/internal/ads/zzbnd;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbnd;->zzbf(Z)V

    return-void
.end method

.method final synthetic zza(Ljava/util/Map;Z)V
    .registers 5

    .line 23
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    .line 24
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzanl()Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbgv;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvn;->zzpk()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjt;->zzc(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcfl;-><init>(Lcom/google/android/gms/internal/ads/zzcfm;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>(Lcom/google/android/gms/internal/ads/zzcfm;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfn;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcfn;-><init>(Lcom/google/android/gms/internal/ads/zzcfm;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcfq;-><init>(Lcom/google/android/gms/internal/ads/zzcfm;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcfp;-><init>(Lcom/google/android/gms/internal/ads/zzcfm;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 3

    const-string p2, "Showing native ads overlay."

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgby:Lcom/google/android/gms/internal/ads/zzbnd;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbnd;->zzbf(Z)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 3

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzfyt:Lcom/google/android/gms/internal/ads/zzceq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzceq;->zzalq()V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 4

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
