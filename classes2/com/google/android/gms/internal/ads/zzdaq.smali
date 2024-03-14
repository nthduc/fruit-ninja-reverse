.class public final Lcom/google/android/gms/internal/ads/zzdaq;
.super Lcom/google/android/gms/internal/ads/zzaxk;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final zzguf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgug:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzguh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgui:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzfna:Lcom/google/android/gms/internal/ads/zzeg;

.field private zzfye:Landroid/graphics/Point;

.field private zzfyf:Landroid/graphics/Point;

.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private zzgpl:Lcom/google/android/gms/internal/ads/zzdoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoz<",
            "Lcom/google/android/gms/internal/ads/zzcil;",
            ">;"
        }
    .end annotation
.end field

.field private zzguj:Lcom/google/android/gms/internal/ads/zzbix;

.field private zzguk:Lcom/google/android/gms/internal/ads/zzasa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzvr:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "/aclk"

    const-string v2, "/pcs/click"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguf:Ljava/util/List;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".googleadservices.com"

    const-string v2, ".doubleclick.net"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgug:Ljava/util/List;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "/pagead/adview"

    const-string v4, "/pcs/view"

    const-string v5, "/pagead/conversion"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguh:Ljava/util/List;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, ".googlesyndication.com"

    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgui:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbix;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzdoz;Lcom/google/android/gms/internal/ads/zzdzb;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbix;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzeg;",
            "Lcom/google/android/gms/internal/ads/zzbbx;",
            "Lcom/google/android/gms/internal/ads/zzdoz<",
            "Lcom/google/android/gms/internal/ads/zzcil;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaxk;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfye:Landroid/graphics/Point;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfyf:Landroid/graphics/Point;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguj:Lcom/google/android/gms/internal/ads/zzbix;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzvr:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfna:Lcom/google/android/gms/internal/ads/zzeg;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgpl:Lcom/google/android/gms/internal/ads/zzdoz;

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private final zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/net/Uri;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfna:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzvr:Landroid/content/Context;

    .line 107
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzef; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p2

    const-string v0, ""

    .line 111
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzbbq;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    const-string p2, "ms"

    .line 112
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1f

    return-object p1

    .line 113
    :cond_1f
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to append spam signals to click url."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6

    .line 142
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&adurl="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    const-string v1, "?adurl="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_13
    if-eq v1, v2, :cond_41

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 156
    :cond_41
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdaq;)Lcom/google/android/gms/internal/ads/zzbbx;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    return-object p0
.end method

