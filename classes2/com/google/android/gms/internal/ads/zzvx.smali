.class public Lcom/google/android/gms/internal/ads/zzvx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzcik:Lcom/google/android/gms/internal/ads/zzve;

.field private final zzcil:Lcom/google/android/gms/internal/ads/zzvf;

.field private final zzcim:Lcom/google/android/gms/internal/ads/zzzl;

.field private final zzcin:Lcom/google/android/gms/internal/ads/zzagi;

.field private final zzcio:Lcom/google/android/gms/internal/ads/zzauk;

.field private final zzcip:Lcom/google/android/gms/internal/ads/zzavo;

.field private final zzciq:Lcom/google/android/gms/internal/ads/zzaqz;

.field private final zzcir:Lcom/google/android/gms/internal/ads/zzagh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzvf;Lcom/google/android/gms/internal/ads/zzzl;Lcom/google/android/gms/internal/ads/zzagi;Lcom/google/android/gms/internal/ads/zzauk;Lcom/google/android/gms/internal/ads/zzavo;Lcom/google/android/gms/internal/ads/zzaqz;Lcom/google/android/gms/internal/ads/zzagh;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcik:Lcom/google/android/gms/internal/ads/zzve;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcil:Lcom/google/android/gms/internal/ads/zzvf;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcim:Lcom/google/android/gms/internal/ads/zzzl;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcin:Lcom/google/android/gms/internal/ads/zzagi;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcio:Lcom/google/android/gms/internal/ads/zzauk;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcip:Lcom/google/android/gms/internal/ads/zzavo;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzciq:Lcom/google/android/gms/internal/ads/zzaqz;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcir:Lcom/google/android/gms/internal/ads/zzagh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzve;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcik:Lcom/google/android/gms/internal/ads/zzve;

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 11
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    .line 12
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    .line 13
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpz()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbbg;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzvf;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcil:Lcom/google/android/gms/internal/ads/zzvf;

    return-object p0
.end method

.method static synthetic zzb(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzvx;->zza(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzzl;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcim:Lcom/google/android/gms/internal/ads/zzzl;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzagi;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcin:Lcom/google/android/gms/internal/ads/zzagi;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzagh;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcir:Lcom/google/android/gms/internal/ads/zzagh;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzauk;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzcio:Lcom/google/android/gms/internal/ads/zzauk;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzaqz;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzciq:Lcom/google/android/gms/internal/ads/zzaqz;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzaei;
    .registers 5

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwi;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzwi;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaei;

    return-object p1
.end method

.method public final zza(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzael;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzael;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 36
    check-cast p1, Lcom/google/android/gms/internal/ads/zzael;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzaxl;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;)V

    const/4 p2, 0x0

    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 55
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxl;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzxc;
    .registers 12

    .line 18
    new-instance v6, Lcom/google/android/gms/internal/ads/zzwf;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;)V

    const/4 p2, 0x0

    .line 20
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxc;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzaqp;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwd;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzanb;)V

    const/4 p2, 0x0

    .line 59
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqp;

    return-object p1
.end method

.method public final zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzaqy;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/app/Activity;)V

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_18

    const-string v1, "useClientJar flag not found in activity intent extras."

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfc(Ljava/lang/String;)V

    goto :goto_1c

    .line 49
    :cond_18
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 50
    :goto_1c
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqy;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzwz;
    .registers 5

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwg;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwg;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;)V

    const/4 p2, 0x0

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwz;

    return-object p1
.end method

.method public final zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzauy;
    .registers 5

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvz;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvz;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;)V

    const/4 p2, 0x0

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Lcom/google/android/gms/internal/ads/zzauy;

    return-object p1
.end method
