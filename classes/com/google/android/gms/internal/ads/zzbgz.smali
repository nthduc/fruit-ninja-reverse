.class final Lcom/google/android/gms/internal/ads/zzbgz;
.super Landroid/webkit/WebView;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/zzbgj;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private maxHeight:I

.field private maxWidth:I

.field private zzacy:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzbrj:Landroid/view/WindowManager;

.field private zzdoc:I

.field private zzdod:I

.field private zzdpo:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzdrb:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzdzd:Ljava/lang/Boolean;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzeja:Lcom/google/android/gms/internal/ads/zzabq;

.field private final zzemr:Lcom/google/android/gms/internal/ads/zzts;

.field private final zzeol:Lcom/google/android/gms/internal/ads/zzbhz;

.field private final zzeom:Lcom/google/android/gms/internal/ads/zzeg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzeon:Lcom/google/android/gms/internal/ads/zzacb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzeoo:Lcom/google/android/gms/ads/internal/zzk;

.field private final zzeop:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzeoq:F

.field private final zzeor:Lcom/google/android/gms/internal/ads/zzsu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzeos:Z

.field private zzeot:Lcom/google/android/gms/internal/ads/zzdnv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzeou:Lcom/google/android/gms/internal/ads/zzdnw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzeov:Z

.field private zzeow:Z

.field private zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

.field private zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzeoz:Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepa:Lcom/google/android/gms/internal/ads/zzbhy;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepb:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepc:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepd:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepe:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepf:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepg:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzeph:Lcom/google/android/gms/internal/ads/zzbhd;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepi:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepj:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepk:Lcom/google/android/gms/internal/ads/zzads;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepl:Lcom/google/android/gms/internal/ads/zzadn;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepm:Lcom/google/android/gms/internal/ads/zzsc;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepn:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepo:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepp:Lcom/google/android/gms/internal/ads/zzabq;

.field private zzepq:Lcom/google/android/gms/internal/ads/zzabq;

.field private zzepr:Lcom/google/android/gms/internal/ads/zzabp;

.field private zzeps:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzept:Lcom/google/android/gms/ads/internal/overlay/zze;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepu:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzepv:Lcom/google/android/gms/internal/ads/zzbbh;

