.class public final Lcom/google/android/gms/internal/ads/zzahu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/zzbfy;",
        ":",
        "Ljava/lang/Object;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbhi;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbhl;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbhp;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbhq;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbhs;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzdfm:Lcom/google/android/gms/ads/internal/zza;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqd;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    return-void
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeg;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .registers 6
    .param p4    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-object p2

    .line 20
    :cond_3
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zzc(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 21
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzef; {:try_start_3 .. :try_end_d} :catch_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_f

    move-object p2, p0

    goto :goto_19

    :catch_f
    move-exception p0

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p1

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_19
    :cond_19
    :goto_19
    return-object p2
.end method

.method private final zzab(Z)V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzdfn:Lcom/google/android/gms/internal/ads/zzaqd;

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzac(Z)V

    :cond_7
    return-void
.end method

.method private static zzd(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "custom_close"

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zze(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    .line 6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_35

    const-string v0, "p"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 p0, 0x7

    return p0

    :cond_17
    const-string v0, "l"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 p0, 0x6

    return p0

    :cond_24
    const-string v0, "c"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazd;->zzxw()I

    move-result p0

    return p0

    :cond_35
    const/4 p0, -0x1

    return p0
.end method

.method static zzf(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    :try_start_0
    const-string v0, "aclk_ms"

    .line 28
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception v0

    const-string v1, "Error adding click uptime parameter to url: "

    .line 36
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_35
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_3b
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3e
    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 16

    .line 38
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfy;

    const-string v0, "u"

    .line 39
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbhi;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaxh;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "a"

    .line 41
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_26

    const-string p1, "Action missing from an open GMSG."

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_26
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/zza;->zzjz()Z

    move-result v4

    if-nez v4, :cond_36

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahu;->zzdfm:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zzbo(Ljava/lang/String;)V

    return-void

    :cond_36
    const-string v4, "expand"

    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5f

    .line 49
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhl;->zzacb()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string p1, "Cannot expand WebView that is already expanded."

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 52
    :cond_4e
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzahu;->zzab(Z)V

    .line 53
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhp;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzahu;->zzd(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzahu;->zze(Ljava/util/Map;)I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbhp;->zzb(ZI)V

    return-void

    :cond_5f
    const-string v4, "webapp"

    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 55
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzahu;->zzab(Z)V

    if-eqz v0, :cond_7a

    .line 57
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhp;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzahu;->zzd(Ljava/util/Map;)Z

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzahu;->zze(Ljava/util/Map;)I

    move-result p2

    invoke-interface {p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbhp;->zza(ZILjava/lang/String;)V

    return-void

    .line 58
    :cond_7a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhp;

    .line 59
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzahu;->zzd(Ljava/util/Map;)Z

    move-result v0

    .line 60
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzahu;->zze(Ljava/util/Map;)I

    move-result v1

    const-string v2, "html"

    .line 61
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "baseurl"

    .line 62
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 63
    invoke-interface {p1, v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzbhp;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_98
    const-string v4, "app"

    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ee

    const-string v4, "system_browser"

    .line 65
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 66
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzahu;->zzab(Z)V

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bf

    const-string p1, "Destination url cannot be empty."

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 71
    :cond_bf
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaht;

    .line 72
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbhi;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbhq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbhq;->zzabz()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbhs;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaht;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeg;Landroid/view/View;)V

    .line 73
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaht;->zzc(Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p2

    .line 74
    :try_start_da
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhp;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbhp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    :try_end_e4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_da .. :try_end_e4} :catch_e5

    return-void

    :catch_e5
    move-exception p1

    .line 76
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    :cond_ee
    const-string v4, "open_app"

    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "p"

    if-eqz v2, :cond_13c

    .line 79
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcyl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 82
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzahu;->zzab(Z)V

    .line 83
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_11b

    const-string p1, "Package name missing from open app action."

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_11b
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbhi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_12b

    const-string p1, "Cannot get package manager from open app action."

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 91
    :cond_12b
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_13b

    .line 93
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhp;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbhp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    :cond_13b
    return-void

    .line 95
    :cond_13c
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzahu;->zzab(Z)V

    const-string v2, "intent_url"

    .line 96
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16d

    .line 99
    :try_start_14e
    invoke-static {v2, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_152
    .catch Ljava/net/URISyntaxException; {:try_start_14e .. :try_end_152} :catch_153

    goto :goto_16d

    :catch_153
    move-exception v5

    const-string v6, "Error parsing the url: "

    .line 102
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_165

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_16a

    :cond_165
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16a
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16d
    :goto_16d
    if-eqz v3, :cond_1c6

    .line 103
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1c6

    .line 104
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 105
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v5, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c6

    .line 107
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbhi;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzbhq;

    .line 108
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbhq;->zzabz()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v6

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbhs;

    .line 109
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzbhs;->getView()Landroid/view/View;

    move-result-object v7

    .line 110
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzzu()Landroid/app/Activity;

    move-result-object v8

    .line 111
    invoke-static {v5, v6, v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzahu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeg;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    .line 112
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzahu;->zzf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 113
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c3

    sget-object v5, Lcom/google/android/gms/internal/ads/zzabb;->zzcym:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 114
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v5

    .line 115
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1c3

    .line 116
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1c6

    .line 117
    :cond_1c3
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1c6
    :goto_1c6
    if-eqz v3, :cond_1d3

    .line 119
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhp;

    new-instance p2, Lcom/google/android/gms/ads/internal/overlay/zzb;

    invoke-direct {p2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbhp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void

    .line 120
    :cond_1d3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1ff

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 123
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbhi;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbhq;

    .line 124
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbhq;->zzabz()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v3

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbhs;

    .line 125
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbhs;->getView()Landroid/view/View;

    move-result-object v5

    .line 126
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzzu()Landroid/app/Activity;

    move-result-object v1

    .line 127
    invoke-static {v2, v3, v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzahu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeg;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zzf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1ff
    move-object v7, v0

    .line 130
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhp;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzb;

    const-string v1, "i"

    .line 131
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-string v1, "m"

    .line 132
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 133
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    const-string v1, "c"

    .line 134
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    const-string v1, "f"

    .line 135
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    const-string v1, "e"

    .line 136
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v12, p2

    check-cast v12, Ljava/lang/String;

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbhp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    :cond_23f
    return-void
.end method
