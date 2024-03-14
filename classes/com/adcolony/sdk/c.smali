.class Lcom/adcolony/sdk/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field A:Landroid/widget/VideoView;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/l0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/j0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/m0;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/n;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/q;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field m:Z

.field n:Z

.field private o:F

.field private p:D

.field private q:J

.field private r:I

.field private s:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/adcolony/sdk/z;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/iab/omid/library/adcolony/adsession/AdSession;

.field z:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/adcolony/sdk/c;->o:F

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/adcolony/sdk/c;->p:D

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/adcolony/sdk/c;->q:J

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/adcolony/sdk/c;->r:I

    .line 6
    iput p1, p0, Lcom/adcolony/sdk/c;->s:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/adcolony/sdk/c;->o:F

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/adcolony/sdk/c;->p:D

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/adcolony/sdk/c;->q:J

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/adcolony/sdk/c;->r:I

    .line 12
    iput v0, p0, Lcom/adcolony/sdk/c;->s:I

    .line 36
    iput-object p1, p0, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    const/high16 p1, -0x1000000

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;D)D
    .registers 3

    .line 6
    iput-wide p1, p0, Lcom/adcolony/sdk/c;->p:D

    return-wide p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;F)F
    .registers 2

    .line 5
    iput p1, p0, Lcom/adcolony/sdk/c;->o:F

    return p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;I)I
    .registers 2

    .line 3
    iput p1, p0, Lcom/adcolony/sdk/c;->r:I

    return p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/adcolony/sdk/c;->q:J

    return-wide v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;J)J
    .registers 3

    .line 2
    iput-wide p1, p0, Lcom/adcolony/sdk/c;->q:J

    return-wide p1
.end method

