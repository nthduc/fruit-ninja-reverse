.class Lcom/adcolony/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/l$a;


# static fields
.field static final S:Ljava/lang/String; = "026ae9c9824b3e483fa6c71fa88f57ae27816141"

.field static final T:Ljava/lang/String; = "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

.field static U:Ljava/lang/String; = "https://adc3-launch.adcolony.com/v4/launch"

.field private static volatile V:Ljava/lang/String; = ""


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:I

.field private O:I

.field private final P:I

.field private Q:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private R:Lcom/iab/omid/library/adcolony/adsession/Partner;

.field private a:Lcom/adcolony/sdk/i;

.field private b:Lcom/adcolony/sdk/y;

.field private c:Lcom/adcolony/sdk/m;

.field private d:Lcom/adcolony/sdk/f0;

.field private e:Lcom/adcolony/sdk/d;

.field private f:Lcom/adcolony/sdk/k;

.field private g:Lcom/adcolony/sdk/p;

.field private h:Lcom/adcolony/sdk/i0;

.field private i:Lcom/adcolony/sdk/g0;

.field private j:Lcom/adcolony/sdk/w;

.field private k:Lcom/adcolony/sdk/j;

.field private l:Lcom/adcolony/sdk/b0;

.field private m:Lcom/adcolony/sdk/c;

.field private n:Lcom/adcolony/sdk/AdColonyAdView;

.field private o:Lcom/adcolony/sdk/AdColonyInterstitial;

.field private p:Lcom/adcolony/sdk/AdColonyRewardListener;

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyCustomMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/adcolony/sdk/AdColonyAppOptions;

.field private s:Lcom/adcolony/sdk/x;

.field private t:Lorg/json/JSONObject;

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyZone;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/m0;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->q:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->v:Ljava/util/HashMap;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/adcolony/sdk/h;->A:Ljava/lang/String;

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/adcolony/sdk/h;->O:I

    const/16 v0, 0x78

    .line 48
    iput v0, p0, Lcom/adcolony/sdk/h;->P:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/adcolony/sdk/h;->R:Lcom/iab/omid/library/adcolony/adsession/Partner;

    return-void
.end method

.method private E()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adcolony/sdk/h$e;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/h$e;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private F()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->b:Lcom/adcolony/sdk/y;

    invoke-virtual {v0}, Lcom/adcolony/sdk/y;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method private G()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "AdColony.on_configuration_completed"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->y()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1c

    .line 7
    :cond_2c
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "zone_ids"

    .line 8
    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    const-string v1, "message"

    .line 9
    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 10
    new-instance v1, Lcom/adcolony/sdk/x;

    const/4 v2, 0x0

    const-string v3, "CustomMessage.controller_send"

    invoke-direct {v1, v3, v2, v0}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    return-void
.end method

.method private H()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/adcolony/sdk/h;->Q:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v1, :cond_29

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-le v1, v2, :cond_29

    .line 3
    new-instance v1, Lcom/adcolony/sdk/h$l;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/h$l;-><init>(Lcom/adcolony/sdk/h;)V

    iput-object v1, p0, Lcom/adcolony/sdk/h;->Q:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 82
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_1e

    check-cast v0, Landroid/app/Application;

    goto :goto_24

    :cond_1e
    check-cast v0, Landroid/app/Activity;

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 84
    :goto_24
    iget-object v1, p0, Lcom/adcolony/sdk/h;->Q:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_29
    return-void
.end method

.method private I()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->u()Lcom/adcolony/sdk/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/f0;->e()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget v0, p0, Lcom/adcolony/sdk/h;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/h;->N:I

    .line 3
    iget v1, p0, Lcom/adcolony/sdk/h;->O:I

    mul-int v1, v1, v0

    const/16 v0, 0x78

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/h;->O:I

    .line 6
    new-instance v0, Lcom/adcolony/sdk/h$g;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/h$g;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    goto :goto_3f

    .line 23
    :cond_29
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Max launch server download attempts hit, or AdColony is no longer"

    .line 24
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    const-string v1, " active."

    .line 25
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 26
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :goto_3f
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/h;Lcom/iab/omid/library/adcolony/adsession/Partner;)Lcom/iab/omid/library/adcolony/adsession/Partner;
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/adcolony/sdk/h;->R:Lcom/iab/omid/library/adcolony/adsession/Partner;

    return-object p1
.end method

.method private a(Lcom/adcolony/sdk/x;)V
    .registers 3

    .line 223
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/h;->a(I)Z

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/h;)Z
    .registers 1

    .line 3
    iget-boolean p0, p0, Lcom/adcolony/sdk/h;->M:Z

    return p0
