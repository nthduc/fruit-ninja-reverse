.class public final Lcom/google/android/gms/internal/ads/zzbdh;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdc;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

.field private final zzegi:Landroid/widget/FrameLayout;

.field private final zzegj:Lcom/google/android/gms/internal/ads/zzabs;

.field private final zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

.field private final zzegl:J

.field private zzegm:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzegn:Z

.field private zzego:Z

.field private zzegp:Z

.field private zzegq:Z

.field private zzegr:J

.field private zzegs:J

.field private zzegt:Ljava/lang/String;

.field private zzegu:[Ljava/lang/String;

.field private zzegv:Landroid/graphics/Bitmap;

.field private zzegw:Landroid/widget/ImageView;

.field private zzegx:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdu;IZLcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzbdv;)V
    .registers 17

    move-object v0, p0

    move-object v8, p1

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v3, p2

    .line 16
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    move-object v6, p5

    .line 17
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegj:Lcom/google/android/gms/internal/ads/zzabs;

    .line 18
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegi:Landroid/widget/FrameLayout;

    .line 19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegi:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzv()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzv()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzb;->zzboj:Lcom/google/android/gms/internal/ads/zzbde;

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    .line 23
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbde;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdu;IZLcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzbdv;)Lcom/google/android/gms/internal/ads/zzbdf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-eqz v1, :cond_5a

    .line 25
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegi:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v9, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmo:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzzj()V

    .line 30
    :cond_5a
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegw:Landroid/widget/ImageView;

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcms:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegl:J

    .line 34
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmq:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegq:Z

    .line 37
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegj:Lcom/google/android/gms/internal/ads/zzabs;

    if-eqz v1, :cond_97

    .line 39
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegq:Z

    if-eqz v2, :cond_90

    const-string v2, "1"

    goto :goto_92

    :cond_90
    const-string v2, "0"

    :goto_92
    const-string v3, "spinner_used"

    .line 40
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_97
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdw;-><init>(Lcom/google/android/gms/internal/ads/zzbdh;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

    .line 42
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-eqz v1, :cond_a5

    .line 43
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdf;->zza(Lcom/google/android/gms/internal/ads/zzbdc;)V

    .line 44
    :cond_a5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v1, :cond_b0

    const-string v1, "AdVideoUnderlay Error"

    const-string v2, "Allocating player failed."

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdh;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdh;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdh;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbdu;Ljava/lang/String;)V
    .registers 5

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    .line 11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    .line 12
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    .line 13
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbdu;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbdu;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mimeTypes"

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    .line 8
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbdu;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "no_video_view"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    .line 3
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final varargs zzd(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    .line 240
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_e
    if-ge v2, p1, :cond_1d

    aget-object v4, p2, v2

    if-nez v3, :cond_16

    move-object v3, v4

    goto :goto_1a

    .line 245
    :cond_16
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 248
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    const-string p2, "onVideoEvent"

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final zzzl()Z
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private final zzzm()V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzu()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 252
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzego:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegp:Z

    if-nez v0, :cond_23

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 254
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzu()Landroid/app/Activity;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzego:Z

    :cond_23
    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdw;->pause()V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-eqz v0, :cond_c

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->stop()V

    .line 171
    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzzm()V

    return-void
.end method

.method public final finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdw;->pause()V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-eqz v0, :cond_17

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    .line 176
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zza(Lcom/google/android/gms/internal/ads/zzbdf;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1b

    .line 177
    :cond_17
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1b
    move-exception v0

    .line 179
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    throw v0
.end method

.method public final onPaused()V
    .registers 4

    const/4 v0, 0x0

    .line 149
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "pause"

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdh;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzzm()V

    .line 151
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegn:Z

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_b

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdw;->resume()V

    goto :goto_14

    .line 225
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdw;->pause()V

    .line 226
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegr:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegs:J

    .line 227
    :goto_14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(Lcom/google/android/gms/internal/ads/zzbdh;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 4

    .line 229
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_c

    .line 231
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdw;->resume()V

    const/4 p1, 0x1

    goto :goto_16

    .line 233
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdw;->pause()V

    .line 234
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegr:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegs:J

    const/4 p1, 0x0

    .line 236
    :goto_16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdk;-><init>(Lcom/google/android/gms/internal/ads/zzbdh;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final pause()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 68
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->pause()V

    return-void
.end method

.method public final play()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->play()V

    return-void
.end method

.method public final seekTo(I)V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 76
    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->seekTo(I)V

    return-void
.end method

.method public final setVolume(F)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 93
    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdf;->zzegf:Lcom/google/android/gms/internal/ads/zzbdz;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbdz;->setVolume(F)V

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->zzzb()V

    return-void
.end method

.method public final zza(FF)V
    .registers 4

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-eqz v0, :cond_7

    .line 58
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdf;->zza(FF)V

    :cond_7
    return-void
.end method

.method final synthetic zzau(Z)V
    .registers 5

    const/4 v0, 0x2

    .line 259
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hasWindowFocus"

    aput-object v2, v0, v1

    .line 260
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "windowFocusChanged"

    .line 261
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegt:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegu:[Ljava/lang/String;

    return-void
.end method

.method public final zzd(IIII)V
    .registers 6

    if-eqz p3, :cond_16

    if-nez p4, :cond_5

    goto :goto_16

    .line 49
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    .line 50
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegi:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdh;->requestLayout()V

    :cond_16
    :goto_16
    return-void
.end method

.method public final zzdl(I)V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->zzdl(I)V

    return-void
.end method

.method public final zzdm(I)V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->zzdm(I)V

    return-void
.end method

.method public final zzdn(I)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->zzdn(I)V

    return-void
.end method

.method public final zzdo(I)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->zzdo(I)V

    return-void
.end method

.method public final zzdp(I)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->zzdp(I)V

    return-void
.end method

.method public final zze(Landroid/view/MotionEvent;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 108
    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zzfb()V
    .registers 7

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 125
    :cond_5
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_4d

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 127
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdf;->getVideoWidth()I

    move-result v1

    .line 128
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdf;->getVideoHeight()I

    move-result v2

    const/4 v3, 0x6

    .line 129
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 130
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "videoWidth"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    .line 131
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "videoHeight"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    .line 132
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "canplaythrough"

    .line 133
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzbdh;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method public final zzhy()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegt:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegu:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdf;->zzb(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 v0, 0x0

    .line 64
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_src"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzk(II)V
    .registers 6

    .line 211
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegq:Z

    if-eqz v0, :cond_4c

    .line 212
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcmr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 213
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 215
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 216
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegv:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegv:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_4c

    .line 219
    :cond_41
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegv:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegx:Z

    :cond_4c
    return-void
.end method

.method public final zzm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    .line 156
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "what"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "extra"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "error"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzzc()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdw;->resume()V

    .line 121
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdi;-><init>(Lcom/google/android/gms/internal/ads/zzbdh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzzd()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzu()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    .line 137
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzego:Z

    if-nez v0, :cond_3a

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 139
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzu()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 140
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegp:Z

    .line 141
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegp:Z

    if-nez v0, :cond_3a

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegh:Lcom/google/android/gms/internal/ads/zzbdu;

    .line 143
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdu;->zzzu()Landroid/app/Activity;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 146
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzego:Z

    .line 147
    :cond_3a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegn:Z

    return-void
.end method

.method public final zzze()V
    .registers 3

    const/4 v0, 0x0

    .line 153
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ended"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzzm()V

    return-void
.end method

.method public final zzzf()V
    .registers 5

    .line 159
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegx:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegv:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzzl()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegw:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegv:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegi:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegw:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegi:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegw:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 164
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegk:Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdw;->pause()V

    .line 165
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegr:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegs:J

    .line 166
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Lcom/google/android/gms/internal/ads/zzbdh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzzg()V
    .registers 6

    .line 189
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegn:Z

    if-eqz v0, :cond_11

    .line 191
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdh;->zzzl()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegi:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegw:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 194
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegv:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_72

    .line 195
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegv:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbdf;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    .line 197
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegx:Z

    .line 198
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 199
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayp;->zzxa()Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v0, 0x2e

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Spinner frame grab took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 201
    :cond_54
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegl:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_72

    const-string v0, "Spinner frame grab crossed jank threshold! Suspending spinner."

    .line 202
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegq:Z

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegv:Landroid/graphics/Bitmap;

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegj:Lcom/google/android/gms/internal/ads/zzabs;

    if-eqz v0, :cond_72

    .line 207
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinner_jank"

    .line 208
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    return-void
.end method

.method public final zzzh()V
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 81
    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdf;->zzegf:Lcom/google/android/gms/internal/ads/zzbdz;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbdz;->setMuted(Z)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->zzzb()V

    return-void
.end method

.method public final zzzi()V
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 87
    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdf;->zzegf:Lcom/google/android/gms/internal/ads/zzbdz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbdz;->setMuted(Z)V

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->zzzb()V

    return-void
.end method

.method public final zzzj()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 112
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "AdMob - "

    .line 114
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_25
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    .line 115
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegi:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegi:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method final zzzk()V
    .registers 7

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegm:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_5

    return-void

    .line 183
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdf;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 184
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegr:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_30

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_30

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/4 v3, 0x2

    .line 186
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "timeupdate"

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbdh;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbdh;->zzegr:J

    :cond_30
    return-void
.end method
