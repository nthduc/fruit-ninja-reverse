.class public Lcom/chartboost/sdk/Model/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/chartboost/sdk/Libraries/d;

.field public final b:Lcom/chartboost/sdk/Networking/h;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/SharedPreferences;

.field public final e:Lcom/chartboost/sdk/Libraries/i;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/Integer;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/Float;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Lorg/json/JSONObject;

.field public final w:Ljava/lang/String;

.field public final x:Z

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/d;Lcom/chartboost/sdk/Networking/h;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/impl/d1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Libraries/d;",
            "Lcom/chartboost/sdk/Networking/h;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Lcom/chartboost/sdk/impl/d1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/chartboost/sdk/Model/g;->a:Lcom/chartboost/sdk/Libraries/d;

    .line 3
    iput-object p4, p0, Lcom/chartboost/sdk/Model/g;->b:Lcom/chartboost/sdk/Networking/h;

    .line 4
    iput-object p5, p0, Lcom/chartboost/sdk/Model/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p6, p0, Lcom/chartboost/sdk/Model/g;->d:Landroid/content/SharedPreferences;

    .line 6
    iput-object p7, p0, Lcom/chartboost/sdk/Model/g;->e:Lcom/chartboost/sdk/Libraries/i;

    .line 9
    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->s:Ljava/lang/String;

    .line 11
    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string p3, "sdk"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string p3, "google_sdk"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz p2, :cond_30

    const-string p3, "Genymotion"

    .line 12
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_30

    goto :goto_35

    .line 15
    :cond_30
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->f:Ljava/lang/String;

    goto :goto_39

    :cond_35
    :goto_35
    const-string p2, "Android Simulator"

    .line 16
    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->f:Ljava/lang/String;

    .line 20
    :goto_39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->t:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/chartboost/sdk/impl/g1;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->u:Ljava/lang/String;

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Android "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->g:Ljava/lang/String;

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->h:Ljava/lang/String;

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->i:Ljava/lang/String;

    const-string p2, "8.1.0"

    .line 25
    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->l:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->r:Ljava/lang/Float;

    .line 28
    :try_start_96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/16 p5, 0x80

    .line 30
    invoke-virtual {p3, p2, p5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 31
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/Model/g;->j:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->k:Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_aa} :catch_ab

    goto :goto_b3

    :catch_ab
    move-exception p2

    const-string p3, "RequestBody"

    const-string p5, "Exception raised getting package mager object"

    .line 34
    invoke-static {p3, p5, p2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :goto_b3
    invoke-direct {p0, p1, p8}, Lcom/chartboost/sdk/Model/g;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/d1;)Lcom/chartboost/sdk/impl/c1;

    move-result-object p2

    .line 38
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/Model/g;->a(Lcom/chartboost/sdk/impl/c1;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/chartboost/sdk/Model/g;->w:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p2, p8}, Lcom/chartboost/sdk/Model/g;->a(Lcom/chartboost/sdk/impl/c1;Lcom/chartboost/sdk/impl/d1;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->v:Lorg/json/JSONObject;

    .line 41
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->g()Z

    move-result p2

    iput-boolean p2, p0, Lcom/chartboost/sdk/Model/g;->x:Z

    .line 42
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->y:Ljava/lang/String;

    .line 43
    invoke-virtual {p4}, Lcom/chartboost/sdk/Networking/h;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->z:Ljava/lang/Integer;

    .line 45
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object p2

    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p2, p3}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/DisplayMetrics;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    const-string p3, "window"

    .line 51
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_104

    .line 53
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    :cond_104
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    iget p3, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p0, Lcom/chartboost/sdk/Model/g;->o:Ljava/lang/Integer;

    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p0, Lcom/chartboost/sdk/Model/g;->p:Ljava/lang/Integer;

    .line 61
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/Model/g;->q:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Model/g;->m:Ljava/lang/Integer;

    .line 63
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Model/g;->n:Ljava/lang/Integer;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/chartboost/sdk/impl/d1;)Lcom/chartboost/sdk/impl/c1;
    .registers 3

    if-eqz p2, :cond_7

    .line 5
    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/d1;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/c1;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/chartboost/sdk/impl/c1;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/c1;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method private a(Lcom/chartboost/sdk/impl/c1;Lcom/chartboost/sdk/impl/d1;)Lorg/json/JSONObject;
    .registers 3

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 2
    new-instance p2, Lcom/chartboost/sdk/impl/e1;

    invoke-direct {p2}, Lcom/chartboost/sdk/impl/e1;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/Model/g;->a(Lcom/chartboost/sdk/impl/c1;Lcom/chartboost/sdk/impl/e1;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_13

    .line 4
    :cond_e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_13
    return-object p1
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/c1;Lcom/chartboost/sdk/impl/e1;)Lorg/json/JSONObject;
    .registers 3

    if-eqz p2, :cond_7

    .line 6
    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/e1;->a(Lcom/chartboost/sdk/impl/c1;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 8
    :cond_7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method