.method static final synthetic zza(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 186
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zza(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 195
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdaq;->zzk(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_2c

    :cond_22
    const-string v2, "nas"

    .line 197
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 196
    :cond_2c
    :goto_2c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_30
    return-object v0
.end method

.method private static zza(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    if-nez p0, :cond_e

    goto :goto_3c

    .line 119
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 121
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_3c
    :goto_3c
    return v1
.end method

.method private final zzarf()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasa;->zzdqc:Ljava/util/Map;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasa;->zzdqc:Ljava/util/Map;

    .line 160
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzc(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "nas"

    .line 191
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method private final zzgr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 128
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzcil;

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgpl:Lcom/google/android/gms/internal/ads/zzdoz;

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdoz;->zzatt()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdax;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdax;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;[Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 131
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 132
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdba;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdba;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;[Lcom/google/android/gms/internal/ads/zzcil;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 134
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyl;->zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxq:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 136
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfmv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 138
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdav;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 139
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    const-class v0, Ljava/lang/Exception;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzday;->zzdwz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 140
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyl;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;

    move-result-object p1

    return-object p1
.end method

.method private static zzk(Landroid/net/Uri;)Z
    .registers 3
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 104
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguh:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdaq;->zzgui:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static final synthetic zzp(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    const-string v0, "nas"

    .line 188
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final synthetic zza([Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcil;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    aput-object p3, p1, v0

    .line 168
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzvr:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasa;->zzdqc:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasa;->zzdqc:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzasa;->zzaat:Landroid/view/View;

    .line 169
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzvr:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasa;->zzaat:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasa;->zzaat:Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbau;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzvr:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasa;->zzaat:Landroid/view/View;

    .line 173
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzbau;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 174
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "asset_view_signal"

    .line 175
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ad_view_signal"

    .line 176
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 177
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 178
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    if-ne p2, p1, :cond_5e

    const/4 p1, 0x0

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzvr:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfyf:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfye:Landroid/graphics/Point;

    .line 181
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "click_signal"

    .line 182
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_5e
    invoke-virtual {p3, p2, v3}, Lcom/google/android/gms/internal/ads/zzcil;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfna:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzca()Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfna:Lcom/google/android/gms/internal/ads/zzeg;

    .line 215
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzca()Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzvr:Landroid/content/Context;

    .line 216
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdw;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1e

    :cond_1c
    const-string p2, ""

    .line 217
    :goto_1e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 221
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdaq;->zzk(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 222
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Not a Google URL: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_65
    const-string v2, "ms"

    .line 224
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 226
    :cond_6f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_76

    return-object v0

    .line 227
    :cond_76
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Empty impression URLs result."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_7e
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to get view signals."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaxr;Lcom/google/android/gms/internal/ads/zzaxg;)V
    .registers 9

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzvr:Landroid/content/Context;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzvr:Landroid/content/Context;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaxr;->zzbuu:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaxr;->zzbrb:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzaxr;->zzdye:Lcom/google/android/gms/internal/ads/zzvn;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaxr;->zzdyf:Lcom/google/android/gms/internal/ads/zzvg;

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguj:Lcom/google/android/gms/internal/ads/zzbix;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbix;->zzadx()Lcom/google/android/gms/internal/ads/zzdan;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbtp$zza;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbtp$zza;-><init>()V

    .line 17
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzce(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object p1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdom;-><init>()V

    if-nez v0, :cond_2a

    const-string v0, "adUnitId"

    .line 18
    :cond_2a
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzdom;->zzgt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdom;

    move-result-object v0

    if-nez p2, :cond_39

    .line 20
    new-instance p2, Lcom/google/android/gms/internal/ads/zzvj;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzvj;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzvj;->zzpj()Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p2

    .line 22
    :cond_39
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdom;->zzh(Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzdom;

    move-result-object p2

    if-nez v2, :cond_44

    .line 23
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzvn;-><init>()V

    :cond_44
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzdom;->zze(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzdom;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdom;->zzatn()Lcom/google/android/gms/internal/ads/zzdok;

    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zza(Lcom/google/android/gms/internal/ads/zzdok;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzajv()Lcom/google/android/gms/internal/ads/zzbtp;

    move-result-object p1

    .line 27
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzg(Lcom/google/android/gms/internal/ads/zzbtp;)Lcom/google/android/gms/internal/ads/zzdan;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdbd$zza;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdbd$zza;-><init>()V

    .line 28
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzdbd$zza;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdbd$zza;

    move-result-object p2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbd;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzdbd;-><init>(Lcom/google/android/gms/internal/ads/zzdbd$zza;Lcom/google/android/gms/internal/ads/zzdbf;)V

    .line 30
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdan;->zza(Lcom/google/android/gms/internal/ads/zzdbd;)Lcom/google/android/gms/internal/ads/zzdan;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbys$zza;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbys$zza;-><init>()V

    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbys$zza;->zzakr()Lcom/google/android/gms/internal/ads/zzbys;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdan;->zzg(Lcom/google/android/gms/internal/ads/zzbys;)Lcom/google/android/gms/internal/ads/zzdan;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdan;->zzagt()Lcom/google/android/gms/internal/ads/zzdao;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdao;->zzags()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdaz;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzdaz;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;Lcom/google/android/gms/internal/ads/zzaxg;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguj:Lcom/google/android/gms/internal/ads/zzbix;

    .line 35
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 36
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasa;)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgpl:Lcom/google/android/gms/internal/ads/zzdoz;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdoz;->zzed(I)V

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzart;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzart;",
            ")V"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    :try_start_12
    const-string p1, "The updating URL feature is not enabled."

    .line 60
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzart;->onError(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    const-string p2, ""

    .line 63
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 65
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdap;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdap;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 66
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzarf()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 68
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdas;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzdas;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 69
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    goto :goto_41

    :cond_3c
    const-string p2, "Asset view map is empty."

    .line 70
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    .line 71
    :goto_41
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzdbc;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;Lcom/google/android/gms/internal/ads/zzart;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguj:Lcom/google/android/gms/internal/ads/zzbix;

    .line 72
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 73
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zza([Lcom/google/android/gms/internal/ads/zzcil;)V
    .registers 4

    const/4 v0, 0x0

    .line 162
    aget-object v1, p1, v0

    if-eqz v1, :cond_10

    .line 163
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgpl:Lcom/google/android/gms/internal/ads/zzdoz;

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdoz;->zzd(Lcom/google/android/gms/internal/ads/zzdzc;)V

    :cond_10
    return-void
.end method

.method public final zzan(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 42
    :cond_13
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguk:Lcom/google/android/gms/internal/ads/zzasa;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_21

    :cond_1f
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasa;->zzaat:Landroid/view/View;

    :goto_21
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfye:Landroid/graphics/Point;

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_31

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfye:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfyf:Landroid/graphics/Point;

    .line 47
    :cond_31
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfye:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfye:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzfna:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/view/MotionEvent;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final zzao(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zzb(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/net/Uri;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    .line 208
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzgr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdat;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdat;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 209
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzart;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzart;",
            ")V"
        }
    .end annotation

    .line 75
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcxp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_18

    const-string p1, "The updating URL feature is not enabled."

    .line 78
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzart;->onError(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const-string p1, "There should be only 1 click URL."

    .line 81
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzart;->onError(Ljava/lang/String;)V

    return-void

    :cond_25
    const/4 v0, 0x0

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdaq;->zzguf:Ljava/util/List;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdaq;->zzgug:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 87
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Not a Google URL: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 88
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzart;->onSuccess(Ljava/util/List;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5b} :catch_8d

    return-void

    .line 94
    :cond_5c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdar;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdar;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;Landroid/net/Uri;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 95
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzarf()Z

    move-result p2

    if-eqz p2, :cond_79

    .line 97
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdau;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzdau;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 98
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    goto :goto_7e

    :cond_79
    const-string p2, "Asset view map is empty."

    .line 99
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    .line 100
    :goto_7e
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdbb;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzdbb;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;Lcom/google/android/gms/internal/ads/zzart;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzguj:Lcom/google/android/gms/internal/ads/zzbix;

    .line 101
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbix;->zzadi()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 102
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_8d
    move-exception p1

    const-string p2, ""

    .line 92
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic zzl(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    .line 202
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzgr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdaw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdaw;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 203
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
