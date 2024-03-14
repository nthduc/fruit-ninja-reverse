.class public final Lcom/google/android/gms/internal/ads/zzbms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaly;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaly<",
        "Lcom/google/android/gms/internal/ads/zzbmw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaaj:Landroid/os/PowerManager;

.field private final zzfnw:Lcom/google/android/gms/internal/ads/zzqo;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzqo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzfnw:Lcom/google/android/gms/internal/ads/zzqo;

    const-string p2, "power"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzaaj:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbmw;)Lorg/json/JSONObject;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbmw;->zzfoo:Lcom/google/android/gms/internal/ads/zzqr;

    if-nez v2, :cond_15

    .line 10
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_25f

    .line 11
    :cond_15
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbmw;->zzfoo:Lcom/google/android/gms/internal/ads/zzqr;

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzfnw:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqo;->zzlv()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_268

    .line 14
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrs:Z

    .line 16
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 17
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzfnw:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzqo;->zzlu()Ljava/lang/String;

    move-result-object v5

    const-string v6, "afmaVersion"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzfnw:Lcom/google/android/gms/internal/ads/zzqo;

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqo;->zzlv()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "activeViewJSON"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzbmw;->timestamp:J

    const-string v8, "timestamp"

    .line 19
    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzfnw:Lcom/google/android/gms/internal/ads/zzqo;

    .line 20
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqo;->zzlt()Ljava/lang/String;

    move-result-object v6

    const-string v7, "adFormat"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzfnw:Lcom/google/android/gms/internal/ads/zzqo;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqo;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "hashCode"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzfnw:Lcom/google/android/gms/internal/ads/zzqo;

    const/4 v6, 0x0

    const-string v7, "isMraid"

    .line 24
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "isStopped"

    .line 25
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    iget-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzbmw;->zzfol:Z

    const-string v7, "isPaused"

    .line 26
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzfnw:Lcom/google/android/gms/internal/ads/zzqo;

    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqo;->isNative()Z

    move-result v6

    const-string v7, "isNative"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 29
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_8e

    .line 30
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzaaj:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    goto :goto_94

    .line 31
    :cond_8e
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzaaj:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    :goto_94
    const-string v7, "isScreenOn"

    .line 32
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkw()Lcom/google/android/gms/internal/ads/zzazm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzazm;->zzqh()Z

    move-result v6

    const-string v7, "appMuted"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkw()Lcom/google/android/gms/internal/ads/zzazm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzazm;->zzqg()F

    move-result v6

    float-to-double v6, v6

    const-string v8, "appVolume"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzvr:Landroid/content/Context;

    .line 35
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzazm;->zzbi(Landroid/content/Context;)F

    move-result v6

    float-to-double v6, v6

    const-string v8, "deviceVolume"

    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 38
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 39
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzvr:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 40
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 42
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 43
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbms;->zzvr:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 44
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzaaq:I

    const-string v7, "windowVisibility"

    .line 45
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "isAttachedToWindow"

    .line 46
    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrt:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    const-string v8, "top"

    .line 47
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrt:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    const-string v9, "bottom"

    .line 48
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrt:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    const-string v10, "left"

    .line 49
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrt:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    const-string v11, "right"

    .line 50
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "viewBox"

    .line 51
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbru:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 52
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbru:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 53
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbru:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 54
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbru:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 55
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "adBox"

    .line 56
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrv:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 57
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrv:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 58
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrv:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 59
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrv:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 60
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "globalVisibleBox"

    .line 61
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrw:Z

    const-string v7, "globalVisibleBoxVisible"

    .line 62
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrx:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 63
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrx:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 64
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrx:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 65
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrx:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 66
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "localVisibleBox"

    .line 67
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbry:Z

    const-string v7, "localVisibleBoxVisible"

    .line 68
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrz:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 69
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrz:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 70
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrz:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 71
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbrz:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 72
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "hitBox"

    .line 73
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    const-string v7, "screenDensity"

    .line 74
    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 75
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzbmw;->zzbro:Z

    const-string v5, "isVisible"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabb;->zzcpx:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_24f

    .line 79
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 80
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbsb:Ljava/util/List;

    if-eqz v5, :cond_24a

    .line 81
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqr;->zzbsb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 82
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 83
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 84
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 85
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 86
    invoke-virtual {v6, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 87
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_21d

    :cond_24a
    const-string v2, "scrollableContainerBoxes"

    .line 89
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_24f
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbmw;->zzfon:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25e

    const-string p1, "doneReasonCode"

    const-string v2, "u"

    .line 91
    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_25e
    move-object p1, v4

    .line 93
    :goto_25f
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "units"

    .line 94
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1

    .line 13
    :cond_268
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Active view Info cannot be null."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public final synthetic zzj(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 96
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbmw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbms;->zza(Lcom/google/android/gms/internal/ads/zzbmw;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
