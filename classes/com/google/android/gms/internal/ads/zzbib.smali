.class public final Lcom/google/android/gms/internal/ads/zzbib;
.super Lcom/google/android/gms/internal/ads/zzbik;
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

.field private volatile zzbrf:Z

.field private zzcgv:Lcom/google/android/gms/internal/ads/zzux;

.field private zzdep:Lcom/google/android/gms/internal/ads/zzagt;

.field private zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

.field private zzdfm:Lcom/google/android/gms/ads/internal/zza;

.field private zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

.field private zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field private zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

.field private zzdtp:Z

.field protected zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

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

.field private zzena:Lcom/google/android/gms/internal/ads/zzaqo;

.field private zzenb:Lcom/google/android/gms/internal/ads/zzawl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzenc:Z

.field private zzend:Z

.field private zzene:I

.field private zzenf:Landroid/view/View$OnAttachStateChangeListener;

.field private final zzeqp:Lcom/google/android/gms/internal/ads/zzakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzakd<",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbik;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemw:Z

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzakd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V
    .registers 6

    .line 96
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzawl;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-lez p3, :cond_1d

    .line 97
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzawl;->zzl(Landroid/view/View;)V

    .line 98
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzawl;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbid;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbid;-><init>(Lcom/google/android/gms/internal/ads/zzbib;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdvo;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzuo()Z

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 167
    :goto_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v0, :cond_2f

    .line 169
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 170
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpl:Lcom/google/android/gms/ads/internal/overlay/zzb;

    if-eqz v1, :cond_2a

    .line 171
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdpl:Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzb;->url:Ljava/lang/String;

    .line 172
    :cond_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzawl;->zzea(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbib;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V
    .registers 4

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V

    return-void
.end method

.method private final zzabh()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenf:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_5

    return-void

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenf:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final zzabm()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    if-eqz v0, :cond_1c

    .line 128
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenc:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzene:I

    if-lez v0, :cond_10

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzend:Z

    if-eqz v0, :cond_1c

    .line 129
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzend:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhu;->zzai(Z)V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    .line 131
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacg()V

    return-void
.end method

.method private static zzabn()Landroid/webkit/WebResourceResponse;
    .registers 3

    .line 272
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcob:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 273
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 275
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

.method private final zze(Lcom/google/android/gms/internal/ads/zzbin;)Landroid/webkit/WebResourceResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    :goto_a
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x14

    if-gt v0, v3, :cond_102

    .line 280
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/16 v4, 0x2710

    .line 281
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 282
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 283
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzbin;->zzam:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 286
    :cond_42
    instance-of v4, v3, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_fa

    .line 288
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 289
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 290
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    .line 291
    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 292
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbbk;-><init>()V

    const/4 v5, 0x0

    .line 293
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 294
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 295
    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v4, 0x12c

    if-lt v6, v4, :cond_f2

    const/16 v4, 0x190

    if-ge v6, v4, :cond_f2

    const-string v4, "Location"

    .line 297
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ea

    const-string v6, "tel:"

    .line 300
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_86

    return-object v5

    .line 302
    :cond_86
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9b

    const-string p1, "Protocol is null"

    .line 305
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbib;->zzabn()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_9b
    const-string v6, "http"

    .line 307
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ca

    const-string v6, "https"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ca

    const-string p1, "Unsupported scheme: "

    .line 308
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_bc

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c2

    :cond_bc
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_c2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbib;->zzabn()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_ca
    const-string v2, "Redirecting to "

    .line 310
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_db

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e1

    :cond_db
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_e1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v5

    goto/16 :goto_a

    .line 299
    :cond_ea
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing Location header in redirect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_f2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 287
    :cond_fa
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid protocol."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_102
    new-instance p1, Ljava/io/IOException;

    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Too many redirects (20)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 175
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzawl;->zzvt()V

    .line 176
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    .line 177
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbib;->zzabh()V

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakd;->reset()V

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakd;->zzg(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_1a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    .line 182
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 183
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    .line 184
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemu:Lcom/google/android/gms/internal/ads/zzbhx;

    .line 185
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    .line 186
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    .line 187
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 188
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemv:Lcom/google/android/gms/internal/ads/zzbhw;

    .line 189
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    if-eqz v2, :cond_36

    .line 190
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaqd;->zzac(Z)V

    .line 191
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 192
    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacm()Lcom/google/android/gms/internal/ads/zzsu;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 85
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsu;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_11

    .line 86
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsu;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 87
    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbik;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 336
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbgj;->zzc(ZI)Z

    move-result p1

    return p1
.end method

.method public final zza(IIZ)V
    .registers 5

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzena:Lcom/google/android/gms/internal/ads/zzaqo;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqo;->zzj(II)V

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    if-eqz p3, :cond_d

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zza(IIZ)V

    :cond_d
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .registers 10

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result v0

    .line 134
    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 135
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v2

    if-nez v2, :cond_19

    move-object v3, v1

    goto :goto_1c

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    move-object v3, v2

    :goto_1c
    if-eqz v0, :cond_20

    move-object v4, v1

    goto :goto_23

    .line 136
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    move-object v4, v0

    :goto_23
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 137
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 138
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbgj;Z)V
    .registers 7

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqo;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabr()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaam;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzaam;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqo;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaam;)V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 11
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzbrf:Z

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzena:Lcom/google/android/gms/internal/ads/zzaqo;

    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbhu;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemt:Lcom/google/android/gms/internal/ads/zzbhu;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbhx;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemu:Lcom/google/android/gms/internal/ads/zzbhx;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbin;)V
    .registers 2

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenc:Z

    .line 91
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemu:Lcom/google/android/gms/internal/ads/zzbhx;

    if-eqz p1, :cond_d

    .line 92
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhx;->zztj()V

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemu:Lcom/google/android/gms/internal/ads/zzbhx;

    .line 94
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbib;->zzabm()V

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

    .line 27
    new-instance p8, Lcom/google/android/gms/ads/internal/zza;

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p7}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object p7

    const/4 v0, 0x0

    invoke-direct {p8, p7, p10, v0}, Lcom/google/android/gms/ads/internal/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawl;Lcom/google/android/gms/internal/ads/zzasr;)V

    .line 28
    :cond_e
    new-instance p7, Lcom/google/android/gms/internal/ads/zzaqd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-direct {p7, v0, p9}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzaqq;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 29
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    .line 30
    sget-object p7, Lcom/google/android/gms/internal/ads/zzabb;->zzcom:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p10

    invoke-virtual {p10, p7}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p7

    .line 32
    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p7

    if-eqz p7, :cond_35

    .line 33
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagu;

    invoke-direct {p7, p2}, Lcom/google/android/gms/internal/ads/zzagu;-><init>(Lcom/google/android/gms/internal/ads/zzagt;)V

    const-string p10, "/adMetadata"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 34
    :cond_35
    new-instance p7, Lcom/google/android/gms/internal/ads/zzagw;

    invoke-direct {p7, p4}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(Lcom/google/android/gms/internal/ads/zzagv;)V

    const-string p10, "/appEvent"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 35
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfb:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/backButton"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 36
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfc:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/refresh"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 37
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdes:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/canOpenApp"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 38
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzder:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/canOpenURLs"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 39
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdet:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/canOpenIntents"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 40
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdeu:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/click"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 41
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdev:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/close"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 42
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdew:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/customClose"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 43
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdff:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/instrument"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 44
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfh:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/delayPageLoaded"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 45
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfi:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/delayPageClosed"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 46
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfj:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/getLocationInfo"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 47
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdex:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/httpTrack"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 48
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdey:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p10, "/log"

    invoke-virtual {p0, p10, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 49
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahr;

    iget-object p10, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {p7, p8, p10, p9}, Lcom/google/android/gms/internal/ads/zzahr;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqd;Lcom/google/android/gms/internal/ads/zzaqq;)V

    const-string p9, "/mraid"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 50
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzena:Lcom/google/android/gms/internal/ads/zzaqo;

    const-string p9, "/mraidLoaded"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 51
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahu;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {p7, p8, p9}, Lcom/google/android/gms/internal/ads/zzahu;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqd;)V

    const-string p9, "/open"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 52
    new-instance p7, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-direct {p7}, Lcom/google/android/gms/internal/ads/zzbfq;-><init>()V

    const-string p9, "/precache"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 53
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfa:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p9, "/touch"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 54
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfd:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p9, "/video"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 55
    sget-object p7, Lcom/google/android/gms/internal/ads/zzagx;->zzdfe:Lcom/google/android/gms/internal/ads/zzahq;

    const-string p9, "/videoMeta"

    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 56
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlp()Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object p7

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-virtual {p7, p9}, Lcom/google/android/gms/internal/ads/zzawo;->zzac(Landroid/content/Context;)Z

    move-result p7

    if-eqz p7, :cond_ff

    .line 57
    new-instance p7, Lcom/google/android/gms/internal/ads/zzahs;

    iget-object p9, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 58
    invoke-interface {p9}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object p9

    invoke-direct {p7, p9}, Lcom/google/android/gms/internal/ads/zzahs;-><init>(Landroid/content/Context;)V

    const-string p9, "/logScionEvent"

    .line 59
    invoke-virtual {p0, p9, p7}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 61
    :cond_ff
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    .line 62
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 63
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    .line 64
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    .line 65
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    .line 66
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    .line 68
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemw:Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .registers 4
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

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakd;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 4
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

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 18

    move-object v0, p0

    .line 146
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result v1

    .line 147
    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 148
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v3, v2

    goto :goto_1c

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    :goto_1c
    if-eqz v1, :cond_20

    move-object v4, v2

    goto :goto_2a

    .line 151
    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbif;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbif;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    move-object v4, v1

    :goto_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 152
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbgj;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 153
    invoke-direct {p0, v13}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 155
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result v1

    .line 156
    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 157
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v3, v2

    goto :goto_1c

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    :goto_1c
    if-eqz v1, :cond_20

    move-object v4, v2

    goto :goto_2a

    .line 160
    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbif;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbif;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/ads/internal/overlay/zzp;)V

    move-object v4, v1

    :goto_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzdep:Lcom/google/android/gms/internal/ads/zzagt;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzdeq:Lcom/google/android/gms/internal/ads/zzagv;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 161
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/zzagt;Lcom/google/android/gms/internal/ads/zzagv;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbgj;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 162
    invoke-direct {p0, v14}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzabb()Lcom/google/android/gms/ads/internal/zza;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method public final zzabc()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzbrf:Z

    return v0
