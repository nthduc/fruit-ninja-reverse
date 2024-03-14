.class public final Lcom/google/android/gms/internal/ads/zzazp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private handler:Landroid/os/Handler;

.field private state:I

.field private zzbre:Ljava/lang/String;

.field private zzbuu:Ljava/lang/String;

.field private zzdps:Ljava/lang/String;

.field private zzdti:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzebo:I

.field private zzebp:Landroid/graphics/PointF;

.field private zzebq:Landroid/graphics/PointF;

.field private zzebr:Ljava/lang/Runnable;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->state:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzazo;-><init>(Lcom/google/android/gms/internal/ads/zzazp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebr:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzvr:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebo:I

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbas;->zzyj()Landroid/os/Looper;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbas;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzazp;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzdps:Ljava/lang/String;

    return-void
.end method

.method private static zza(Ljava/util/List;Ljava/lang/String;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .line 88
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private final zza(FFFF)Z
    .registers 6

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebp:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebo:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebp:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    .line 48
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebo:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebq:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebo:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebq:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p4

    .line 50
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebo:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_42

    const/4 p1, 0x1

    return p1

    :cond_42
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzbuu:Ljava/lang/String;

    return-void
.end method

.method public final showDialog()V
    .registers 8

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzvr:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_c

    const-string v0, "Can not create dialog without Activity Context"

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void

    .line 56
    :cond_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazu;->zzyf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "Creative Preview (Enabled)"

    goto :goto_1f

    :cond_1d
    const-string v0, "Creative Preview"

    .line 59
    :goto_1f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazu;->zzyg()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "Troubleshooting (Enabled)"

    goto :goto_2e

    :cond_2c
    const-string v1, "Troubleshooting"

    .line 62
    :goto_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Ad Information"

    const/4 v4, 0x1

    .line 63
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v3

    .line 65
    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v0

    .line 67
    invoke-static {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v1

    .line 68
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzvr:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzazd;->zzxz()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v5, "Select a Debug Mode"

    .line 71
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 72
    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzazr;

    invoke-direct {v6, p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzazr;-><init>(Lcom/google/android/gms/internal/ads/zzazp;III)V

    .line 73
    invoke-virtual {v5, v2, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_6f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_6f} :catch_70

    return-void

    :catch_70
    move-exception v0

    const-string v1, ""

    .line 78
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{Dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzdps:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",DebugSignal: "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzdti:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",AFMA Version: "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzbre:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Ad Unit ID: "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzbuu:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zza(IIILandroid/content/DialogInterface;I)V
    .registers 6

    if-ne p5, p1, :cond_9b

    .line 117
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzvr:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_e

    const-string p1, "Can not create dialog without Activity Context"

    .line 118
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfd(Ljava/lang/String;)V

    return-void

    .line 120
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzdps:Ljava/lang/String;

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_71

    const-string p2, "\\+"

    const-string p3, "%20"

    .line 122
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzj(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_62

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 128
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " = "

    .line 129
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n\n"

    .line 131
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 133
    :cond_62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_71

    goto :goto_73

    :cond_71
    const-string p1, "No debug information"

    .line 136
    :goto_73
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzvr:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p3, "Ad Information"

    .line 138
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance p3, Lcom/google/android/gms/internal/ads/zzazq;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzazq;-><init>(Lcom/google/android/gms/internal/ads/zzazp;Ljava/lang/String;)V

    const-string p1, "Share"

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazt;->zzebv:Landroid/content/DialogInterface$OnClickListener;

    const-string p3, "Close"

    invoke-virtual {p2, p3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_9b
    if-ne p5, p2, :cond_ad

    const-string p1, "Debug mode [Creative Preview] selected."

    .line 146
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 147
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzazs;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(Lcom/google/android/gms/internal/ads/zzazp;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_ad
    if-ne p5, p3, :cond_be

    const-string p1, "Debug mode [Troubleshooting] selected."

    .line 151
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 152
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzazv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzazv;-><init>(Lcom/google/android/gms/internal/ads/zzazp;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdzb;->execute(Ljava/lang/Runnable;)V

    :cond_be
    return-void
.end method

.method final synthetic zza(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 109
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzvr:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 110
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.intent.extra.TEXT"

    .line 111
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "Share via"

    .line 112
    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 113
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final zzae(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzbre:Ljava/lang/String;

    return-void
.end method

.method public final zzd(Landroid/view/MotionEvent;)V
    .registers 12

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_21

    .line 17
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzazp;->state:I

    .line 18
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebp:Landroid/graphics/PointF;

    return-void

    .line 19
    :cond_21
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzazp;->state:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    return-void

    :cond_27
    const/4 v6, 0x5

    const/4 v7, 0x1

    if-nez v4, :cond_56

    if-ne v0, v6, :cond_56

    .line 22
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzazp;->state:I

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebq:Landroid/graphics/PointF;

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebr:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzctl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 27
    :cond_56
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzazp;->state:I

    if-ne v4, v6, :cond_a3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5e

    goto :goto_98

    :cond_5e
    if-ne v0, v4, :cond_97

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_62
    if-ge v0, v1, :cond_7e

    .line 34
    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    .line 35
    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    .line 36
    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v8

    .line 37
    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v9

    .line 38
    invoke-direct {p0, v4, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzazp;->zza(FFFF)Z

    move-result v4

    if-nez v4, :cond_7b

    const/4 v2, 0x1

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 41
    :cond_7e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzazp;->zza(FFFF)Z

    move-result p1

    if-nez p1, :cond_95

    goto :goto_98

    :cond_95
    move v7, v2

    goto :goto_98

    :cond_97
    const/4 v7, 0x0

    :goto_98
    if-eqz v7, :cond_a3

    .line 44
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzazp;->state:I

    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzebr:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a3
    return-void
.end method

.method public final zzet(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzdps:Ljava/lang/String;

    return-void
.end method

.method public final zzeu(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzdti:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzyc()V
    .registers 6

    .line 105
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzvr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzbuu:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzbre:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzdti:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzazu;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzyd()V
    .registers 5

    .line 108
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlb()Lcom/google/android/gms/internal/ads/zzazu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzvr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzbuu:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazp;->zzbre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazu;->zze(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzye()V
    .registers 2

    const/4 v0, 0x4

    .line 154
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzazp;->state:I

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazp;->showDialog()V

    return-void
.end method
