.class public Lcom/google/android/gms/internal/ads/zzbgi;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhv;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbrf:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzcgv:Lcom/google/android/gms/internal/ads/zzux;

.field private zzdep:Lcom/google/android/gms/internal/ads/zzagt;

.field private zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

.field private zzdfm:Lcom/google/android/gms/ads/internal/zza;

.field private zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

.field private zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field private zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

.field private zzdtp:Z

.field protected zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzemr:Lcom/google/android/gms/internal/ads/zzts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

.field private zzemu:Lcom/google/android/gms/internal/ads/zzbhx;

.field private zzemv:Lcom/google/android/gms/internal/ads/zzbhw;

.field private zzemw:Z

.field private zzemx:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzemy:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzemz:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzena:Lcom/google/android/gms/internal/ads/zzaqo;

.field protected zzenb:Lcom/google/android/gms/internal/ads/zzawl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzenc:Z

.field private zzend:Z

.field private zzene:I

.field private zzenf:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzts;Z)V
    .registers 10

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaqo;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabr()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaam;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaam;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqo;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaam;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbgi;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzts;ZLcom/google/android/gms/internal/ads/zzaqo;Lcom/google/android/gms/internal/ads/zzaqd;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzts;ZLcom/google/android/gms/internal/ads/zzaqo;Lcom/google/android/gms/internal/ads/zzaqd;)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 7
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzems:Ljava/util/HashMap;

    .line 8
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    const/4 p5, 0x0

    .line 9
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemw:Z

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemr:Lcom/google/android/gms/internal/ads/zzts;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 12
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzbrf:Z

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzena:Lcom/google/android/gms/internal/ads/zzaqo;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V
    .registers 6

    .line 98
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzawl;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-lez p3, :cond_1d

    .line 99
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzawl;->zzl(Landroid/view/View;)V

    .line 100
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzawl;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgn;-><init>(Lcom/google/android/gms/internal/ads/zzbgi;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdvo;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzuo()Z

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 175
    :goto_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v0, :cond_2f

    .line 177
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 178
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpl:Lcom/google/android/gms/ads/internal/overlay/zzb;

    if-eqz v1, :cond_2a

    .line 179
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpl:Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzb;->url:Ljava/lang/String;

    .line 180
    :cond_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzawl;->zzea(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbgi;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V
    .registers 4

    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbgi;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 387
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 370
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "Received GMSG: "

    .line 371
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1d

    :cond_18
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 372
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_28
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    goto :goto_28

    .line 375
    :cond_6a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_80

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzahq;

    .line 376
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_6e

    :cond_80
    return-void
.end method

.method private final zzabh()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenf:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_5

    return-void

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenf:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final zzabm()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    if-eqz v0, :cond_1c

    .line 136
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenc:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzene:I

    if-lez v0, :cond_10

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzend:Z

    if-eqz v0, :cond_1c

    .line 137
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzend:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhu;->zzai(Z)V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    .line 139
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacg()V

    return-void
.end method

.method private static zzabn()Landroid/webkit/WebResourceResponse;
    .registers 3

    .line 289
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcob:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 290
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 292
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zze(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_8
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x14

    if-gt v0, v2, :cond_fe

    .line 297
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v3, 0x2710

    .line 298
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 299
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 300
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 303
    :cond_3e
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_f6

    .line 305
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 306
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 307
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    .line 308
    invoke-virtual {v3, v4, v5, p1, v2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 309
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbbk;-><init>()V

    const/4 v4, 0x0

    .line 310
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 311
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 312
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v3, 0x12c

    if-lt v5, v3, :cond_ee

    const/16 v3, 0x190

    if-ge v5, v3, :cond_ee

    const-string v3, "Location"

    .line 314
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e6

    const-string v5, "tel:"

    .line 317
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_82

    return-object v4

    .line 319
    :cond_82
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_97

    const-string p1, "Protocol is null"

    .line 322
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabn()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_97
    const-string v5, "http"

    .line 324
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c6

    const-string v5, "https"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c6

    const-string p1, "Unsupported scheme: "

    .line 325
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_be

    :cond_b8
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_be
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabn()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_c6
    const-string v1, "Redirecting to "

    .line 327
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_d7

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_dd

    :cond_d7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_dd
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v4

    goto/16 :goto_8

    .line 316
    :cond_e6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_ee
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 304
    :cond_f6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_fe
    new-instance p1, Ljava/io/IOException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Too many redirects (20)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 232
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 233
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 235
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgi;->zzh(Landroid/net/Uri;)V

    :cond_38
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 85
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 86
    :try_start_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbgj;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_17

    const-string p2, "Blank page loaded, 1..."

    .line 87
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacc()V

    .line 89
    monitor-exit p1

    return-void

    .line 90
    :cond_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_29

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenc:Z

    .line 93
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemu:Lcom/google/android/gms/internal/ads/zzbhx;

    if-eqz p1, :cond_25

    .line 94
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhx;->zztj()V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemu:Lcom/google/android/gms/internal/ads/zzbhx;

    .line 96
    :cond_25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabm()V

    return-void

    :catchall_29
    move-exception p2

    .line 90
    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p2
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacm()Lcom/google/android/gms/internal/ads/zzsu;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 81
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsu;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_11

    .line 82
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsu;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 83
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 385
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbgj;->zzc(ZI)Z

    move-result p1

    return p1
.end method

.method public final reset()V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 207
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzawl;->zzvt()V

    .line 208
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    .line 209
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabh()V

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 212
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    .line 213
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 214
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    .line 215
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemu:Lcom/google/android/gms/internal/ads/zzbhx;

    .line 216
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    .line 217
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    const/4 v2, 0x0

    .line 218
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemw:Z

    .line 219
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzbrf:Z

    .line 220
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemx:Z

    .line 221
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemz:Z

    .line 222
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 223
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemv:Lcom/google/android/gms/internal/ads/zzbhw;

    .line 224
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    if-eqz v2, :cond_3a

    .line 225
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaqd;->zzac(Z)V

    .line 226
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 227
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_10 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbgi;->zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 3

    .line 345
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_14

    const/16 p2, 0xde

    if-eq p1, p2, :cond_14

    packed-switch p1, :pswitch_data_16

    packed-switch p1, :pswitch_data_28

    const/4 p1, 0x0

    return p1

    :cond_14
    :pswitch_14
    const/4 p1, 0x1

    return p1

    :pswitch_data_16
    .packed-switch 0x55
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x7e
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 14

    .line 238
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 239
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    .line 241
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 242
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzh(Landroid/net/Uri;)V

    goto/16 :goto_104

    .line 243
    :cond_3b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemw:Z

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_77

    .line 244
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    .line 245
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5e

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v1, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v1, 0x1

    :goto_5f
    if-eqz v1, :cond_77

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    if-eqz v0, :cond_72

    .line 248
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzux;->onAdClicked()V

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v0, :cond_6f

    .line 250
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzawl;->zzea(Ljava/lang/String;)V

    :cond_6f
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    .line 252
    :cond_72
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 253
    :cond_77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_ea

    .line 254
    :try_start_83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabz()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object p1

    if-eqz p1, :cond_c4

    .line 255
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzb(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 256
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 257
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 258
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 259
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzu()Landroid/app/Activity;

    move-result-object v4

    .line 260
    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_a7
    .catch Lcom/google/android/gms/internal/ads/zzef; {:try_start_83 .. :try_end_a7} :catch_a9

    move-object v0, p1

    goto :goto_c4

    :catch_a9
    nop

    const-string p1, "Unable to append parameter to URL: "

    .line 263
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_bb

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c1

    :cond_bb
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_c1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 264
    :cond_c4
    :goto_c4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    if-eqz p1, :cond_d5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zza;->zzjz()Z

    move-result p1

    if-eqz p1, :cond_cf

    goto :goto_d5

    .line 268
    :cond_cf
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zza;->zzbo(Ljava/lang/String;)V

    goto :goto_104

    .line 265
    :cond_d5
    :goto_d5
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 266
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "android.intent.action.VIEW"

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    goto :goto_104

    :cond_ea
    const-string p1, "AdWebView unable to handle URL: "

    .line 269
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_fb

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_101

    :cond_fb
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_101
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    :goto_104
    return v2
.end method

.method public final zza(IIZ)V
    .registers 5

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzena:Lcom/google/android/gms/internal/ads/zzaqo;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqo;->zzj(II)V

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    if-eqz p3, :cond_d

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zza(IIZ)V

    :cond_d
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .registers 10

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result v0

    .line 142
    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 143
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v2

    if-nez v2, :cond_19

    move-object v3, v1

    goto :goto_1c

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    move-object v3, v2

    :goto_1c
    if-eqz v0, :cond_20

    move-object v4, v1

    goto :goto_23

    .line 144
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    move-object v4, v0

    :goto_23
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 145
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 146
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbhu;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbhx;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemu:Lcom/google/android/gms/internal/ads/zzbhx;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;ZLcom/google/android/gms/internal/ads/zzahp;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqq;Lcom/google/android/gms/internal/ads/zzawl;)V
    .registers 12
    .param p7    # Lcom/google/android/gms/internal/ads/zzahp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/google/android/gms/internal/ads/zzawl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p8, :cond_e

    .line 21
    new-instance p8, Lcom/google/android/gms/ads/internal/zza;

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p7}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object p7

    const/4 v0, 0x0

    invoke-direct {p8, p7, p10, v0}, Lcom/google/android/gms/ads/internal/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawl;Lcom/google/android/gms/internal/ads/zzasr;)V

    .line 22
    :cond_e
    new-instance p7, Lcom/google/android/gms/internal/ads/zzaqd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-direct {p7, v0, p9}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzaqq;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 23
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    .line 24
    sget-object p7, Lcom/google/android/gms/internal/ads/zzabb;->zzcom:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p10

    invoke-virtual {p10, p7}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p7

    .line 26
    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_35

    .line 27
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagu;

    invoke-direct {p7, p2}, Lcom/google/android/gms/internal/ads/zzagu;-><init>(Lcom/google/android/gms/internal/ads/zzagt;)V

    const-string p10, "/adMetadata"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 28
    :cond_35
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagw;

    invoke-direct {p7, p4}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(Lcom/google/android/gms/internal/ads/zzagv;)V

    const-string p10, "/appEvent"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 29
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfb:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/backButton"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 30
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfc:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/refresh"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 31
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdes:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/canOpenApp"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 32
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzder:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/canOpenURLs"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 33
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdet:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/canOpenIntents"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 34
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdeu:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/click"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 35
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdev:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/close"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 36
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdew:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/customClose"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 37
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdff:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/instrument"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 38
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfh:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/delayPageLoaded"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 39
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfi:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/delayPageClosed"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 40
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfj:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/getLocationInfo"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 41
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdex:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/httpTrack"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 42
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdey:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/log"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 43
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahr;

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {p7, p8, p10, p9}, Lcom/google/android/gms/internal/ads/zzahr;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqd;Lcom/google/android/gms/internal/ads/zzaqq;)V

    const-string p9, "/mraid"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 44
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzena:Lcom/google/android/gms/internal/ads/zzaqo;

    const-string p9, "/mraidLoaded"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 45
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahu;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {p7, p8, p9}, Lcom/google/android/gms/internal/ads/zzahu;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqd;)V

    const-string p9, "/open"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 46
    new-instance p7, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-direct {p7}, Lcom/google/android/gms/internal/ads/zzbfq;-><init>()V

    const-string p9, "/precache"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 47
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfa:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p9, "/touch"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 48
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfd:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p9, "/video"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 49
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfe:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p9, "/videoMeta"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlp()Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object p7

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-virtual {p7, p9}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result p7

    if-eqz p7, :cond_ff

    .line 51
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahs;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 52
    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-direct {p7, p9}, Lcom/google/android/gms/internal/ads/zzahs;-><init>(Landroid/content/Context;)V

    const-string p9, "/logScionEvent"

    .line 53
    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 55
    :cond_ff
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    .line 56
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 57
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    .line 58
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    .line 59
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 60
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    .line 62
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemw:Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;>;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzems:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_f

    .line 198
    monitor-exit v0

    return-void

    .line 199
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzahq;

    .line 201
    invoke-interface {p2, v3}, Lcom/google/android/gms/common/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 202
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 204
    :cond_2e
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 205
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzems:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_17

    .line 185
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 186
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzems:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_17
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 18

    move-object v0, p0

    .line 154
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result v1

    .line 155
    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 156
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v3, v2

    goto :goto_1c

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    :goto_1c
    if-eqz v1, :cond_20

    move-object v4, v2

    goto :goto_2a

    .line 159
    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgo;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbgo;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    move-object v4, v1

    :goto_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 160
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbgj;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 161
    invoke-direct {p0, v13}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 163
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result v1

    .line 164
    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 165
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v3, v2

    goto :goto_1c

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    :goto_1c
    if-eqz v1, :cond_20

    move-object v4, v2

    goto :goto_2a

    .line 168
    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgo;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbgo;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    move-object v4, v1

    :goto_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 169
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbgj;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 170
    invoke-direct {p0, v14}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzabb()Lcom/google/android/gms/ads/internal/zza;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method public final zzabc()Z
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzbrf:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 67
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzabd()Z
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemx:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 70
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzabe()Z
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemy:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 73
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzabf()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 75
    :try_start_4
    monitor-exit v0

    return-object v1

    :catchall_6
    move-exception v1

    .line 76
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public final zzabg()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 78
    :try_start_4
    monitor-exit v0

    return-object v1

    :catchall_6
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public final zzabi()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v0, :cond_2b

    .line 109
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xa

    .line 111
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V

    return-void

    .line 113
    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabh()V

    .line 114
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgm;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbgm;-><init>(Lcom/google/android/gms/internal/ads/zzbgi;Lcom/google/android/gms/internal/ads/zzawl;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenf:Landroid/view/View$OnAttachStateChangeListener;

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenf:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2b
    return-void
.end method

.method public final zzabj()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 118
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemz:Z

    .line 119
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    .line 120
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzene:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzene:I

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabm()V

    return-void

    :catchall_10
    move-exception v1

    .line 119
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final zzabk()V
    .registers 2

    .line 123
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzene:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzene:I

    .line 124
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabm()V

    return-void
.end method

.method public final zzabl()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemr:Lcom/google/android/gms/internal/ads/zzts;

    if-eqz v0, :cond_9

    .line 127
    sget-object v1, Lcom/google/android/gms/internal/ads/zztu$zza$zzb;->zzbxv:Lcom/google/android/gms/internal/ads/zztu$zza$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zzb;)V

    :cond_9
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzend:Z

    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabm()V

    .line 130
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcvj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V

    :cond_26
    return-void