.end method

.method static synthetic a(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/h;->c(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/adcolony/sdk/h;Z)Z
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->M:Z

    return p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/h;ZZ)Z
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/adcolony/sdk/h;->a(ZZ)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5

    .line 272
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 273
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/adc3/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 275
    invoke-static {p1, v1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 6

    .line 213
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->G:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/adcolony/sdk/h;->t:Lorg/json/JSONObject;

    if-eqz v0, :cond_26

    const-string v2, "controller"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "sha1"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {p1, v2}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_26
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Controller sha1 does not match, downloading new controller."

    .line 221
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v0, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 222
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1
.end method

.method private a(Z)Z
    .registers 3

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/adcolony/sdk/h;->a(ZZ)Z

    move-result p1

    return p1
.end method

.method private a(ZZ)Z
    .registers 5

    .line 193
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 198
    :cond_8
    iput-boolean p2, p0, Lcom/adcolony/sdk/h;->J:Z

    .line 201
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->G:Z

    if-eqz p1, :cond_17

    if-nez p2, :cond_17

    .line 203
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->F()Z

    move-result p1

    if-nez p1, :cond_17

    return v1

    .line 212
    :cond_17
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->E()V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/h;)Lcom/iab/omid/library/adcolony/adsession/Partner;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/adcolony/sdk/h;->R:Lcom/iab/omid/library/adcolony/adsession/Partner;

    return-object p0
.end method

.method static synthetic b(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/x;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/x;)V

    return-void
.end method

.method private b(Lcom/adcolony/sdk/x;)V
    .registers 5

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    iget-object v1, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->d()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "zone_ids"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 8
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "options"

    .line 9
    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 10
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/x;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 5

    .line 11
    sget-boolean v0, Lcom/adcolony/sdk/m0;->O:Z

    if-nez v0, :cond_2f

    const-string v0, "logging"

    .line 12
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "send_level"

    .line 13
    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/adcolony/sdk/w;->n:I

    const-string v1, "log_private"

    .line 14
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/adcolony/sdk/w;->e:Z

    const/4 v1, 0x3

    const-string v2, "print_level"

    .line 15
    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/adcolony/sdk/w;->m:I

    .line 16
    iget-object v1, p0, Lcom/adcolony/sdk/h;->j:Lcom/adcolony/sdk/w;

    const-string v2, "modules"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/w;->b(Lorg/json/JSONArray;)V

    :cond_2f
    const-string v0, "metadata"

    .line 18
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/j;->a(Lorg/json/JSONObject;)V

    .line 20
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->u()Lcom/adcolony/sdk/f0;

    move-result-object v1

    const-string v2, "session_timeout"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/f0;->a(I)V

    const-string v0, "controller"

    .line 21
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "version"

    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/h;->A:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/adcolony/sdk/h;Z)Z
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->E:Z

    return p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/x;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/adcolony/sdk/h;->s:Lcom/adcolony/sdk/x;

    return-object p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/y;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/h;->b:Lcom/adcolony/sdk/y;

    return-object p0
.end method

.method static synthetic c(Lcom/adcolony/sdk/h;Z)Z
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->C:Z

    return p1
.end method

.method private c(Lcom/adcolony/sdk/x;)Z
    .registers 6

    const-string v0, "id"

    .line 5
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 12
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-gtz v0, :cond_26

    .line 16
    iget-object v0, p0, Lcom/adcolony/sdk/h;->b:Lcom/adcolony/sdk/y;

    invoke-virtual {v0}, Lcom/adcolony/sdk/y;->d()I

    move-result v0

    .line 19
    :cond_26
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/h;->a(I)Z

    .line 20
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "is_display_module"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    .line 21
    new-instance v3, Lcom/adcolony/sdk/h$f;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/adcolony/sdk/h$f;-><init>(Lcom/adcolony/sdk/h;Landroid/content/Context;ZLcom/adcolony/sdk/x;)V

    invoke-static {v3}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_3b} :catch_3d

    const/4 p1, 0x1

    return p1

    :catch_3d
    move-exception p1

    .line 34
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": during WebView initialization."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string v0, " Disabling AdColony."

    .line 36
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v0, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 37
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 38
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->disable()Z

    return v2
.end method

