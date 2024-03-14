.class public final Lcom/google/android/gms/internal/ads/zzcuj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcta;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcta<",
        "Lcom/google/android/gms/internal/ads/zzcbe;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;

.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzgos:Lcom/google/android/gms/internal/ads/zzcce;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcce;Lcom/google/android/gms/internal/ads/zzdnt;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuj;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuj;->zzgos:Lcom/google/android/gms/internal/ads/zzcce;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuj;->zzfoc:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuj;->zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;

    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzdnv;)Ljava/lang/String;
    .registers 2

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdu:Lorg/json/JSONObject;

    const-string v0, "tab_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final synthetic zza(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    :try_start_0
    new-instance p4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {p4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p4

    .line 22
    iget-object v0, p4, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 23
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object p1, p4, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;)V

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 26
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuj;->zzgos:Lcom/google/android/gms/internal/ads/zzcce;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbre;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcbf;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcul;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzcul;-><init>(Lcom/google/android/gms/internal/ads/zzbcg;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzcbf;-><init>(Lcom/google/android/gms/internal/ads/zzccm;)V

    .line 27
    invoke-virtual {p4, v0, p2}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzcbf;)Lcom/google/android/gms/internal/ads/zzcbg;

    move-result-object p2

    .line 28
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v3, 0x0

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcbg;->zzagk()Lcom/google/android/gms/internal/ads/zzbwa;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbbx;

    const/4 p4, 0x0

    invoke-direct {v6, p4, p4, p4}, Lcom/google/android/gms/internal/ads/zzbbx;-><init>(IIZ)V

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 30
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->set(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuj;->zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdnt;->zzwp()V

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcbg;->zzagj()Lcom/google/android/gms/internal/ads/zzcbe;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_52} :catch_53

    return-object p1

    :catch_53
    move-exception p1

    const-string p2, "Error in CustomTabsAdRenderer"

    .line 34
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Z
    .registers 3

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuj;->zzvr:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_20

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwichMR1()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuj;->zzvr:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacc;->zzk(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcuj;->zzf(Lcom/google/android/gms/internal/ads/zzdnv;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzcbe;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcuj;->zzf(Lcom/google/android/gms/internal/ads/zzdnv;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 15
    :goto_d
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcum;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcum;-><init>(Lcom/google/android/gms/internal/ads/zzcuj;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuj;->zzfoc:Ljava/util/concurrent/Executor;

    .line 16
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