.field private zzepw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbfl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzxd:Landroid/util/DisplayMetrics;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhz;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V
    .registers 25
    .param p6    # Lcom/google/android/gms/internal/ads/zzeg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzacb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p8

    .line 3
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 4
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeov:Z

    .line 5
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeow:Z

    const/4 v5, 0x1

    .line 6
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepf:Z

    .line 7
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepg:Z

    const-string v0, ""

    .line 8
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzdrb:Ljava/lang/String;

    const/4 v0, -0x1

    .line 9
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzdod:I

    .line 10
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzdoc:I

    .line 11
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->maxWidth:I

    .line 12
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->maxHeight:I

    .line 13
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeol:Lcom/google/android/gms/internal/ads/zzbhz;

    move-object v6, p2

    .line 14
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    move-object v6, p3

    .line 15
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzacy:Ljava/lang/String;

    move v6, p4

    .line 16
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepc:Z

    .line 17
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepe:I

    move-object v0, p6

    .line 18
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    move-object v0, p7

    .line 19
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeon:Lcom/google/android/gms/internal/ads/zzacb;

    .line 20
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    move-object/from16 v0, p10

    .line 21
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoo:Lcom/google/android/gms/ads/internal/zzk;

    move-object/from16 v0, p11

    .line 22
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeop:Lcom/google/android/gms/ads/internal/zzb;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzbrj:Landroid/view/WindowManager;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzbrj:Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    .line 25
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoq:F

    move-object/from16 v0, p12

    .line 26
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzemr:Lcom/google/android/gms/internal/ads/zzts;

    move-object/from16 v0, p13

    .line 27
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeor:Lcom/google/android/gms/internal/ads/zzsu;

    move/from16 v0, p14

    .line 28
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeos:Z

    move-object/from16 v0, p15

    .line 29
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    move-object/from16 v0, p16

    .line 30
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    .line 31
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbgz;->setBackgroundColor(I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 33
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 34
    :try_start_78
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_7b
    .catch Ljava/lang/NullPointerException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_83

    :catch_7c
    move-exception v0

    move-object v7, v0

    const-string v0, "Unable to enable Javascript."

    .line 37
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :goto_83
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 39
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 40
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_96

    const/4 v0, 0x2

    .line 42
    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 43
    :cond_96
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v6}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/internal/ads/zzazd;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    .line 45
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzbgz;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacr()V

    .line 47
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 48
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbhe;->zzc(Lcom/google/android/gms/internal/ads/zzbgj;)Lcom/google/android/gms/internal/ads/zzbhe;

    move-result-object v0

    const-string v3, "googleAdsJsInterface"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzbgz;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_bf
    const-string v0, "accessibility"

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeol:Lcom/google/android/gms/internal/ads/zzbhz;

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbhz;->zzzu()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, p0, p0, v4}, Lcom/google/android/gms/internal/ads/zzbbh;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepv:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacv()V

    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzacy:Ljava/lang/String;

    const-string v7, "make_wv"

    invoke-direct {v3, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzabs;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzabp;-><init>(Lcom/google/android/gms/internal/ads/zzabs;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    .line 56
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    move-object/from16 v3, p9

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzabs;->zzc(Lcom/google/android/gms/internal/ads/zzabs;)V

    .line 57
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    .line 58
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v5, "native:view_create"

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzabp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V

    .line 59
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepq:Lcom/google/android/gms/internal/ads/zzabq;

    .line 60
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbgz;->zzepp:Lcom/google/android/gms/internal/ads/zzabq;

    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazd;->zzbg(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwq()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbgz;)I
    .registers 1

    .line 683
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepo:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbgz;I)I
    .registers 2

    .line 684
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepo:I

    return p1
.end method

.method private final zza(Ljava/lang/Boolean;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 169
    monitor-enter p0

    .line 170
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdzd:Ljava/lang/Boolean;

    .line 171
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    .line 172
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Boolean;)V

    return-void

    :catchall_c
    move-exception p1

    .line 171
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method private final declared-synchronized zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 146
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x0

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgz;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 148
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 149
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static final synthetic zza(ZILcom/google/android/gms/internal/ads/zzua$zzi$zza;)V
    .registers 5

    .line 676
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzpf()Lcom/google/android/gms/internal/ads/zzua$zzae$zza;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;->zzpe()Z

    move-result v1

    if-eq v1, p0, :cond_d

    .line 678
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;->zzx(Z)Lcom/google/android/gms/internal/ads/zzua$zzae$zza;

    .line 680
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;->zzcy(I)Lcom/google/android/gms/internal/ads/zzua$zzae$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzua$zzae;

    .line 681
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzae;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;

    return-void
.end method

.method private final zzaco()Z
    .registers 11

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 73
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabc()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 75
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabd()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 77
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeol:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhz;->zzzu()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5c

    .line 82
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_3c

    goto :goto_5c

    .line 85
    :cond_3c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Landroid/app/Activity;)[I

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_5e

    :cond_5c
    :goto_5c
    move v6, v4

    move v7, v5

    .line 88
    :goto_5e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdoc:I

    if-ne v0, v4, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdod:I

    if-ne v0, v5, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->maxWidth:I

    if-ne v0, v6, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->maxHeight:I

    if-ne v0, v7, :cond_6f

    return v1

    .line 90
    :cond_6f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdoc:I

    if-ne v0, v4, :cond_77

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdod:I

    if-eq v0, v5, :cond_78

    :cond_77
    const/4 v1, 0x1

    .line 91
    :cond_78
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdoc:I

    .line 92
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdod:I

    .line 93
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbgz;->maxWidth:I

    .line 94
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbgz;->maxHeight:I

    .line 95
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqn;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzaqn;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzbrj:Landroid/view/WindowManager;

    .line 96
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 97
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaqn;->zza(IIIIFI)V

    return v1
.end method

.method private final declared-synchronized zzacp()V
    .registers 3

    monitor-enter p0

    .line 160
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwo()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdzd:Ljava/lang/Boolean;

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdzd:Ljava/lang/Boolean;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_29

    if-nez v0, :cond_27

    :try_start_f
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    .line 164
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/Boolean;)V
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_1d} :catch_1f
    .catchall {:try_start_f .. :try_end_1d} :catchall_29

    .line 165
    monitor-exit p0

    return-void

    :catch_1f
    const/4 v0, 0x0

    .line 167
    :try_start_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/Boolean;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    .line 168
    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzacq()V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized zzacr()V
    .registers 3

    monitor-enter p0

    .line 456
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepc:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 459
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1e

    const-string v0, "Disabling hardware acceleration on an AdView."

    .line 460
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 461
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacs()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_32

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 462
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzact()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_32

    .line 464
    monitor-exit p0

    return-void

    :cond_28
    :goto_28
    :try_start_28
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 457
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzact()V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzacs()V
    .registers 3

    monitor-enter p0

    .line 465
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepd:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 466
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 468
    :cond_d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepd:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 469
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzact()V
    .registers 3

    monitor-enter p0

    .line 470
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 471
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 473
    :cond_d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepd:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 474
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzacu()V
    .registers 3

    monitor-enter p0

    .line 563
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepw:Ljava/util/Map;

    if-eqz v0, :cond_1f

    .line 564
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfl;

    .line 565
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfl;->release()V

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    .line 567
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepw:Ljava/util/Map;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 568
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private final zzacv()V
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    if-nez v0, :cond_5

    return-void

    .line 607
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 608
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayb;->zzwn()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 609
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayb;->zzwn()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabi;->zza(Lcom/google/android/gms/internal/ads/zzabs;)Z

    :cond_20
    return-void
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)Lcom/google/android/gms/internal/ads/zzbgz;
    .registers 34
    .param p5    # Lcom/google/android/gms/internal/ads/zzeg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzacb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhz;

    move-object v1, v0

    move-object/from16 p1, v1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhz;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v17, Lcom/google/android/gms/internal/ads/zzbgz;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/internal/ads/zzbgz;-><init>(Lcom/google/android/gms/internal/ads/zzbhz;Lcom/google/android/gms/internal/ads/zzbhy;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzacb;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/ads/internal/zzk;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzts;Lcom/google/android/gms/internal/ads/zzsu;ZLcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V

    return-object v17
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .registers 1

    .line 685
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final zzbd(Z)V
    .registers 4

    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string v1, "isVisible"

    .line 637
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 638
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final declared-synchronized zzfr(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgz;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 115
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 116
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzfs(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_4} :catch_c
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_4} :catch_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_4} :catch_8
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 127
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    goto :goto_1f

    :catch_8
    move-exception p1

    goto :goto_f

    :catch_a
    move-exception p1

    goto :goto_f

    :catch_c
    move-exception p1

    goto :goto_f

    :catch_e
    move-exception p1

    .line 129
    :goto_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 130
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_6

    .line 131
    monitor-exit p0

    return-void

    :goto_1f
    monitor-exit p0

    throw p1
