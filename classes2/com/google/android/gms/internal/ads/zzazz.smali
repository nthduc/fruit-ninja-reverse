.class public final Lcom/google/android/gms/internal/ads/zzazz;
.super Lcom/google/android/gms/internal/ads/zzau;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzvr:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzar;)V
    .registers 3

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzau;-><init>(Lcom/google/android/gms/internal/ads/zzar;)V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzvr:Landroid/content/Context;

    return-void
.end method

.method public static zzbk(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzae;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzazz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzar;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "admob_volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzae;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzav;

    const/high16 v3, 0x1400000

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/io/File;I)V

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzae;-><init>(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzx;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzae;->start()V

    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzaa;)Lcom/google/android/gms/internal/ads/zzy;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaa<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzao;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->zzh()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->getMethod()I

    move-result v0

    if-nez v0, :cond_79

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcth:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzvr:Landroid/content/Context;

    const v1, 0xcc77c0

    .line 20
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbg;->zzd(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaik;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzvr:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaik;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaik;->zzc(Lcom/google/android/gms/internal/ads/zzaa;)Lcom/google/android/gms/internal/ads/zzy;

    move-result-object v0

    if-eqz v0, :cond_5b

    const-string v1, "Got gmscore asset response: "

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_57

    :cond_52
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_57
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-object v0

    :cond_5b
    const-string v0, "Failed to get gmscore asset response: "

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaa;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    :cond_70
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_76
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 27
    :cond_79
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzau;->zzc(Lcom/google/android/gms/internal/ads/zzaa;)Lcom/google/android/gms/internal/ads/zzy;

    move-result-object p1

    return-object p1
.end method