.method private c(Lorg/json/JSONObject;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "controller"

    .line 39
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    .line 40
    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/h;->x:Ljava/lang/String;

    const-string v2, "sha1"

    .line 41
    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/h;->y:Ljava/lang/String;

    const-string v1, "status"

    .line 42
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/h;->z:Ljava/lang/String;

    const-string v1, "pie"

    .line 43
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adcolony/sdk/h;->V:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->a()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 45
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->b()V

    .line 48
    :cond_33
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/h;->b(Lorg/json/JSONObject;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_37

    goto :goto_58

    .line 52
    :catch_37
    :try_start_37
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    invoke-virtual {v2}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_56} :catch_57

    goto :goto_58

    :catch_57
    nop

    .line 60
    :goto_58
    iget-object p1, p0, Lcom/adcolony/sdk/h;->z:Ljava/lang/String;

    const-string v1, "disable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9f

    sget-boolean p1, Lcom/adcolony/sdk/m0;->O:Z

    if-nez p1, :cond_9f

    .line 63
    :try_start_66
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    invoke-virtual {v2}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_85} :catch_85

    .line 70
    :catch_85
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Launch server response with disabled status. Disabling AdColony "

    .line 71
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string v1, "until next launch."

    .line 72
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 73
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 74
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->disable()Z

    return v0

    .line 79
    :cond_9f
    iget-object p1, p0, Lcom/adcolony/sdk/h;->x:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b1

    iget-object p1, p0, Lcom/adcolony/sdk/h;->z:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cc

    :cond_b1
    sget-boolean p1, Lcom/adcolony/sdk/m0;->O:Z

    if-nez p1, :cond_cc

    .line 80
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Missing controller status or URL. Disabling AdColony until next "

    .line 81
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string v1, "launch."

    .line 82
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 83
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v0

    :cond_cc
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic d(Lcom/adcolony/sdk/h;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/h;->v:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic d(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/x;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/h;->b(Lcom/adcolony/sdk/x;)V

    return-void
.end method

.method static synthetic d(Lcom/adcolony/sdk/h;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->K:Z

    return p1
.end method

.method static synthetic e(Lcom/adcolony/sdk/h;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->E()V

    return-void
.end method

.method static synthetic e(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/h;->e(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private e(Lcom/adcolony/sdk/x;)Z
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/adcolony/sdk/h;->p:Lcom/adcolony/sdk/AdColonyRewardListener;

    if-eqz v0, :cond_e

    .line 4
    new-instance v0, Lcom/adcolony/sdk/h$j;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/h$j;-><init>(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/x;)V

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic f(Lcom/adcolony/sdk/h;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/adcolony/sdk/h;->O:I

    return p0
.end method

.method static synthetic f(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/x;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/h;->f(Lcom/adcolony/sdk/x;)V

    return-void
.end method

.method private f(Lcom/adcolony/sdk/x;)V
    .registers 5

    .line 3
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->D:Z

    if-eqz v0, :cond_5

    return-void

    .line 7
    :cond_5
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "zone_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 10
    iget-object v1, p0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    goto :goto_2b

    .line 12
    :cond_20
    new-instance v1, Lcom/adcolony/sdk/AdColonyZone;

    invoke-direct {v1, v0}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 15
    :goto_2b
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyZone;->a(Lcom/adcolony/sdk/x;)V

    return-void
.end method

.method static synthetic g(Lcom/adcolony/sdk/h;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->F()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/AdColonyRewardListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/h;->p:Lcom/adcolony/sdk/AdColonyRewardListener;

    return-object p0
.end method

.method static synthetic i(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/f0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/f0;

    return-object p0
.end method

.method static synthetic j(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/x;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/h;->s:Lcom/adcolony/sdk/x;

    return-object p0
.end method

.method static synthetic k(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/k;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/k;

    return-object p0
.end method

.method static synthetic l(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object p0
.end method

.method static synthetic m(Lcom/adcolony/sdk/h;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/adcolony/sdk/h;->K:Z

    return p0
.end method

.method static synthetic n(Lcom/adcolony/sdk/h;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/adcolony/sdk/h;->L:Z

    return p0
.end method

.method static synthetic o(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/m;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/h;->c:Lcom/adcolony/sdk/m;

    return-object p0
.end method

.method static synthetic p(Lcom/adcolony/sdk/h;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->G()V

    return-void
.end method

.method static s()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/adcolony/sdk/h;->V:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method A()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->C:Z

    return v0
.end method

.method B()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->D:Z

    return v0
.end method

.method C()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->E:Z

    return v0
.end method

.method D()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/h;->B:Z

    return v0
.end method

.method a()Landroid/content/Context;
    .registers 2

    .line 6
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/adcolony/sdk/AdColonyAdView;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/adcolony/sdk/h;->n:Lcom/adcolony/sdk/AdColonyAdView;

    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyAppOptions;)V
    .registers 7

    .line 340
    iget-object v0, p0, Lcom/adcolony/sdk/h;->e:Lcom/adcolony/sdk/d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 341
    :try_start_7
    iget-object v1, p0, Lcom/adcolony/sdk/h;->e:Lcom/adcolony/sdk/d;

    invoke-virtual {v1}, Lcom/adcolony/sdk/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 343
    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v4

    .line 344
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Z)V

    if-eqz v4, :cond_15

    .line 346
    invoke-virtual {v4, v2}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    goto :goto_15

    .line 349
    :cond_35
    iget-object v1, p0, Lcom/adcolony/sdk/h;->e:Lcom/adcolony/sdk/d;

    invoke-virtual {v1}, Lcom/adcolony/sdk/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 350
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_5c

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/adcolony/sdk/h;->E:Z

    .line 356
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adcolony/sdk/AdColony;->a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;)V

    .line 359
    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/h;->a(I)Z

    .line 360
    iget-object v0, p0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 361
    iput-object p1, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 362
    iget-object p1, p0, Lcom/adcolony/sdk/h;->b:Lcom/adcolony/sdk/y;

    invoke-virtual {p1}, Lcom/adcolony/sdk/y;->a()V

    .line 363
    invoke-direct {p0, v3, v3}, Lcom/adcolony/sdk/h;->a(ZZ)Z

    return-void

    :catchall_5c
    move-exception p1

    .line 364
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1

    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
    .registers 7

    .line 7
    iput-boolean p2, p0, Lcom/adcolony/sdk/h;->D:Z

    .line 8
    iput-object p1, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 9
    new-instance v0, Lcom/adcolony/sdk/y;

    invoke-direct {v0}, Lcom/adcolony/sdk/y;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->b:Lcom/adcolony/sdk/y;

    .line 10
    new-instance v0, Lcom/adcolony/sdk/i;

    invoke-direct {v0}, Lcom/adcolony/sdk/i;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->a:Lcom/adcolony/sdk/i;

    .line 11
    new-instance v0, Lcom/adcolony/sdk/j;

    invoke-direct {v0}, Lcom/adcolony/sdk/j;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/j;

    .line 12
    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->H()V

    .line 13
    new-instance v0, Lcom/adcolony/sdk/m;

    invoke-direct {v0}, Lcom/adcolony/sdk/m;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->c:Lcom/adcolony/sdk/m;

    .line 14
    invoke-virtual {v0}, Lcom/adcolony/sdk/m;->b()V

    .line 15
    new-instance v0, Lcom/adcolony/sdk/f0;

    invoke-direct {v0}, Lcom/adcolony/sdk/f0;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/f0;

    .line 16
    invoke-virtual {v0}, Lcom/adcolony/sdk/f0;->c()V

    .line 17
    new-instance v0, Lcom/adcolony/sdk/d;

    invoke-direct {v0}, Lcom/adcolony/sdk/d;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->e:Lcom/adcolony/sdk/d;

    .line 18
    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->e()V

    .line 19
    new-instance v0, Lcom/adcolony/sdk/k;

    invoke-direct {v0}, Lcom/adcolony/sdk/k;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/k;

    .line 20
    new-instance v0, Lcom/adcolony/sdk/p;

    invoke-direct {v0}, Lcom/adcolony/sdk/p;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/p;

    .line 21
    invoke-virtual {v0}, Lcom/adcolony/sdk/p;->b()V

    .line 22
    new-instance v0, Lcom/adcolony/sdk/w;

    invoke-direct {v0}, Lcom/adcolony/sdk/w;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->j:Lcom/adcolony/sdk/w;

    .line 23
    invoke-virtual {v0}, Lcom/adcolony/sdk/w;->b()V

    .line 24
    new-instance v0, Lcom/adcolony/sdk/g0;

    invoke-direct {v0}, Lcom/adcolony/sdk/g0;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    .line 25
    invoke-virtual {v0}, Lcom/adcolony/sdk/g0;->e()Z

    .line 26
    new-instance v0, Lcom/adcolony/sdk/i0;

    invoke-direct {v0}, Lcom/adcolony/sdk/i0;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/i0;

    .line 27
    invoke-virtual {v0}, Lcom/adcolony/sdk/i0;->a()V

    .line 28
    new-instance v0, Lcom/adcolony/sdk/b0;

    invoke-direct {v0}, Lcom/adcolony/sdk/b0;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->l:Lcom/adcolony/sdk/b0;

    .line 29
    invoke-virtual {v0}, Lcom/adcolony/sdk/b0;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/h;->w:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adcolony/sdk/AdColony;->a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_125

    .line 36
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    invoke-virtual {v2}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    iput-boolean p2, p0, Lcom/adcolony/sdk/h;->H:Z

    .line 37
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    invoke-virtual {v3}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    iput-boolean p2, p0, Lcom/adcolony/sdk/h;->I:Z

    .line 38
    iget-boolean v1, p0, Lcom/adcolony/sdk/h;->H:Z

    if-eqz v1, :cond_f8

    if-eqz p2, :cond_f8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    .line 39
    invoke-virtual {v1}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/adcolony/sdk/s;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "sdkVersion"

    .line 40
    invoke-static {p2, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/j;

    .line 42
    invoke-virtual {v1}, Lcom/adcolony/sdk/j;->C()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f8

    const/4 p2, 0x1

    goto :goto_f9

    :cond_f8
    const/4 p2, 0x0

    :goto_f9
    iput-boolean p2, p0, Lcom/adcolony/sdk/h;->G:Z

    .line 45
    iget-boolean p2, p0, Lcom/adcolony/sdk/h;->H:Z

    if-eqz p2, :cond_11d

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    invoke-virtual {v1}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/adcolony/sdk/s;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/adcolony/sdk/h;->t:Lorg/json/JSONObject;

    .line 47
    invoke-direct {p0, p2}, Lcom/adcolony/sdk/h;->b(Lorg/json/JSONObject;)V

    .line 51
    :cond_11d
    iget-boolean p2, p0, Lcom/adcolony/sdk/h;->G:Z

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/h;->a(Z)Z

    .line 52
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->H()V

    .line 56
    :cond_125
    new-instance p2, Lcom/adcolony/sdk/h$k;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$k;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "Module.load"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 63
    new-instance p2, Lcom/adcolony/sdk/h$m;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$m;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "Module.unload"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 70
    new-instance p2, Lcom/adcolony/sdk/h$n;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$n;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "AdColony.on_configured"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 102
    new-instance p2, Lcom/adcolony/sdk/h$o;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$o;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "AdColony.get_app_info"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 109
    new-instance p2, Lcom/adcolony/sdk/h$p;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$p;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "AdColony.v4vc_reward"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 116
    new-instance p2, Lcom/adcolony/sdk/h$q;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$q;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "AdColony.zone_info"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 123
    new-instance p2, Lcom/adcolony/sdk/h$r;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$r;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "AdColony.probe_launch_server"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 130
    new-instance p2, Lcom/adcolony/sdk/h$s;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$s;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "Crypto.sha1"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 140
    new-instance p2, Lcom/adcolony/sdk/h$t;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$t;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "Crypto.crc32"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 150
    new-instance p2, Lcom/adcolony/sdk/h$a;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$a;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "Crypto.uuid"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 160
    new-instance p2, Lcom/adcolony/sdk/h$b;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$b;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "Device.query_advertiser_info"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 175
    new-instance p2, Lcom/adcolony/sdk/h$c;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/h$c;-><init>(Lcom/adcolony/sdk/h;)V

    const-string v1, "AdColony.controller_version"

    invoke-static {v1, p2}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 187
    iget-object p2, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    invoke-static {p2}, Lcom/adcolony/sdk/k0;->a(Lcom/adcolony/sdk/g0;)I

    move-result p2

    if-ne p2, v0, :cond_1a7

    const/4 v1, 0x1

    goto :goto_1a8

    :cond_1a7
    const/4 v1, 0x0

    .line 188
    :goto_1a8
    iput-boolean v1, p0, Lcom/adcolony/sdk/h;->K:Z

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1ae

    const/4 p1, 0x1

    .line 189
    :cond_1ae
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->L:Z

    .line 191
    new-instance p1, Lcom/adcolony/sdk/h$d;

    invoke-direct {p1, p0}, Lcom/adcolony/sdk/h$d;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {p1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/adcolony/sdk/h;->o:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyRewardListener;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lcom/adcolony/sdk/h;->p:Lcom/adcolony/sdk/AdColonyRewardListener;

    return-void
.end method

.method a(Lcom/adcolony/sdk/c;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/c;

    return-void
.end method

.method public a(Lcom/adcolony/sdk/l;Lcom/adcolony/sdk/x;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/l;",
            "Lcom/adcolony/sdk/x;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 224
    iget-object p2, p1, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    sget-object p3, Lcom/adcolony/sdk/h;->U:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a8

    .line 225
    iget-boolean p2, p1, Lcom/adcolony/sdk/l;->o:Z

    if-eqz p2, :cond_a4

    .line 226
    iget-object p1, p1, Lcom/adcolony/sdk/l;->n:Ljava/lang/String;

    const-string p2, "Parsing launch response"

    invoke-static {p1, p2}, Lcom/adcolony/sdk/s;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 227
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adcolony/sdk/j;->C()Ljava/lang/String;

    move-result-object p2

    const-string p3, "sdkVersion"

    invoke-static {p1, p3, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    invoke-virtual {p3}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/adcolony/sdk/s;->i(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 231
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/h;->c(Lorg/json/JSONObject;)Z

    move-result p2

    if-nez p2, :cond_62

    .line 232
    iget-boolean p1, p0, Lcom/adcolony/sdk/h;->G:Z

    if-nez p1, :cond_61

    .line 234
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p2, "Incomplete or disabled launch server response. "

    .line 235
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string p2, "Disabling AdColony until next launch."

    .line 236
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object p2, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 237
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    const/4 p1, 0x1

    .line 238
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/h;->b(Z)V

    :cond_61
    return-void

    .line 244
    :cond_62
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/h;->a(Lorg/json/JSONObject;)Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 245
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object p2

    .line 246
    iget-object p3, p0, Lcom/adcolony/sdk/h;->x:Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p2, v0, p3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    invoke-virtual {v0}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "filepath"

    invoke-static {p2, v0, p3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    iget-object p3, p0, Lcom/adcolony/sdk/h;->c:Lcom/adcolony/sdk/m;

    new-instance v0, Lcom/adcolony/sdk/l;

    new-instance v1, Lcom/adcolony/sdk/x;

    const/4 v2, 0x0

    const-string v3, "WebServices.download"

    invoke-direct {v1, v3, v2, p2}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-direct {v0, v1, p0}, Lcom/adcolony/sdk/l;-><init>(Lcom/adcolony/sdk/x;Lcom/adcolony/sdk/l$a;)V

    invoke-virtual {p3, v0}, Lcom/adcolony/sdk/m;->a(Lcom/adcolony/sdk/l;)V

    .line 253
    :cond_a1
    iput-object p1, p0, Lcom/adcolony/sdk/h;->t:Lorg/json/JSONObject;

    goto :goto_e2

    .line 255
    :cond_a4
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->I()V

    goto :goto_e2

    .line 259
    :cond_a8
    iget-object p1, p1, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    iget-object p2, p0, Lcom/adcolony/sdk/h;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 260
    iget-object p1, p0, Lcom/adcolony/sdk/h;->y:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/adcolony/sdk/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d2

    sget-boolean p1, Lcom/adcolony/sdk/m0;->O:Z

    if-nez p1, :cond_d2

    .line 262
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p2, "Downloaded controller sha1 does not match, retrying."

    .line 263
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object p2, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 264
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 265
    invoke-direct {p0}, Lcom/adcolony/sdk/h;->I()V

    return-void

    .line 270
    :cond_d2
    iget-boolean p1, p0, Lcom/adcolony/sdk/h;->G:Z

    if-nez p1, :cond_e2

    iget-boolean p1, p0, Lcom/adcolony/sdk/h;->J:Z

    if-nez p1, :cond_e2

    .line 271
    new-instance p1, Lcom/adcolony/sdk/h$h;

    invoke-direct {p1, p0}, Lcom/adcolony/sdk/h$h;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {p1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    :cond_e2
    :goto_e2
    return-void
.end method

.method a(I)Z
    .registers 7

    .line 365
    iget-object v0, p0, Lcom/adcolony/sdk/h;->b:Lcom/adcolony/sdk/y;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/y;->a(I)Lcom/adcolony/sdk/a0;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/adcolony/sdk/h;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adcolony/sdk/m0;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    return v1

    :cond_16
    const/4 v0, 0x1

    if-eqz p1, :cond_20

    .line 370
    invoke-virtual {p1}, Lcom/adcolony/sdk/m0;->u()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    .line 371
    :cond_20
    new-instance v2, Lcom/adcolony/sdk/h$i;

    invoke-direct {v2, p0, p1}, Lcom/adcolony/sdk/h$i;-><init>(Lcom/adcolony/sdk/h;Lcom/adcolony/sdk/m0;)V

    if-eqz v1, :cond_3b

    .line 384
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_30

    .line 385
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 387
    :cond_30
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3e

    .line 389
    :cond_3b
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_3e
    return v0
.end method

.method a(Landroid/content/Context;Lcom/adcolony/sdk/x;)Z
    .registers 9

    const-string v0, "Amazon"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    :cond_6
    const-string v2, ""

    const/4 v3, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->m()Lcom/adcolony/sdk/w;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/w;->a()Lcom/adcolony/sdk/e0;

    move-result-object v4

    .line 278
    :try_start_11
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_11 .. :try_end_15} :catch_cc
    .catch Ljava/lang/NoSuchMethodError; {:try_start_11 .. :try_end_15} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_17

    :goto_15
    const/4 p1, 0x0

    goto :goto_62

    :catch_17
    move-exception p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 293
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p2, "Advertising ID is not available. Collecting Android ID instead of"

    .line 294
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string p2, " Advertising ID."

    .line 295
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object p2, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 296
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1

    .line 299
    :cond_3a
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->d()Z

    move-result p1

    goto :goto_62

    .line 301
    :catch_4b
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v5, "Google Play Services is out of date, please update to GPS 4.0+. "

    .line 302
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string v5, "Collecting Android ID instead of Advertising ID."

    .line 303
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v5, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 304
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    goto :goto_15

    .line 318
    :goto_62
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    if-nez v3, :cond_6d

    return v1

    .line 320
    :cond_6d
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 321
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    .line 324
    :cond_7d
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/j;->a(Ljava/lang/String;)V

    if-eqz v4, :cond_95

    .line 326
    iget-object v0, v4, Lcom/adcolony/sdk/e0;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "advertisingId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_95
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/j;->c(Z)V

    .line 329
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/j;->b(Z)V

    if-eqz p2, :cond_cb

    .line 332
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object p1

    .line 333
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "advertiser_id"

    invoke-static {p1, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 334
    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/j;->u()Z

    move-result v1

    const-string v2, "limit_ad_tracking"

    invoke-static {p1, v2, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 335
    invoke-virtual {p2, p1}, Lcom/adcolony/sdk/x;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    :cond_cb
    return v0

    .line 336
    :catch_cc
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p2, "Google Play Services ads dependencies are missing. Collecting "

    .line 337
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string p2, "Android ID instead of Advertising ID."

    .line 338
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object p2, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 339
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1
.end method

.method b()Lcom/adcolony/sdk/d;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/h;->e:Lcom/adcolony/sdk/d;

    if-nez v0, :cond_e

    .line 24
    new-instance v0, Lcom/adcolony/sdk/d;

    invoke-direct {v0}, Lcom/adcolony/sdk/d;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->e:Lcom/adcolony/sdk/d;

    .line 25
    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->e()V

    .line 27
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/h;->e:Lcom/adcolony/sdk/d;

    return-object v0
.end method

.method b(Lcom/adcolony/sdk/AdColonyAppOptions;)V
    .registers 2
    .param p1    # Lcom/adcolony/sdk/AdColonyAppOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    iput-object p1, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/adcolony/sdk/h;->w:Ljava/lang/String;

    return-void
.end method

.method b(Z)V
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->D:Z

    return-void
.end method

.method c()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/adcolony/sdk/h;->A:Ljava/lang/String;

    return-object v0
.end method

.method c(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->C:Z

    return-void
.end method

.method d()Lcom/adcolony/sdk/AdColonyInterstitial;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/h;->o:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-object v0
.end method

.method d(Lcom/adcolony/sdk/x;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/adcolony/sdk/h;->s:Lcom/adcolony/sdk/x;

    return-void
.end method

.method d(Z)V
    .registers 2

    .line 6
    iput-boolean p1, p0, Lcom/adcolony/sdk/h;->B:Z

    return-void
.end method

.method e()Lcom/adcolony/sdk/AdColonyAdView;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/h;->n:Lcom/adcolony/sdk/AdColonyAdView;

    return-object v0
.end method

.method f()Lcom/adcolony/sdk/c;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method g()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyCustomMessageListener;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method h()Lcom/adcolony/sdk/j;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/j;

    if-nez v0, :cond_e

    .line 3
    new-instance v0, Lcom/adcolony/sdk/j;

    invoke-direct {v0}, Lcom/adcolony/sdk/j;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/j;

    .line 4
    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->H()V

    .line 6
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/j;

    return-object v0
.end method

.method i()Lcom/adcolony/sdk/k;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/k;

    if-nez v0, :cond_b

    .line 3
    new-instance v0, Lcom/adcolony/sdk/k;

    invoke-direct {v0}, Lcom/adcolony/sdk/k;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/k;

    .line 5
    :cond_b
    iget-object v0, p0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/k;

    return-object v0
.end method

.method j()Lcom/adcolony/sdk/m;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->c:Lcom/adcolony/sdk/m;

    if-nez v0, :cond_b

    .line 3
    new-instance v0, Lcom/adcolony/sdk/m;

    invoke-direct {v0}, Lcom/adcolony/sdk/m;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->c:Lcom/adcolony/sdk/m;

    .line 5
    :cond_b
    iget-object v0, p0, Lcom/adcolony/sdk/h;->c:Lcom/adcolony/sdk/m;

    return-object v0
.end method

.method k()Lcom/adcolony/sdk/p;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/p;

    if-nez v0, :cond_e

    .line 3
    new-instance v0, Lcom/adcolony/sdk/p;

    invoke-direct {v0}, Lcom/adcolony/sdk/p;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/p;

    .line 4
    invoke-virtual {v0}, Lcom/adcolony/sdk/p;->b()V

    .line 6
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/p;

    return-object v0
.end method

.method l()Lorg/json/JSONObject;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->t:Lorg/json/JSONObject;

    return-object v0
.end method

.method m()Lcom/adcolony/sdk/w;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->j:Lcom/adcolony/sdk/w;

    if-nez v0, :cond_e

    .line 3
    new-instance v0, Lcom/adcolony/sdk/w;

    invoke-direct {v0}, Lcom/adcolony/sdk/w;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->j:Lcom/adcolony/sdk/w;

    .line 4
    invoke-virtual {v0}, Lcom/adcolony/sdk/w;->b()V

    .line 6
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/h;->j:Lcom/adcolony/sdk/w;

    return-object v0
.end method

.method n()Lcom/adcolony/sdk/y;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->b:Lcom/adcolony/sdk/y;

    if-nez v0, :cond_e

    .line 3
    new-instance v0, Lcom/adcolony/sdk/y;

    invoke-direct {v0}, Lcom/adcolony/sdk/y;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->b:Lcom/adcolony/sdk/y;

    .line 4
    invoke-virtual {v0}, Lcom/adcolony/sdk/y;->a()V

    .line 6
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/h;->b:Lcom/adcolony/sdk/y;

    return-object v0
.end method

.method o()Lcom/adcolony/sdk/b0;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->l:Lcom/adcolony/sdk/b0;

    if-nez v0, :cond_b

    .line 3
    new-instance v0, Lcom/adcolony/sdk/b0;

    invoke-direct {v0}, Lcom/adcolony/sdk/b0;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->l:Lcom/adcolony/sdk/b0;

    .line 6
    :cond_b
    iget-object v0, p0, Lcom/adcolony/sdk/h;->l:Lcom/adcolony/sdk/b0;

    return-object v0
.end method

.method p()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/h;->w:Ljava/lang/String;

    return-object v0
.end method

.method q()Lcom/iab/omid/library/adcolony/adsession/Partner;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->R:Lcom/iab/omid/library/adcolony/adsession/Partner;

    return-object v0
.end method

.method r()Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object v0
.end method

.method t()Lcom/adcolony/sdk/AdColonyRewardListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->p:Lcom/adcolony/sdk/AdColonyRewardListener;

    return-object v0
.end method

.method u()Lcom/adcolony/sdk/f0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/f0;

    if-nez v0, :cond_e

    .line 2
    new-instance v0, Lcom/adcolony/sdk/f0;

    invoke-direct {v0}, Lcom/adcolony/sdk/f0;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/f0;

    .line 3
    invoke-virtual {v0}, Lcom/adcolony/sdk/f0;->c()V

    .line 5
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/f0;

    return-object v0
.end method

.method v()Lcom/adcolony/sdk/g0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    if-nez v0, :cond_e

    .line 2
    new-instance v0, Lcom/adcolony/sdk/g0;

    invoke-direct {v0}, Lcom/adcolony/sdk/g0;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    .line 3
    invoke-virtual {v0}, Lcom/adcolony/sdk/g0;->e()Z

    .line 5
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/h;->i:Lcom/adcolony/sdk/g0;

    return-object v0
.end method

.method w()Lcom/adcolony/sdk/i0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/i0;

    if-nez v0, :cond_e

    .line 2
    new-instance v0, Lcom/adcolony/sdk/i0;

    invoke-direct {v0}, Lcom/adcolony/sdk/i0;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/i0;

    .line 3
    invoke-virtual {v0}, Lcom/adcolony/sdk/i0;->a()V

    .line 5
    :cond_e
    iget-object v0, p0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/i0;

    return-object v0
.end method

.method x()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/m0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->v:Ljava/util/HashMap;

    return-object v0
.end method

.method y()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyZone;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->u:Ljava/util/HashMap;

    return-object v0
.end method

.method z()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