.end method

.method private final zzft(Ljava/lang/String;)V
    .registers 4

    .line 150
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_38

    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzwo()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_11

    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacp()V

    .line 153
    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzwo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 155
    :cond_20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    :cond_2f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzfr(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    :cond_47
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzfr(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized zzwo()Ljava/lang/Boolean;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdzd:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzwr()V
    .registers 2

    monitor-enter p0

    .line 507
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepu:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepu:Z

    .line 509
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwr()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 510
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .registers 3

    monitor-enter p0

    .line 475
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacv()V

    .line 476
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepv:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzyq()V

    .line 477
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 478
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    .line 479
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->onDestroy()V

    .line 480
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 481
    :cond_1a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoz:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 482
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->reset()V

    .line 483
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepb:Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_44

    if-eqz v0, :cond_27

    .line 484
    monitor-exit p0

    return-void

    .line 485
    :cond_27
    :try_start_27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzln()Lcom/google/android/gms/internal/ads/zzbfi;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzc(Lcom/google/android/gms/internal/ads/zzbdu;)Z

    .line 486
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacu()V

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepb:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 488
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    .line 489
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 490
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzfs(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_44

    .line 491
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 107
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfg(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    const/4 p1, 0x0

    .line 109
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 110
    :cond_12
    monitor-exit p0

    return-void

    .line 111
    :cond_14
    :try_start_14
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    .line 112
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 492
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_1e

    .line 493
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepb:Z

    if-nez v0, :cond_16

    .line 494
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->reset()V

    .line 495
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzln()Lcom/google/android/gms/internal/ads/zzbfi;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzc(Lcom/google/android/gms/internal/ads/zzbdu;)Z

    .line 496
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacu()V

    .line 497
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzwr()V

    .line 498
    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    .line 499
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1b
    move-exception v0

    .line 498
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    .line 501
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 502
    throw v0
.end method

.method public final declared-synchronized getRequestId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 576
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdrb:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method public final declared-synchronized isDestroyed()Z
    .registers 2

    monitor-enter p0

    .line 511
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepb:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 132
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 134
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 135
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 136
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 137
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 138
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 139
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 117
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_28

    if-nez v0, :cond_21

    .line 118
    :try_start_7
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_a} :catch_e
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_7 .. :try_end_a} :catch_c
    .catchall {:try_start_7 .. :try_end_a} :catchall_28

    .line 119
    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_11

    :catch_10
    move-exception p1

    .line 121
    :goto_11
    :try_start_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 122
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_28

    .line 123
    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 124
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    .line 125
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .registers 4

    monitor-enter p0

    .line 401
    :try_start_1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 402
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 403
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepv:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->onAttachedToWindow()V

    .line 404
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepi:Z

    .line 406
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 407
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbgi;

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    .line 408
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 409
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabd()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 411
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepj:Z

    if-nez v0, :cond_36

    .line 413
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 414
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabf()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 416
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 417
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabg()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 418
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepj:Z

    .line 419
    :cond_36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaco()Z

    const/4 v0, 0x1

    .line 420
    :cond_3a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzbd(Z)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 421
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .registers 3

    .line 422
    monitor-enter p0

    .line 423
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 424
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepv:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->onDetachedFromWindow()V

    .line 425
    :cond_c
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 426
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 427
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 428
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    if-eqz v0, :cond_44

    .line 429
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 430
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabd()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 431
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 432
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 434
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 435
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabf()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 437
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 438
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabg()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 439
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepj:Z

    .line 440
    :cond_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_49

    .line 441
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzbd(Z)V

    return-void

    :catchall_49
    move-exception v0

    .line 440
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 250
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    .line 255
    :catch_19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 514
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1a

    .line 515
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 516
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 518
    :cond_1a
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 520
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 521
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgi;

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/16 v0, 0x9

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 274
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_41

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_20

    .line 277
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbgz;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_20
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2b

    .line 278
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbgz;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_2b
    cmpl-float v0, v1, v3

    if-lez v0, :cond_35

    .line 279
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzbgz;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_35
    cmpg-float v0, v1, v3

    if-gez v0, :cond_41

    .line 280
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzbgz;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_3f
    const/4 p1, 0x0

    return p1

    .line 282
    :cond_41
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .registers 3

    .line 377
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaco()Z

    move-result v0

    .line 378
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzabs()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 380
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzux()V

    :cond_f
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 284
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->setMeasuredDimension(II)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1ff

    .line 285
    monitor-exit p0

    return-void

    .line 286
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1fa

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepc:Z

    if-nez v0, :cond_1fa

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadc()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_1fa

    .line 289
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->zzade()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 290
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_1ff

    .line 291
    monitor-exit p0

    return-void

    .line 292
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadd()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 293
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcsg:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 294
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 296
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_1ff

    .line 297
    monitor-exit p0

    return-void

    .line 299
    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzzs()Lcom/google/android/gms/internal/ads/zzbhd;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    .line 301
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->getAspectRatio()F

    move-result v0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    cmpl-float v1, v0, v1

    if-nez v1, :cond_63

    .line 303
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_1ff

    .line 304
    monitor-exit p0

    return-void

    .line 305
    :cond_63
    :try_start_63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 306
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_7c

    if-eqz v2, :cond_7c

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_84

    :cond_7c
    if-nez p1, :cond_84

    if-eqz v1, :cond_84

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    .line 315
    :cond_84
    :goto_84
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 316
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgz;->setMeasuredDimension(II)V
    :try_end_8f
    .catchall {:try_start_63 .. :try_end_8f} :catchall_1ff

    .line 318
    monitor-exit p0

    return-void

    .line 319
    :cond_91
    :try_start_91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 320
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcsj:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 321
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_de

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_de

    :cond_b2
    const-string v0, "/contentHeight"

    .line 326
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbhb;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    .line 327
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 329
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzft(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 331
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 332
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepo:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d5

    .line 335
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepo:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_d9

    .line 333
    :cond_d5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 336
    :goto_d9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgz;->setMeasuredDimension(II)V
    :try_end_dc
    .catchall {:try_start_91 .. :try_end_dc} :catchall_1ff

    .line 337
    monitor-exit p0

    return-void

    .line 323
    :cond_de
    :goto_de
    :try_start_de
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_1ff

    .line 324
    monitor-exit p0

    return-void

    .line 338
    :cond_e3
    :try_start_e3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 339
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzxd:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgz;->setMeasuredDimension(II)V
    :try_end_f6
    .catchall {:try_start_e3 .. :try_end_f6} :catchall_1ff

    .line 340
    monitor-exit p0

    return-void

    .line 341
    :cond_f8
    :try_start_f8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 342
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 343
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 344
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_118

    if-ne v0, v3, :cond_114

    goto :goto_118

    :cond_114
    const v0, 0x7fffffff

    goto :goto_119

    :cond_118
    :goto_118
    move v0, p1

    :goto_119
    if-eq v2, v4, :cond_11d

    if-ne v2, v3, :cond_11e

    :cond_11d
    move v5, p2

    .line 352
    :cond_11e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbhy;->widthPixels:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_12e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbhy;->heightPixels:I

    if-le v2, v5, :cond_12c

    goto :goto_12e

    :cond_12c
    const/4 v2, 0x0

    goto :goto_12f

    :cond_12e
    :goto_12e
    const/4 v2, 0x1

    .line 353
    :goto_12f
    sget-object v4, Lcom/google/android/gms/internal/ads/zzabb;->zzcuu:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 354
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v4

    .line 355
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_167

    .line 356
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbhy;->widthPixels:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoq:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoq:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_163

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbhy;->heightPixels:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoq:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoq:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_163

    const/4 v0, 0x1

    goto :goto_164

    :cond_163
    const/4 v0, 0x0

    :goto_164
    if-eqz v2, :cond_167

    goto :goto_168

    :cond_167
    move v0, v2

    :goto_168
    const/16 v2, 0x8

    if-eqz v0, :cond_1d7

    .line 363
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbhy;->widthPixels:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoq:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbhy;->heightPixels:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoq:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float p1, p1

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoq:F

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p2, p2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoq:F

    div-float/2addr p2, v5

    float-to-int p2, p2

    const/16 v5, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dp, but only has "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_1c5

    const/4 p1, 0x4

    .line 365
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgz;->setVisibility(I)V

    .line 366
    :cond_1c5
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->setMeasuredDimension(II)V

    .line 367
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeov:Z

    if-nez p1, :cond_1f8

    .line 368
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzemr:Lcom/google/android/gms/internal/ads/zzts;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztu$zza$zzb;->zzbxr:Lcom/google/android/gms/internal/ads/zztu$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zzb;)V

    .line 369
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeov:Z
    :try_end_1d5
    .catchall {:try_start_f8 .. :try_end_1d5} :catchall_1ff

    monitor-exit p0

    return-void

    .line 370
    :cond_1d7
    :try_start_1d7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_1e0

    .line 371
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->setVisibility(I)V

    .line 372
    :cond_1e0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeow:Z

    if-nez p1, :cond_1ed

    .line 373
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzemr:Lcom/google/android/gms/internal/ads/zzts;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztu$zza$zzb;->zzbxs:Lcom/google/android/gms/internal/ads/zztu$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zzb;)V

    .line 374
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeow:Z

    .line 375
    :cond_1ed
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbhy;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbhy;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgz;->setMeasuredDimension(II)V
    :try_end_1f8
    .catchall {:try_start_1d7 .. :try_end_1f8} :catchall_1ff

    .line 376
    :cond_1f8
    monitor-exit p0

    return-void

    .line 287
    :cond_1fa
    :goto_1fa
    :try_start_1fa
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1fd
    .catchall {:try_start_1fa .. :try_end_1fd} :catchall_1ff

    .line 288
    monitor-exit p0

    return-void

    :catchall_1ff
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .registers 3

    .line 527
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 529
    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 532
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .registers 3

    .line 534
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 536
    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 539
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 259
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabd()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 260
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 261
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabe()Z

    move-result v0

    if-nez v0, :cond_23

    .line 262
    monitor-enter p0

    .line 263
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepk:Lcom/google/android/gms/internal/ads/zzads;

    if-eqz v0, :cond_1e

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepk:Lcom/google/android/gms/internal/ads/zzads;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzads;->zzc(Landroid/view/MotionEvent;)V

    .line 265
    :cond_1e
    monitor-exit p0

    goto :goto_31

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw p1

    .line 266
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    if-eqz v0, :cond_2a

    .line 267
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zza(Landroid/view/MotionEvent;)V

    .line 268
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeon:Lcom/google/android/gms/internal/ads/zzacb;

    if-eqz v0, :cond_31

    .line 269
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacb;->zza(Landroid/view/MotionEvent;)V

    .line 270
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 p1, 0x0

    return p1

    .line 272
    :cond_39
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 588
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeps:Ljava/lang/ref/WeakReference;

    .line 589
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .registers 3

    monitor-enter p0

    .line 450
    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepe:I

    .line 451
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz p1, :cond_e

    .line 452
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepe:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 453
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    .line 64
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbgi;

    if-eqz v0, :cond_b

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    :cond_b
    return-void
.end method

.method public final stopLoading()V
    .registers 3

    .line 545
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 547
    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 550
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 654
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacn()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "AR ad is not enabled or the ad from the server is not an AR ad."

    .line 655
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-void

    .line 657
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 658
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    const-string v0, "Initializing ArWebView object."

    .line 659
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeor:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-interface {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzsu;->zza(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 661
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeor:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-interface {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzsu;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_38

    .line 663
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeor:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzsu;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_38
    const-string p1, "The FrameLayout object cannot be null."

    .line 664
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .registers 2

    monitor-enter p0

    .line 382
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 383
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadn;)V
    .registers 2

    monitor-enter p0

    .line 581
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepl:Lcom/google/android/gms/internal/ads/zzadn;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 582
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzads;)V
    .registers 2

    monitor-enter p0

    .line 591
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepk:Lcom/google/android/gms/internal/ads/zzads;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 592
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbhd;)V
    .registers 3

    monitor-enter p0

    .line 595
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeph:Lcom/google/android/gms/internal/ads/zzbhd;

    if-eqz v0, :cond_c

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 596
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 597
    monitor-exit p0

    return-void

    .line 598
    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeph:Lcom/google/android/gms/internal/ads/zzbhd;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    .line 599
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbhy;)V
    .registers 2

    monitor-enter p0

    .line 388
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    .line 389
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->requestLayout()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 390
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V
    .registers 3

    .line 670
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeot:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 671
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 3

    .line 631
    monitor-enter p0

    .line 632
    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzqr;->zzbro:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepi:Z

    .line 633
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_c

    .line 634
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqr;->zzbro:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzbd(Z)V

    return-void

    :catchall_c
    move-exception p1

    .line 633
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsc;)V
    .registers 2

    monitor-enter p0

    .line 583
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepm:Lcom/google/android/gms/internal/ads/zzsc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 584
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 646
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    if-eqz v0, :cond_7

    .line 647
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    :cond_7
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

    .line 640
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    if-eqz v0, :cond_7

    .line 641
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    :cond_7
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbfl;)V
    .registers 4

    monitor-enter p0

    .line 569
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepw:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepw:Ljava/util/Map;

    .line 571
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 572
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_c

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_c
    const-string p1, "Could not convert parameters to JSON."

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_7

    .line 183
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 184
    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    :cond_3f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_45
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzft(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 5

    .line 627
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 629
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbgi;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZJ)V
    .registers 6

    .line 235
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_b

    const-string p1, "1"

    goto :goto_d

    :cond_b
    const-string p1, "0"

    :goto_d
    const-string v1, "success"

    .line 236
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzaaa()V
    .registers 2

    monitor-enter p0

    .line 578
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepl:Lcom/google/android/gms/internal/ads/zzadn;

    if-eqz v0, :cond_a

    .line 579
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepl:Lcom/google/android/gms/internal/ads/zzadn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadn;->zzsf()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 580
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzabp()V
    .registers 4

    .line 195
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacq()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 198
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzabq()V
    .registers 4

    .line 227
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 228
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkw()Lcom/google/android/gms/internal/ads/zzazm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazm;->zzqh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkw()Lcom/google/android/gms/internal/ads/zzazm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazm;->zzqg()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazm;->zzbi(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 232
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    .line 233
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzabr()Landroid/content/Context;
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeol:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhz;->zzabr()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzabs()Lcom/google/android/gms/ads/internal/overlay/zze;
    .registers 2

    monitor-enter p0

    .line 240
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzabt()Lcom/google/android/gms/ads/internal/overlay/zze;
    .registers 2

    monitor-enter p0

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzept:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzabu()Lcom/google/android/gms/internal/ads/zzbhy;
    .registers 2

    monitor-enter p0

    .line 243
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzabv()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzacy:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zzabw()Lcom/google/android/gms/internal/ads/zzbhv;
    .registers 2

    .line 674
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    return-object v0
.end method

.method public final zzabx()Landroid/webkit/WebViewClient;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    return-object v0
.end method

.method public final declared-synchronized zzaby()Z
    .registers 2

    monitor-enter p0

    .line 246
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdpo:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzabz()Lcom/google/android/gms/internal/ads/zzeg;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    return-object v0
.end method

.method public final declared-synchronized zzaca()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoz:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacb()Z
    .registers 2

    monitor-enter p0

    .line 249
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepc:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacc()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "Destroying WebView!"

    .line 503
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 504
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzwr()V

    .line 505
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbha;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbha;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 506
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacd()Z
    .registers 2

    monitor-enter p0

    .line 554
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepf:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzace()Z
    .registers 2

    monitor-enter p0

    .line 600
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepn:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public final zzacf()V
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepv:Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzyp()V

    return-void
.end method

.method public final zzacg()V
    .registers 4

    .line 523
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepq:Lcom/google/android/gms/internal/ads/zzabq;

    if-nez v0, :cond_19

    .line 524
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepq:Lcom/google/android/gms/internal/ads/zzabq;

    .line 525
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepq:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "native:view_load"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzabp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V

    :cond_19
    return-void
.end method

.method public final declared-synchronized zzach()Lcom/google/android/gms/internal/ads/zzads;
    .registers 2

    monitor-enter p0

    .line 593
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepk:Lcom/google/android/gms/internal/ads/zzads;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzaci()V
    .registers 2

    const/4 v0, 0x0

    .line 611
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzacj()V
    .registers 2

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 541
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzack()Lcom/google/android/gms/internal/ads/zzsc;
    .registers 2

    monitor-enter p0

    .line 585
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepm:Lcom/google/android/gms/internal/ads/zzsc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzacl()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzacm()Lcom/google/android/gms/internal/ads/zzsu;
    .registers 2

    .line 666
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeor:Lcom/google/android/gms/internal/ads/zzsu;

    return-object v0
.end method

.method public final zzacn()Z
    .registers 3

    .line 667
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcwp:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 668
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 669
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeor:Lcom/google/android/gms/internal/ads/zzsu;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeos:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzal(Z)V
    .registers 4

    monitor-enter p0

    .line 446
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_12

    .line 447
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgi;->zzabc()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    monitor-exit p0

    return-void

    .line 448
    :cond_12
    :try_start_12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzdpo:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    .line 449
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    monitor-enter p0

    .line 384
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoz:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 385
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzav(Z)V
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    .line 615
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgi;->zzav(Z)V

    return-void
.end method

.method public final zzax(Z)V
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgi;->zzax(Z)V

    return-void
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .registers 2

    monitor-enter p0

    .line 386
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzept:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 387
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 643
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    if-eqz v0, :cond_7

    .line 644
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgi;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    :cond_7
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 140
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 141
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbho;->zzacx()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbho;->zzf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    move-object v3, p0

    move-object v4, p1

    move-object v8, p3

    .line 143
    invoke-super/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_28

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 144
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    .line 145
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_7

    .line 176
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 177
    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzft(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(ZI)V
    .registers 4

    .line 625
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeox:Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgi;->zzb(ZI)V

    return-void
.end method

.method public final declared-synchronized zzba(Z)V
    .registers 4

    monitor-enter p0

    .line 391
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepc:Z

    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 392
    :goto_8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepc:Z

    .line 393
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacr()V

    if-eqz v0, :cond_38

    .line 394
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcnb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 395
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepa:Lcom/google/android/gms/internal/ads/zzbhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v0

    if-nez v0, :cond_38

    .line 397
    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqn;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    if-eqz p1, :cond_33

    const-string p1, "expanded"

    goto :goto_35

    :cond_33
    const-string p1, "default"

    :goto_35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqn;->zzdz(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 398
    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbb(Z)V
    .registers 2

    monitor-enter p0

    .line 552
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepf:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 553
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbc(Z)V
    .registers 3

    monitor-enter p0

    .line 601
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepn:I

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepn:I

    .line 602
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepn:I

    if-gtz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz p1, :cond_18

    .line 603
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoy:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzva()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 604
    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbw(Landroid/content/Context;)V
    .registers 3

    .line 443
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeol:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhz;->setBaseContext(Landroid/content/Context;)V

    .line 444
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepv:Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeol:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhz;->zzzu()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzh(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzc(ZI)Z
    .registers 5

    .line 649
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->destroy()V

    .line 650
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzemr:Lcom/google/android/gms/internal/ads/zzts;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgy;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgy;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztr;)V

    .line 651
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzemr:Lcom/google/android/gms/internal/ads/zzts;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztu$zza$zzb;->zzbxt:Lcom/google/android/gms/internal/ads/zztu$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzts;->zza(Lcom/google/android/gms/internal/ads/zztu$zza$zzb;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzdc(Ljava/lang/String;)V
    .registers 2

    .line 158
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzft(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdu(I)V
    .registers 5

    if-nez p1, :cond_13

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    .line 205
    :cond_13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzacq()V

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_2d
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 209
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzfj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbfl;
    .registers 3

    monitor-enter p0

    .line 573
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepw:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_8

    const/4 p1, 0x0

    .line 574
    monitor-exit p0

    return-object p1

    .line 575
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfl;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzkn()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 555
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepg:Z

    .line 556
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoo:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_d

    .line 557
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoo:Lcom/google/android/gms/ads/internal/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzkn()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 558
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzko()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 559
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepg:Z

    .line 560
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoo:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_d

    .line 561
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeoo:Lcom/google/android/gms/ads/internal/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzk;->zzko()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 562
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzuy()V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepp:Lcom/google/android/gms/internal/ads/zzabq;

    if-nez v0, :cond_2a

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzabq;[Ljava/lang/String;)Z

    .line 221
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzrp()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabj;->zzb(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzabq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepp:Lcom/google/android/gms/internal/ads/zzabq;

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepp:Lcom/google/android/gms/internal/ads/zzabq;

    const-string v2, "native:view_show"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzabp;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabq;)V

    .line 223
    :cond_2a
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 224
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 225
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzuz()V
    .registers 2

    .line 617
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzabs()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 619
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzuz()V

    :cond_9
    return-void
.end method

.method public final zzzr()Lcom/google/android/gms/internal/ads/zzbdn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzzs()Lcom/google/android/gms/internal/ads/zzbhd;
    .registers 2

    monitor-enter p0

    .line 594
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeph:Lcom/google/android/gms/internal/ads/zzbhd;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzzt()Lcom/google/android/gms/internal/ads/zzabq;
    .registers 2

    .line 586
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeja:Lcom/google/android/gms/internal/ads/zzabq;

    return-object v0
.end method

.method public final zzzu()Landroid/app/Activity;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeol:Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhz;->zzzu()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzzv()Lcom/google/android/gms/ads/internal/zzb;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzeop:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method public final zzzw()Lcom/google/android/gms/internal/ads/zzabp;
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzepr:Lcom/google/android/gms/internal/ads/zzabp;

    return-object v0
.end method

.method public final zzzx()Lcom/google/android/gms/internal/ads/zzbbx;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgz;->zzbpe:Lcom/google/android/gms/internal/ads/zzbbx;

    return-object v0
.end method

.method public final zzzy()I
    .registers 2

    .line 621
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzzz()I
    .registers 2

    .line 622
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbgz;->getMeasuredWidth()I

    move-result v0

    return v0
.end method
