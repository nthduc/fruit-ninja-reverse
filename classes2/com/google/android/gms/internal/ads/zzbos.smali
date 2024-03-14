.class final Lcom/google/android/gms/internal/ads/zzbos;
.super Lcom/google/android/gms/internal/ads/zzboq;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

.field private final zzfqb:Lcom/google/android/gms/internal/ads/zzbql;

.field private final zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

.field private final zzfqd:Lcom/google/android/gms/internal/ads/zzcaf;

.field private final zzfqe:Lcom/google/android/gms/internal/ads/zzeos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzczf;",
            ">;"
        }
    .end annotation
.end field

.field private zzfqf:Lcom/google/android/gms/internal/ads/zzvn;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqn;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdnu;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbql;Lcom/google/android/gms/internal/ads/zzcep;Lcom/google/android/gms/internal/ads/zzcaf;Lcom/google/android/gms/internal/ads/zzeos;Ljava/util/concurrent/Executor;)V
    .registers 11
    .param p5    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbqn;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzdnu;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            "Lcom/google/android/gms/internal/ads/zzbql;",
            "Lcom/google/android/gms/internal/ads/zzcep;",
            "Lcom/google/android/gms/internal/ads/zzcaf;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzczf;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzboq;-><init>(Lcom/google/android/gms/internal/ads/zzbqn;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbos;->view:Landroid/view/View;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqb:Lcom/google/android/gms/internal/ads/zzbql;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqd:Lcom/google/android/gms/internal/ads/zzcaf;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqe:Lcom/google/android/gms/internal/ads/zzeos;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfoc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqb:Lcom/google/android/gms/internal/ads/zzbql;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbql;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzdos; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvn;)V
    .registers 5

    if-eqz p1, :cond_19

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-eqz v0, :cond_19

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbhy;->zzb(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzbhy;)V

    .line 15
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvn;->heightPixels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 16
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvn;->widthPixels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqf:Lcom/google/android/gms/internal/ads/zzvn;

    :cond_19
    return-void
.end method

.method public final zzahw()Lcom/google/android/gms/internal/ads/zzdnu;
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqf:Lcom/google/android/gms/internal/ads/zzvn;

    if-eqz v0, :cond_9

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdoq;->zzf(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzdnu;

    move-result-object v0

    return-object v0

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhee:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v3, "FirstParty"

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-nez v0, :cond_45

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbos;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbos;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdnu;-><init>(IIZ)V

    return-object v0

    .line 32
    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdq:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoq;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdnu;)Lcom/google/android/gms/internal/ads/zzdnu;

    move-result-object v0

    return-object v0
.end method

.method public final zzahx()Landroid/view/View;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzaif()Lcom/google/android/gms/internal/ads/zzdnu;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

    return-object v0
.end method

.method public final zzaig()I
    .registers 3

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxu:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhei:Z

    if-eqz v0, :cond_2c

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxv:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    return v0

    .line 41
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfmw:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnw;->zzhel:I

    return v0
.end method

.method public final zzaih()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfoc:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbor;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbor;-><init>(Lcom/google/android/gms/internal/ads/zzbos;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzboq;->zzaih()V

    return-void
.end method

.method final synthetic zzaii()V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->zzams()Lcom/google/android/gms/internal/ads/zzafs;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 49
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqc:Lcom/google/android/gms/internal/ads/zzcep;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcep;->zzams()Lcom/google/android/gms/internal/ads/zzafs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqe:Lcom/google/android/gms/internal/ads/zzeos;

    .line 51
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzxc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzvr:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 54
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_26
    return-void
.end method

.method public final zzkf()V
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbos;->zzfqd:Lcom/google/android/gms/internal/ads/zzcaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcaf;->zzakv()V

    return-void
.end method
