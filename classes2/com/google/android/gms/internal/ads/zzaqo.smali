.class public final Lcom/google/android/gms/internal/ads/zzaqo;
.super Lcom/google/android/gms/internal/ads/zzaqn;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaqn;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "Lcom/google/android/gms/internal/ads/zzbgj;",
        ">;"
    }
.end annotation


# instance fields
.field private density:F

.field private maxHeight:I

.field private maxWidth:I

.field private rotation:I

.field private final zzbrj:Landroid/view/WindowManager;

.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzdob:Lcom/google/android/gms/internal/ads/zzaam;

.field private zzdoc:I

.field private zzdod:I

.field private zzdoe:I

.field private zzdof:I

.field private final zzvr:Landroid/content/Context;

.field private zzxd:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaam;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqn;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdoc:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdod:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->maxWidth:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->maxHeight:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdoe:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdof:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzvr:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdob:Lcom/google/android/gms/internal/ads/zzaam;

    const-string p1, "window"

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzbrj:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 11

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 34
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzxd:Landroid/util/DisplayMetrics;

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzbrj:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzxd:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzxd:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->density:F

    .line 38
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->rotation:I

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzxd:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdoc:I

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzxd:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdod:I

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzu()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_4b

    goto :goto_6d

    .line 48
    :cond_4b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Landroid/app/Activity;)[I

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzxd:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->maxWidth:I

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzxd:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->maxHeight:I

    goto :goto_75

    .line 46
    :cond_6d
    :goto_6d
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdoc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->maxWidth:I

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdod:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->maxHeight:I

    .line 52
    :goto_75
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 53
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdoc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdoe:I

    .line 54
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdod:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdof:I

    goto :goto_8f

    .line 55
    :cond_8a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->measure(II)V

    .line 57
    :goto_8f
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdoc:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdod:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaqo;->maxWidth:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaqo;->maxHeight:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqo;->density:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaqo;->rotation:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaqn;->zza(IIIIFI)V

    .line 60
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaql;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaql;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdob:Lcom/google/android/gms/internal/ads/zzaam;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaam;->zzrb()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaql;->zzae(Z)Lcom/google/android/gms/internal/ads/zzaql;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdob:Lcom/google/android/gms/internal/ads/zzaam;

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaam;->zzrc()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaql;->zzad(Z)Lcom/google/android/gms/internal/ads/zzaql;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdob:Lcom/google/android/gms/internal/ads/zzaam;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaam;->zzre()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaql;->zzaf(Z)Lcom/google/android/gms/internal/ads/zzaql;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdob:Lcom/google/android/gms/internal/ads/zzaam;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaam;->zzrd()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaql;->zzag(Z)Lcom/google/android/gms/internal/ads/zzaql;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaql;->zzah(Z)Lcom/google/android/gms/internal/ads/zzaql;

    move-result-object p1

    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqj;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(Lcom/google/android/gms/internal/ads/zzaql;Lcom/google/android/gms/internal/ads/zzaqm;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqj;->zzdp()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onDeviceFeaturesReceived"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    .line 71
    new-array v1, p1, [I

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->getLocationOnScreen([I)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzvr:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/content/Context;I)I

    move-result v0

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzvr:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/content/Context;I)I

    move-result p2

    .line 76
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzaqo;->zzj(II)V

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_10f

    const-string p1, "Dispatching Ready Event."

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    .line 80
    :cond_10f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqn;->zzdy(Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(II)V
    .registers 8

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzvr:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzvr:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzayu;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    .line 16
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result v0

    if-nez v0, :cond_83

    .line 17
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getWidth()I

    move-result v0

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgj;->getHeight()I

    move-result v2

    .line 19
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabb;->zzcnc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6b

    if-nez v0, :cond_59

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbhy;->widthPixels:I

    :cond_59
    if-nez v2, :cond_6b

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbhy;->heightPixels:I

    .line 26
    :cond_6b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzvr:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdoe:I

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzvr:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdof:I

    :cond_83
    sub-int v0, p2, v1

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdoe:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdof:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqn;->zzb(IIII)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqo;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbhv;->zzi(II)V

    return-void
.end method