.method private a(FD)V
    .registers 7
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 77
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    iget v1, p0, Lcom/adcolony/sdk/c;->j:I

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 79
    iget-object v1, p0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    const-string v2, "ad_session_id"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    float-to-double v1, p1

    const-string p1, "exposure"

    .line 80
    invoke-static {v0, p1, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    const-string p1, "volume"

    .line 81
    invoke-static {v0, p1, p2, p3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 82
    new-instance p1, Lcom/adcolony/sdk/x;

    iget p2, p0, Lcom/adcolony/sdk/c;->k:I

    const-string p3, "AdContainer.on_exposure_change"

    invoke-direct {p1, p3, p2, v0}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    return-void
.end method

.method private a(IILcom/adcolony/sdk/m0;)V
    .registers 8

    .line 67
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->n()F

    move-result v0

    if-eqz p3, :cond_54

    .line 69
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    invoke-static {}, Lcom/adcolony/sdk/k0;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/k0;->f(Ljava/lang/String;)I

    move-result v2

    const-string v3, "app_orientation"

    invoke-static {v1, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 71
    invoke-virtual {p3}, Lcom/adcolony/sdk/m0;->j()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    const-string v3, "width"

    invoke-static {v1, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 72
    invoke-virtual {p3}, Lcom/adcolony/sdk/m0;->i()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    float-to-int p3, p3

    const-string v0, "height"

    invoke-static {v1, v0, p3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string p3, "x"

    .line 73
    invoke-static {v1, p3, p1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string p1, "y"

    .line 74
    invoke-static {v1, p1, p2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 75
    iget-object p1, p0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    const-string p2, "ad_session_id"

    invoke-static {v1, p2, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    new-instance p1, Lcom/adcolony/sdk/x;

    iget p2, p0, Lcom/adcolony/sdk/c;->k:I

    const-string p3, "MRAID.on_size_change"

    invoke-direct {p1, p3, p2, v1}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    :cond_54
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;FD)V
    .registers 4

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/adcolony/sdk/c;->a(FD)V

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;IILcom/adcolony/sdk/m0;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/adcolony/sdk/c;->a(IILcom/adcolony/sdk/m0;)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    .line 13
    new-instance v0, Lcom/adcolony/sdk/c$j;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/c$j;-><init>(Lcom/adcolony/sdk/c;Z)V

    .line 53
    new-instance p1, Lcom/adcolony/sdk/c$a;

    invoke-direct {p1, p0, v0}, Lcom/adcolony/sdk/c$a;-><init>(Lcom/adcolony/sdk/c;Ljava/lang/Runnable;)V

    .line 66
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/adcolony/sdk/c;I)I
    .registers 2

    .line 2
    iput p1, p0, Lcom/adcolony/sdk/c;->s:I

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/c;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/adcolony/sdk/c;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/adcolony/sdk/c;->r:I

    return p0
.end method

.method static synthetic d(Lcom/adcolony/sdk/c;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/adcolony/sdk/c;->s:I

    return p0
.end method

.method static synthetic e(Lcom/adcolony/sdk/c;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/adcolony/sdk/c;->o:F

    return p0
.end method

.method static synthetic f(Lcom/adcolony/sdk/c;)D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/adcolony/sdk/c;->p:D

    return-wide v0
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/q;
    .registers 5

    .line 8
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 9
    new-instance v1, Lcom/adcolony/sdk/q;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/q;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/x;ILcom/adcolony/sdk/c;)V

    .line 10
    invoke-virtual {v1}, Lcom/adcolony/sdk/q;->a()V

    .line 11
    iget-object p1, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method a()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .registers 2

    .line 84
    iput p1, p0, Lcom/adcolony/sdk/c;->i:I

    return-void
.end method

.method a(Landroid/view/View;)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/adcolony/sdk/c;->y:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 105
    :try_start_6
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->removeFriendlyObstruction(Landroid/view/View;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method a(Landroid/view/View;Lcom/iab/omid/library/adcolony/adsession/FriendlyObstructionPurpose;)V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/adcolony/sdk/c;->y:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    const/4 v1, 0x0

    .line 102
    :try_start_7
    invoke-virtual {v0, p1, p2, v1}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/adcolony/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method

.method a(Lcom/iab/omid/library/adcolony/adsession/AdSession;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/adcolony/sdk/c;->y:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    .line 88
    iget-object p1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/c;->a(Ljava/util/Map;)V

    return-void
.end method

.method a(Ljava/util/Map;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/adcolony/sdk/c;->y:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    if-eqz v0, :cond_27

    if-nez p1, :cond_7

    goto :goto_27

    .line 94
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 95
    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/iab/omid/library/adcolony/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/adcolony/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/c;->a(Landroid/view/View;Lcom/iab/omid/library/adcolony/adsession/FriendlyObstructionPurpose;)V

    goto :goto_f

    :cond_27
    :goto_27
    return-void
.end method

.method b()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/adcolony/sdk/c;->i:I

    return v0
.end method

.method b(Lcom/adcolony/sdk/x;)Landroid/view/View;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    .line 4
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    const-string v2, "editable"

    .line 5
    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 7
    new-instance v0, Lcom/adcolony/sdk/n;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    invoke-direct {v0, v2, p1, v1, p0}, Lcom/adcolony/sdk/n;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/x;ILcom/adcolony/sdk/c;)V

    .line 8
    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->a()V

    .line 9
    iget-object p1, p0, Lcom/adcolony/sdk/c;->d:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3a
    const-string v2, "button"

    .line 13
    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 14
    new-instance v0, Lcom/adcolony/sdk/j0;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    invoke-direct {v0, v2, p1, v1, p0}, Lcom/adcolony/sdk/j0;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/x;ILcom/adcolony/sdk/c;)V

    .line 15
    invoke-virtual {v0}, Lcom/adcolony/sdk/j0;->a()V

    .line 16
    iget-object p1, p0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 21
    :cond_6a
    new-instance v0, Lcom/adcolony/sdk/j0;

    iget-object v3, p0, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    const v4, 0x1030141

    move-object v2, v0

    move-object v5, p1

    move v6, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/adcolony/sdk/j0;-><init>(Landroid/content/Context;ILcom/adcolony/sdk/x;ILcom/adcolony/sdk/c;)V

    .line 23
    invoke-virtual {v0}, Lcom/adcolony/sdk/j0;->a()V

    .line 24
    iget-object p1, p0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method b(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/adcolony/sdk/c;->h:I

    return-void
.end method

.method b(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/adcolony/sdk/c;->v:Z

    return-void
.end method

.method c()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/adcolony/sdk/c;->j:I

    return v0
.end method

.method c(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/l0;
    .registers 5

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 3
    new-instance v1, Lcom/adcolony/sdk/l0;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/l0;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/x;ILcom/adcolony/sdk/c;)V

    .line 4
    invoke-virtual {v1}, Lcom/adcolony/sdk/l0;->d()V

    .line 5
    iget-object p1, p0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method c(Z)V
    .registers 2

    .line 8
    iput-boolean p1, p0, Lcom/adcolony/sdk/c;->x:Z

    return-void
.end method

.method d()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/adcolony/sdk/c;->h:I

    return v0
.end method

.method d(Lcom/adcolony/sdk/x;)Lcom/adcolony/sdk/m0;
    .registers 12

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    .line 3
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    const-string v2, "is_module"

    .line 4
    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    .line 5
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v3

    const/4 v8, 0x0

    const-string v9, "module_id"

    if-eqz v2, :cond_42

    .line 8
    invoke-virtual {v3}, Lcom/adcolony/sdk/h;->x()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v9}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/m0;

    if-nez v0, :cond_3e

    .line 10
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Module WebView created with invalid id"

    .line 11
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v0, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 12
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-object v8

    .line 15
    :cond_3e
    invoke-virtual {v0, p1, v1, p0}, Lcom/adcolony/sdk/m0;->a(Lcom/adcolony/sdk/x;ILcom/adcolony/sdk/c;)V

    goto :goto_56

    .line 18
    :cond_42
    :try_start_42
    new-instance v0, Lcom/adcolony/sdk/m0;

    iget-object v4, p0, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    .line 19
    invoke-virtual {v3}, Lcom/adcolony/sdk/h;->n()Lcom/adcolony/sdk/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/y;->d()I

    move-result v6

    move-object v2, v0

    move-object v3, v4

    move-object v4, p1

    move v5, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/adcolony/sdk/m0;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/x;IILcom/adcolony/sdk/c;)V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_56} :catch_84

    .line 32
    :goto_56
    iget-object v2, p0, Lcom/adcolony/sdk/c;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v2, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Lcom/adcolony/sdk/m0;->d()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 36
    invoke-virtual {v0}, Lcom/adcolony/sdk/m0;->c()I

    move-result v2

    const-string v3, "mraid_module_id"

    invoke-static {v1, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 37
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/x;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    return-object v0

    :catch_84
    move-exception p1

    .line 38
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
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

    .line 40
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v0, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 41
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 42
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->disable()Z

    return-object v8
.end method

.method d(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/adcolony/sdk/c;->w:Z

    return-void
.end method

.method e()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method e(Lcom/adcolony/sdk/x;)Z
    .registers 6

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/q;

    if-eqz v1, :cond_2c

    if-nez v2, :cond_27

    goto :goto_2c

    .line 9
    :cond_27
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method f()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/n;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/adcolony/sdk/c;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method f(Lcom/adcolony/sdk/x;)Z
    .registers 6

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5
    iget-object v2, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 7
    iget-object v2, p0, Lcom/adcolony/sdk/c;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_41

    .line 9
    :cond_35
    iget-object v2, p0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    :goto_41
    if-eqz v1, :cond_4b

    if-nez v2, :cond_46

    goto :goto_4b

    .line 15
    :cond_46
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 16
    :cond_4b
    :goto_4b
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method g()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method g(Lcom/adcolony/sdk/x;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    iget-object v2, p0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/l0;

    if-eqz v1, :cond_38

    if-nez v2, :cond_27

    goto :goto_38

    .line 8
    :cond_27
    invoke-virtual {v2}, Lcom/adcolony/sdk/l0;->c()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 9
    invoke-virtual {v2}, Lcom/adcolony/sdk/l0;->j()V

    .line 11
    :cond_30
    invoke-virtual {v2}, Lcom/adcolony/sdk/l0;->a()V

    .line 12
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 13
    :cond_38
    :goto_38
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method h()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/q;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method h(Lcom/adcolony/sdk/x;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    iget-object v3, p0, Lcom/adcolony/sdk/c;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adcolony/sdk/m0;

    if-eqz v3, :cond_3b

    if-nez v2, :cond_2b

    goto :goto_3b

    .line 9
    :cond_2b
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->n()Lcom/adcolony/sdk/y;

    move-result-object p1

    invoke-virtual {v3}, Lcom/adcolony/sdk/m0;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/y;->a(I)Lcom/adcolony/sdk/a0;

    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_3b
    :goto_3b
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method i()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/adcolony/sdk/z;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method i(Lcom/adcolony/sdk/x;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "container_id"

    .line 2
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/adcolony/sdk/c;->j:I

    if-ne v0, v1, :cond_1e

    const-string v0, "ad_session_id"

    .line 3
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method j()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method j(Lcom/adcolony/sdk/x;)V
    .registers 14

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->c:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->d:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "transparent"

    .line 12
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 13
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_4f
    const-string v1, "id"

    .line 15
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/c;->j:I

    const-string v1, "width"

    .line 16
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/c;->h:I

    const-string v1, "height"

    .line 17
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/c;->i:I

    const-string v1, "module_id"

    .line 18
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/c;->k:I

    const-string v1, "viewability_enabled"

    .line 19
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/c;->n:Z

    .line 20
    iget v0, p0, Lcom/adcolony/sdk/c;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7e

    const/4 v0, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v0, 0x0

    :goto_7f
    iput-boolean v0, p0, Lcom/adcolony/sdk/c;->v:Z

    .line 22
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 25
    iget v3, p0, Lcom/adcolony/sdk/c;->h:I

    if-nez v3, :cond_be

    iget v3, p0, Lcom/adcolony/sdk/c;->i:I

    if-nez v3, :cond_be

    .line 26
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/j;->r()I

    move-result v3

    iput v3, p0, Lcom/adcolony/sdk/c;->h:I

    .line 27
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/AdColonyAppOptions;->getMultiWindowEnabled()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->q()I

    move-result v0

    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/adcolony/sdk/k0;->e(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_bb

    .line 29
    :cond_b3
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->q()I

    move-result v0

    :goto_bb
    iput v0, p0, Lcom/adcolony/sdk/c;->i:I

    goto :goto_ca

    .line 31
    :cond_be
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/adcolony/sdk/c;->h:I

    iget v4, p0, Lcom/adcolony/sdk/c;->i:I

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    :goto_ca
    iget-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    new-instance v3, Lcom/adcolony/sdk/c$b;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$b;-><init>(Lcom/adcolony/sdk/c;)V

    const-string v4, "VideoView.create"

    invoke-static {v4, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    new-instance v3, Lcom/adcolony/sdk/c$c;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$c;-><init>(Lcom/adcolony/sdk/c;)V

    const-string v5, "VideoView.destroy"

    invoke-static {v5, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    new-instance v3, Lcom/adcolony/sdk/c$d;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$d;-><init>(Lcom/adcolony/sdk/c;)V

    const-string v6, "WebView.create"

    invoke-static {v6, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    new-instance v3, Lcom/adcolony/sdk/c$e;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$e;-><init>(Lcom/adcolony/sdk/c;)V

    const-string v7, "WebView.destroy"

    invoke-static {v7, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    new-instance v3, Lcom/adcolony/sdk/c$f;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$f;-><init>(Lcom/adcolony/sdk/c;)V

    const-string v8, "TextView.create"

    invoke-static {v8, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    new-instance v3, Lcom/adcolony/sdk/c$g;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$g;-><init>(Lcom/adcolony/sdk/c;)V

    const-string v9, "TextView.destroy"

    invoke-static {v9, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    new-instance v3, Lcom/adcolony/sdk/c$h;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$h;-><init>(Lcom/adcolony/sdk/c;)V

    const-string v10, "ImageView.create"

    invoke-static {v10, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/adcolony/sdk/c;->t:Ljava/util/ArrayList;

    new-instance v3, Lcom/adcolony/sdk/c$i;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$i;-><init>(Lcom/adcolony/sdk/c;)V

    const-string v11, "ImageView.destroy"

    invoke-static {v11, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/adcolony/sdk/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->A:Landroid/widget/VideoView;

    const/16 v1, 0x8

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/adcolony/sdk/c;->A:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 130
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->n:Z

    if-eqz v0, :cond_199

    .line 131
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "advanced_viewability"

    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c;->a(Z)V

    :cond_199
    return-void
.end method

.method k()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/c;->k:I

    return v0
.end method

.method l()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/j0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method m()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/l0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method n()Ljava/util/HashMap;
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
    iget-object v0, p0, Lcom/adcolony/sdk/c;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method o()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->w:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_1d

    if-eq v2, v7, :cond_1d

    if-eq v2, v5, :cond_1d

    if-eq v2, v6, :cond_1d

    if-eq v2, v4, :cond_1d

    if-eq v2, v3, :cond_1d

    const/4 v1, 0x0

    return v1

    .line 8
    :cond_1d
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v8

    .line 9
    invoke-virtual {v8}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v9

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    .line 12
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v12

    const/4 v13, -0x1

    const-string v14, "view_id"

    .line 13
    invoke-static {v12, v14, v13}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 14
    iget-object v13, v0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    const-string v14, "ad_session_id"

    invoke-static {v12, v14, v13}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v13, "container_x"

    .line 15
    invoke-static {v12, v13, v10}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v14, "container_y"

    .line 16
    invoke-static {v12, v14, v11}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v15, "view_x"

    .line 17
    invoke-static {v12, v15, v10}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v10, "view_y"

    .line 18
    invoke-static {v12, v10, v11}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 19
    iget v11, v0, Lcom/adcolony/sdk/c;->j:I

    const-string v3, "id"

    invoke-static {v12, v3, v11}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v3, "AdContainer.on_touch_began"

    if-eqz v2, :cond_135

    const-string v11, "AdContainer.on_touch_ended"

    if-eq v2, v7, :cond_117

    if-eq v2, v6, :cond_10a

    if-eq v2, v5, :cond_fd

    const v5, 0xff00

    if-eq v2, v4, :cond_cb

    const/4 v4, 0x6

    if-eq v2, v4, :cond_71

    goto/16 :goto_13f

    .line 41
    :cond_71
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v13, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v14, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 45
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v15, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v10, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    const-string v4, "x"

    invoke-static {v12, v4, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "y"

    invoke-static {v12, v2, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 49
    iget-boolean v1, v0, Lcom/adcolony/sdk/c;->v:Z

    if-nez v1, :cond_bf

    .line 50
    invoke-virtual {v9}, Lcom/adcolony/sdk/d;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyAdView;

    invoke-virtual {v8, v1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAdView;)V

    .line 52
    :cond_bf
    new-instance v1, Lcom/adcolony/sdk/x;

    iget v2, v0, Lcom/adcolony/sdk/c;->k:I

    invoke-direct {v1, v11, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto/16 :goto_13f

    .line 53
    :cond_cb
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v12, v13, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v12, v14, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 57
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v12, v15, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v10, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 59
    new-instance v1, Lcom/adcolony/sdk/x;

    iget v2, v0, Lcom/adcolony/sdk/c;->k:I

    invoke-direct {v1, v3, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto :goto_13f

    .line 82
    :cond_fd
    new-instance v1, Lcom/adcolony/sdk/x;

    iget v2, v0, Lcom/adcolony/sdk/c;->k:I

    const-string v3, "AdContainer.on_touch_cancelled"

    invoke-direct {v1, v3, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto :goto_13f

    .line 85
    :cond_10a
    new-instance v1, Lcom/adcolony/sdk/x;

    iget v2, v0, Lcom/adcolony/sdk/c;->k:I

    const-string v3, "AdContainer.on_touch_moved"

    invoke-direct {v1, v3, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto :goto_13f

    .line 86
    :cond_117
    iget-boolean v1, v0, Lcom/adcolony/sdk/c;->v:Z

    if-nez v1, :cond_12a

    .line 87
    invoke-virtual {v9}, Lcom/adcolony/sdk/d;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyAdView;

    invoke-virtual {v8, v1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAdView;)V

    .line 89
    :cond_12a
    new-instance v1, Lcom/adcolony/sdk/x;

    iget v2, v0, Lcom/adcolony/sdk/c;->k:I

    invoke-direct {v1, v11, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto :goto_13f

    .line 90
    :cond_135
    new-instance v1, Lcom/adcolony/sdk/x;

    iget v2, v0, Lcom/adcolony/sdk/c;->k:I

    invoke-direct {v1, v3, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    :goto_13f
    return v7
.end method

.method p()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->v:Z

    return v0
.end method

.method q()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->x:Z

    return v0
.end method

.method r()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/adcolony/sdk/c;->l:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    new-instance v1, Lcom/adcolony/sdk/x;

    iget v2, p0, Lcom/adcolony/sdk/c;->k:I

    const-string v3, "AdSession.on_error"

    invoke-direct {v1, v3, v2, v0}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    return-void
.end method
