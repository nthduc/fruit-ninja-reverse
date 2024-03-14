.class public Lcom/chartboost/sdk/impl/u1;
.super Lcom/chartboost/sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/u1$c;,
        Lcom/chartboost/sdk/impl/u1$d;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Z

.field C:I

.field D:I

.field private E:I

.field private F:I

.field private G:I

.field H:I

.field I:I

.field J:I

.field K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field P:I

.field private Q:Z

.field private R:I

.field private S:I

.field private final l:Lcom/chartboost/sdk/Libraries/f;

.field private final m:Lcom/chartboost/sdk/Networking/g;

.field private final n:Lcom/chartboost/sdk/Tracking/a;

.field final o:Lcom/chartboost/sdk/e;

.field p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:F

.field private x:F

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Networking/g;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/e;)V
    .registers 9

    .line 1
    invoke-direct {p0, p1, p6, p7}, Lcom/chartboost/sdk/f;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V

    const-string p1, "UNKNOWN"

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u1;->p:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u1;->q:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u1;->r:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->s:I

    .line 7
    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->t:I

    .line 8
    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->u:I

    .line 9
    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->v:I

    const/4 p4, 0x0

    .line 12
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->w:F

    .line 13
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->x:F

    const/4 p4, 0x0

    .line 15
    iput-boolean p4, p0, Lcom/chartboost/sdk/impl/u1;->y:Z

    const-wide/16 p6, 0x0

    .line 16
    iput-wide p6, p0, Lcom/chartboost/sdk/impl/u1;->z:J

    .line 17
    iput-wide p6, p0, Lcom/chartboost/sdk/impl/u1;->A:J

    .line 18
    iput-boolean p4, p0, Lcom/chartboost/sdk/impl/u1;->B:Z

    .line 21
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->C:I

    .line 22
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->D:I

    .line 23
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->E:I

    .line 24
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->F:I

    .line 26
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->G:I

    .line 28
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->H:I

    .line 29
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->I:I

    .line 30
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->J:I

    .line 31
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->K:I

    .line 33
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->L:I

    .line 34
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->M:I

    .line 35
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->N:I

    .line 36
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->O:I

    const/4 p6, -0x1

    .line 38
    iput p6, p0, Lcom/chartboost/sdk/impl/u1;->P:I

    .line 39
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/u1;->Q:Z

    .line 40
    iput p6, p0, Lcom/chartboost/sdk/impl/u1;->R:I

    .line 42
    iput p4, p0, Lcom/chartboost/sdk/impl/u1;->S:I

    .line 131
    iput-object p2, p0, Lcom/chartboost/sdk/impl/u1;->l:Lcom/chartboost/sdk/Libraries/f;

    .line 132
    iput-object p3, p0, Lcom/chartboost/sdk/impl/u1;->m:Lcom/chartboost/sdk/Networking/g;

    .line 133
    iput-object p5, p0, Lcom/chartboost/sdk/impl/u1;->n:Lcom/chartboost/sdk/Tracking/a;

    .line 134
    iput-object p8, p0, Lcom/chartboost/sdk/impl/u1;->o:Lcom/chartboost/sdk/e;

    return-void
.end method

.method private C()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_b

    .line 4
    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private D()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->v:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->v()V

    .line 3
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->v:I

    :cond_f
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/u1;J)J
    .registers 3

    .line 2
    iput-wide p1, p0, Lcom/chartboost/sdk/impl/u1;->z:J

    return-wide p1
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/u1;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/chartboost/sdk/impl/u1;->r:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/chartboost/sdk/Model/c;)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 9
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    .line 10
    new-instance v0, Lcom/chartboost/sdk/d$a;

    iget-object v1, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/d$a;-><init>(Lcom/chartboost/sdk/d;I)V

    .line 11
    iput-object p1, v0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    .line 12
    iget-object p1, p0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/u1;Z)Z
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/u1;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/u1;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/u1;->z:J

    return-wide v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/u1;J)J
    .registers 3

    .line 2
    iput-wide p1, p0, Lcom/chartboost/sdk/impl/u1;->A:J

    return-wide p1
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/u1;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/chartboost/sdk/impl/u1;->B:Z

    return p0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/u1;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/u1;->A:J

    return-wide v0
