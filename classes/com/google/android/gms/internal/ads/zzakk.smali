.class public final Lcom/google/android/gms/internal/ads/zzakk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajz;
.implements Lcom/google/android/gms/internal/ads/zzaki;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/ads/internal/zzb;)V
    .registers 22
    .param p3    # Lcom/google/android/gms/internal/ads/zzeg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbgv;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzks()Lcom/google/android/gms/internal/ads/zzbgr;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhy;->zzacy()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzts;->zzna()Lcom/google/android/gms/internal/ads/zzts;

    move-result-object v12

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p2

    .line 6
    invoke-static/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzbgr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzakk;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakk;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzyn()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 10
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 11
    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzakk;)Lcom/google/android/gms/internal/ads/zzbgj;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V

    return-void
.end method

.method public final isDestroyed()Z
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzakh;)V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakl;->zzb(Lcom/google/android/gms/internal/ads/zzakh;)Lcom/google/android/gms/internal/ads/zzbhx;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzbhx;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakp;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzakk;Lcom/google/android/gms/internal/ads/zzahq;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakc;->zza(Lcom/google/android/gms/internal/ads/zzajz;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakc;->zzb(Lcom/google/android/gms/internal/ads/zzajz;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalp;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakm;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(Lcom/google/android/gms/internal/ads/zzahq;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakc;->zza(Lcom/google/android/gms/internal/ads/zzajz;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzcz(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzako;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzako;-><init>(Lcom/google/android/gms/internal/ads/zzakk;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakk;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzda(Ljava/lang/String;)V
    .registers 3

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzakn;-><init>(Lcom/google/android/gms/internal/ads/zzakk;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakk;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzdb(Ljava/lang/String;)V
    .registers 3

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzakq;-><init>(Lcom/google/android/gms/internal/ads/zzakk;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakk;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzdc(Ljava/lang/String;)V
    .registers 3

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzakk;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakk;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzdh(Ljava/lang/String;)V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakk;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzdc(Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakc;->zza(Lcom/google/android/gms/internal/ads/zzajz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzth()Lcom/google/android/gms/internal/ads/zzals;
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzalr;-><init>(Lcom/google/android/gms/internal/ads/zzalp;)V

    return-object v0
.end method