.end method

.method public final zzabd()Z
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemx:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 74
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzabe()Z
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemy:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzabf()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_4
    monitor-exit v0

    return-object v1

    :catchall_6
    move-exception v1

    .line 80
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public final zzabg()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 82
    :try_start_4
    monitor-exit v0

    return-object v1

    :catchall_6
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public final zzabi()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v0, :cond_2b

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 108
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xa

    .line 109
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawl;I)V

    return-void

    .line 111
    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbib;->zzabh()V

    .line 112
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbic;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbic;-><init>(Lcom/google/android/gms/internal/ads/zzbib;Lcom/google/android/gms/internal/ads/zzawl;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenf:Landroid/view/View$OnAttachStateChangeListener;

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenf:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2b
    return-void
.end method

.method public final zzabj()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 116
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemz:Z

    .line 117
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    .line 118
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzene:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzene:I

    .line 119
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbib;->zzabm()V

    return-void

    :catchall_10
    move-exception v1

    .line 117
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final zzabk()V
    .registers 2

    .line 121
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzene:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzene:I

    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbib;->zzabm()V

    return-void
.end method

.method public final zzabl()V
    .registers 2

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzend:Z

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbib;->zzabm()V

    return-void
.end method

.method public final zzabo()Lcom/google/android/gms/internal/ads/zzawl;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    return-object v0
.end method

.method public final zzav(Z)V
    .registers 2

    .line 315
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemw:Z

    return-void
.end method

.method public final zzax(Z)V
    .registers 2

    .line 323
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdtp:Z

    return-void
.end method

.method public final zzay(Z)V
    .registers 3

    .line 328
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 329
    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemx:Z

    .line 330
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

    .line 331
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemy:Z

    .line 333
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbin;)V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbin;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zzg(Landroid/net/Uri;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 4
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

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakd;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method

.method public final zzb(ZI)V
    .registers 13

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result v0

    .line 141
    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_18

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    :goto_1a
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpm:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdpq:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 143
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbgj;ZILcom/google/android/gms/internal/ads/zzbbx;)V

    .line 144
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbin;)Z
    .registers 13

    .line 199
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 200
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbin;->uri:Landroid/net/Uri;

    .line 201
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzakd;->zzg(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    return v2

    .line 203
    :cond_27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemw:Z

    if-eqz v1, :cond_5a

    .line 204
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    .line 205
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_43

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_43

    :cond_41
    const/4 v1, 0x0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v1, 0x1

    :goto_44
    if-eqz v1, :cond_5a

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    if-eqz v0, :cond_59

    .line 208
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzux;->onAdClicked()V

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v0, :cond_56

    .line 210
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzawl;->zzea(Ljava/lang/String;)V

    :cond_56
    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzcgv:Lcom/google/android/gms/internal/ads/zzux;

    :cond_59
    return v4

    .line 213
    :cond_5a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_d0

    .line 214
    :try_start_66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabz()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v1

    if-eqz v1, :cond_a8

    .line 215
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzb(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 216
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 217
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 218
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 219
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzu()Landroid/app/Activity;

    move-result-object v5

    .line 220
    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0
    :try_end_8a
    .catch Lcom/google/android/gms/internal/ads/zzef; {:try_start_66 .. :try_end_8a} :catch_8b

    goto :goto_a8

    :catch_8b
    nop

    const-string v1, "Unable to append parameter to URL: "

    .line 223
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9f

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a5

    :cond_9f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_a5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 224
    :cond_a8
    :goto_a8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    if-eqz v1, :cond_bb

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zza;->zzjz()Z

    move-result v1

    if-eqz v1, :cond_b3

    goto :goto_bb

    .line 228
    :cond_b3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zza;->zzbo(Ljava/lang/String;)V

    goto :goto_eb

    .line 225
    :cond_bb
    :goto_bb
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzb;

    .line 226
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

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbib;->zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    goto :goto_eb

    :cond_d0
    const-string v0, "AdWebView unable to handle URL: "

    .line 229
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e3

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e8

    :cond_e3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    :goto_eb
    return v2
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbin;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, ""

    .line 231
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v1, :cond_e

    .line 232
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbin;->zzam:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzawl;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    .line 234
    :cond_e
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid.js"

    .line 235
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    move-object v1, v2

    goto :goto_76

    .line 237
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbib;->zzuu()V

    .line 238
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 239
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 240
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 241
    check-cast v1, Ljava/lang/String;

    goto :goto_61

    .line 242
    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 243
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmy:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 244
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 245
    check-cast v1, Ljava/lang/String;

    goto :goto_61

    .line 246
    :cond_55
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcmx:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 247
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    check-cast v1, Ljava/lang/String;

    .line 249
    :goto_61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 250
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    .line 251
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    :goto_76
    if-eqz v1, :cond_79

    return-object v1

    .line 255
    :cond_79
    :try_start_79
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemq:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 256
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdtp:Z

    .line 257
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaxh;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbib;->zze(Lcom/google/android/gms/internal/ads/zzbin;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 260
    :cond_94
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbin;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzte;->zzbw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzte;

    move-result-object v1

    if-eqz v1, :cond_b6

    .line 262
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkx()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zzte;)Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v1

    if-eqz v1, :cond_b6

    .line 263
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzmw()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 264
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzmx()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 265
    :cond_b6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbk;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_cf

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacr;->zzdax:Lcom/google/android/gms/internal/ads/zzaci;

    .line 266
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbib;->zze(Lcom/google/android/gms/internal/ads/zzbin;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_ce} :catch_d2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_79 .. :try_end_ce} :catch_d0

    return-object p1

    :cond_cf
    return-object v2

    :catch_d0
    move-exception p1

    goto :goto_d3

    :catch_d2
    move-exception p1

    .line 270
    :goto_d3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    const-string v1, "AdWebViewClient.interceptRequest"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbib;->zzabn()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Landroid/net/Uri;)V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzeqp:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zzh(Landroid/net/Uri;)V

    return-void
.end method

.method public final zzi(II)V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    if-eqz v0, :cond_7

    .line 326
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqd;->zzi(II)V

    :cond_7
    return-void
.end method

.method public final zzuu()V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 319
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzemw:Z

    const/4 v1, 0x1

    .line 320
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzbrf:Z

    .line 321
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeet:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbia;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbia;-><init>(Lcom/google/android/gms/internal/ads/zzbib;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    .line 322
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v1
.end method