.end method

.method public final zzabo()Lcom/google/android/gms/internal/ads/zzawl;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    return-object v0
.end method

.method public final zzav(Z)V
    .registers 2

    .line 332
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemw:Z

    return-void
.end method

.method public final zzax(Z)V
    .registers 2

    .line 340
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdtp:Z

    return-void
.end method

.method public final zzay(Z)V
    .registers 3

    .line 379
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 380
    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemx:Z

    .line 381
    monitor-exit p1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final zzaz(Z)V
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemy:Z

    .line 384
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzems:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_f

    .line 192
    monitor-exit v0

    return-void

    .line 193
    :cond_f
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final zzb(ZI)V
    .registers 13

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result v0

    .line 149
    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_18

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    :goto_1a
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 151
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbgj;ZILcom/google/android/gms/internal/ads/zzbbx;)V

    .line 152
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method protected final zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-string v0, ""

    .line 272
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 273
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdtp:Z

    .line 274
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxh;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 276
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbgi;->zze(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 277
    :cond_19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzte;->zzbw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzte;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 279
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zzte;)Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 280
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzmw()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 281
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzmx()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 282
    :cond_39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbk;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacr;->zzdax:Lcom/google/android/gms/internal/ads/zzaci;

    .line 283
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgi;->zze(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_51} :catch_56
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_51} :catch_54

    return-object p1

    :cond_52
    const/4 p1, 0x0

    return-object p1

    :catch_54
    move-exception p1

    goto :goto_57

    :catch_56
    move-exception p1

    .line 287
    :goto_57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabn()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Landroid/net/Uri;)V
    .registers 6

    .line 348
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzems:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3e

    .line 351
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcvf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 352
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 353
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 354
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzj(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 355
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 357
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzi(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 358
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbgp;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgp;-><init>(Lcom/google/android/gms/internal/ads/zzbgi;Ljava/util/List;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 360
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void

    .line 362
    :cond_3e
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 363
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcxk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 364
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 365
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 366
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayb;->zzwn()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p1

    if-nez p1, :cond_7d

    goto :goto_87

    .line 368
    :cond_7d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbgk;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    :cond_87
    :goto_87
    return-void
.end method

.method public final zzi(II)V
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    if-eqz v0, :cond_7

    .line 343
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqd;->zzi(II)V

    :cond_7
    return-void
.end method

.method public final zzuu()V
    .registers 4

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgi;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 336
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzemw:Z

    const/4 v1, 0x1

    .line 337
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgi;->zzbrf:Z

    .line 338
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbgl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbgl;-><init>(Lcom/google/android/gms/internal/ads/zzbgi;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    .line 339
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v1
.end method