.end method

.method private h(Ljava/lang/String;)V
    .registers 7

    const-string v0, "CBWebViewProtocol"

    if-eqz p1, :cond_31

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u1;->m:Lcom/chartboost/sdk/Networking/g;

    if-eqz v1, :cond_31

    .line 2
    new-instance v1, Lcom/chartboost/sdk/Networking/c;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "GET"

    invoke-direct {v1, v4, p1, v2, v3}, Lcom/chartboost/sdk/Networking/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V

    .line 3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u1;->m:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### Sending VAST Tracking Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 6
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### Sending VAST Tracking Event Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method


# virtual methods
.method A()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->d()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_20

    .line 6
    :cond_f
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/impl/u1;->P:I

    if-eq v1, v2, :cond_1a

    .line 7
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1a
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u1;->Q:Z

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->R:I

    :cond_20
    :goto_20
    return-void
.end method

.method public B()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1;->n:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u1;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/view/Window;)I
    .registers 3

    const v0, 0x1020002

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method protected a(Landroid/content/Context;)Lcom/chartboost/sdk/f$b;
    .registers 4

    .line 4
    new-instance v0, Lcom/chartboost/sdk/impl/u1$d;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u1;->q:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/u1$d;-><init>(Lcom/chartboost/sdk/impl/u1;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const-string p1, "error"

    return-object p1

    :cond_b
    const-string p1, "portrait"

    return-object p1

    :cond_e
    const-string p1, "landscape"

    return-object p1

    :cond_11
    const-string p1, "none"

    return-object p1
.end method

.method public a()V
    .registers 1

    .line 5
    invoke-super {p0}, Lcom/chartboost/sdk/f;->a()V

    .line 6
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->A()V

    return-void
.end method

.method public a(F)V
    .registers 2

    .line 8
    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->x:F

    return-void
.end method

.method public b()V
    .registers 5

    .line 23
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->i()Lcom/chartboost/sdk/impl/u1$d;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 25
    iget-object v1, v0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    const-string v1, "CBWebViewProtocol"

    const-string v3, "Destroying the webview object and cleaning up the references"

    .line 26
    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, v0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 28
    iput-object v2, v0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    .line 30
    :cond_19
    iget-object v1, v0, Lcom/chartboost/sdk/impl/u1$d;->i:Lcom/chartboost/sdk/impl/s1;

    if-eqz v1, :cond_1f

    .line 31
    iput-object v2, v0, Lcom/chartboost/sdk/impl/u1$d;->i:Lcom/chartboost/sdk/impl/s1;

    .line 32
    :cond_1f
    iget-object v1, v0, Lcom/chartboost/sdk/impl/u1$d;->j:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_25

    .line 33
    iput-object v2, v0, Lcom/chartboost/sdk/impl/u1$d;->j:Landroid/widget/RelativeLayout;

    .line 34
    :cond_25
    iget-object v1, v0, Lcom/chartboost/sdk/impl/u1$d;->k:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2b

    .line 35
    iput-object v2, v0, Lcom/chartboost/sdk/impl/u1$d;->k:Landroid/widget/RelativeLayout;

    .line 38
    :cond_2b
    invoke-super {p0}, Lcom/chartboost/sdk/f;->b()V

    return-void
.end method

.method public b(F)V
    .registers 2

    .line 40
    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->w:F

    return-void
.end method

.method public b(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->S:I

    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 6

    const-string v0, "CBWebViewProtocol"

    .line 41
    :try_start_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->i()Lcom/chartboost/sdk/impl/u1$d;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 43
    iget-object v1, v1, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    if-eqz v1, :cond_3a

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:Chartboost.EventHandler.handleNativeEvent(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \"\")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling native to javascript: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/impl/t1;->loadUrl(Ljava/lang/String;)V

    goto :goto_59

    :cond_3a
    const-string p1, "Calling native to javascript webview is null"

    .line 49
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_40

    goto :goto_59

    :catch_40
    move-exception p1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling native to javascript. Cannot open url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public b(Lorg/json/JSONObject;)Z
    .registers 6

    .line 3
    iget-object p1, p0, Lcom/chartboost/sdk/impl/u1;->l:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/f;->a()Lcom/chartboost/sdk/Libraries/g;

    move-result-object p1

    iget-object p1, p1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const/4 v0, 0x0

    const-string v1, "CBWebViewProtocol"

    if-nez p1, :cond_18

    const-string p1, "External Storage path is unavailable or media not mounted"

    .line 5
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return v0

    .line 10
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/u1;->r:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object p1

    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const-string p1, "Invalid adId being passed in the response"

    .line 12
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return v0

    .line 16
    :cond_4f
    iget-object p1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object p1, p1, Lcom/chartboost/sdk/Model/c;->q:Ljava/lang/String;

    if-nez p1, :cond_60

    const-string p1, "No html data found in memory"

    .line 18
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return v0

    .line 22
    :cond_60
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u1;->q:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method c(Landroid/content/Context;)V
    .registers 5

    .line 15
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    .line 19
    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 20
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 21
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u1;->a(Landroid/view/Window;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->G:I

    .line 25
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->C:I

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->D:I

    if-nez v0, :cond_29

    .line 26
    :cond_26
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/u1;->d(Landroid/content/Context;)V

    .line 29
    :cond_29
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 30
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->D:I

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->G:I

    sub-int/2addr v0, v1

    .line 32
    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->E:I

    if-ne p1, v1, :cond_3a

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->F:I

    if-eq v0, v1, :cond_3e

    .line 33
    :cond_3a
    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->E:I

    .line 34
    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->F:I

    :cond_3e
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 8

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "Unknown Webview error"

    .line 3
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1;->n:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v1, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v3, v2, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview error occurred closing the webview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CBWebViewProtocol"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 6
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->a()V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 4

    .line 7
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/u1;->Q:Z

    const-string v1, "allowOrientationChange"

    .line 8
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u1;->Q:Z

    .line 9
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->R:I

    .line 11
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u1;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "forceOrientation"

    .line 12
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/u1;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->R:I

    .line 14
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->o()V

    return-void
.end method

.method public d(Ljava/lang/String;)I
    .registers 3

    const-string v0, "portrait"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const-string v0, "landscape"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method d(Landroid/content/Context;)V
    .registers 3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 6
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->C:I

    .line 7
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/chartboost/sdk/impl/u1;->D:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1;->n:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v1, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v3, v2, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/u1;->C()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_28

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/u1;->h(Ljava/lang/String;)V

    goto :goto_18

    :cond_28
    return-void
.end method

.method public g()F
    .registers 2

    .line 4
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->w:F

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "Unknown Webview warning message"

    .line 2
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1;->n:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v1, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v3, v2, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview warning occurred closing the webview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CBWebViewProtocol"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()F
    .registers 2

    .line 7
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->x:F

    return v0
.end method

.method public bridge synthetic i()Lcom/chartboost/sdk/f$b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->i()Lcom/chartboost/sdk/impl/u1$d;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/chartboost/sdk/impl/u1$d;
    .registers 2

    .line 2
    invoke-super {p0}, Lcom/chartboost/sdk/f;->i()Lcom/chartboost/sdk/f$b;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/u1$d;

    return-object v0
.end method

.method public j()Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->S:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    if-ne v0, v1, :cond_f

    return v1

    .line 7
    :cond_f
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->b()V

    .line 8
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->a()V

    return v1
.end method

.method public k()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/chartboost/sdk/f;->k()V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->i()Lcom/chartboost/sdk/impl/u1$d;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3
    iget-object v1, v0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    if-eqz v1, :cond_24

    .line 4
    iget-object v1, p0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/u1$b;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/u1$b;-><init>(Lcom/chartboost/sdk/impl/u1;Lcom/chartboost/sdk/impl/u1$d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1;->n:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u1;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public l()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/chartboost/sdk/f;->l()V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->i()Lcom/chartboost/sdk/impl/u1$d;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3
    iget-object v1, v0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    if-eqz v1, :cond_24

    .line 4
    iget-object v1, p0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/u1$a;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/u1$a;-><init>(Lcom/chartboost/sdk/impl/u1;Lcom/chartboost/sdk/impl/u1$d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1;->n:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u1;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method o()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->d()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 2
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2f

    .line 7
    :cond_f
    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->R:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    goto :goto_2c

    :cond_15
    if-nez v1, :cond_18

    goto :goto_2b

    .line 12
    :cond_18
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/u1;->Q:Z

    if-eqz v1, :cond_1e

    const/4 v2, -0x1

    goto :goto_2c

    .line 15
    :cond_1e
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v2, 0x0

    .line 22
    :goto_2c
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method p()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->i()Lcom/chartboost/sdk/impl/u1$d;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 2
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/u1;->B:Z

    if-nez v1, :cond_b

    goto :goto_35

    :cond_b
    const/4 v1, 0x2

    .line 11
    new-array v1, v1, [I

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 13
    aget v2, v1, v2

    const/4 v3, 0x1

    .line 14
    aget v1, v1, v3

    .line 15
    iget v3, p0, Lcom/chartboost/sdk/impl/u1;->G:I

    sub-int/2addr v1, v3

    .line 16
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 19
    iput v2, p0, Lcom/chartboost/sdk/impl/u1;->H:I

    .line 20
    iput v1, p0, Lcom/chartboost/sdk/impl/u1;->I:I

    add-int/2addr v3, v2

    .line 21
    iput v3, p0, Lcom/chartboost/sdk/impl/u1;->J:I

    add-int/2addr v0, v1

    .line 22
    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->K:I

    .line 25
    iput v2, p0, Lcom/chartboost/sdk/impl/u1;->L:I

    .line 26
    iput v1, p0, Lcom/chartboost/sdk/impl/u1;->M:I

    .line 27
    iput v3, p0, Lcom/chartboost/sdk/impl/u1;->N:I

    .line 28
    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->O:I

    return-void

    .line 29
    :cond_35
    :goto_35
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->H:I

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->L:I

    .line 30
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->I:I

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->M:I

    .line 31
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->J:I

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->N:I

    .line 32
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->K:I

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->O:I

    return-void
.end method

.method public q()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->p()V

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->L:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->M:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "y"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->N:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->O:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->p()V

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->H:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->I:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "y"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->J:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->K:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->E:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->F:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/u1;->Q:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "allowOrientationChange"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->R:I

    .line 3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/u1;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "forceOrientation"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->C:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/u1;->D:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->u:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->h()V

    .line 3
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->u:I

    :cond_f
    return-void
.end method

.method public w()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/u1;->y:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    if-eqz v0, :cond_14

    .line 3
    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->v()V

    :cond_14
    return-void
.end method

.method public x()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->t:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_d

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/u1;->D()V

    .line 3
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->t:I

    :cond_d
    return-void
.end method

.method public y()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v1, v0, Lcom/chartboost/sdk/Model/c;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    .line 2
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/u1;->y:Z

    if-nez v1, :cond_1e

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u1;->n:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->x()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u1;->y:Z

    .line 8
    :cond_1e
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/u1;->a(Lcom/chartboost/sdk/Model/c;)V

    return-void
.end method

.method public z()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->s:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_15

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->p()V

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u1;->v()V

    .line 4
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/u1;->D()V

    .line 5
    iget v0, p0, Lcom/chartboost/sdk/impl/u1;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/u1;->s:I

    :cond_15
    return-void
.end method
