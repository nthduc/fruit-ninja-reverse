.class public Lcom/chartboost/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/chartboost/sdk/i;

.field private final b:Lcom/chartboost/sdk/Tracking/a;

.field private final c:Landroid/os/Handler;

.field public final d:Lcom/chartboost/sdk/e;

.field e:Lcom/chartboost/sdk/CBImpressionActivity;

.field f:Lcom/chartboost/sdk/Model/c;

.field private g:Z

.field private h:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/e;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 3
    iput-object p1, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/Model/c;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/chartboost/sdk/d;->g:Z

    .line 19
    iput-object p2, p0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/i;

    .line 20
    iput-object p3, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/Tracking/a;

    .line 21
    iput-object p4, p0, Lcom/chartboost/sdk/d;->c:Landroid/os/Handler;

    .line 22
    iput-object p5, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/e;

    return-void
.end method

.method private a(Lcom/chartboost/sdk/Libraries/j;)Z
    .registers 3

    if-nez p1, :cond_a

    .line 11
    iget-object p1, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method private d(Lcom/chartboost/sdk/Model/c;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/e;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->c(Lcom/chartboost/sdk/Model/c;)V

    return-void
.end method

.method private e(Lcom/chartboost/sdk/Model/c;)V
    .registers 6

    .line 9
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void

    .line 14
    :cond_c
    iget-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_16

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/e;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/c;)V

    return-void

    .line 19
    :cond_16
    iget-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/Model/c;

    if-eqz v0, :cond_22

    if-eq v0, p1, :cond_22

    .line 21
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void

    .line 25
    :cond_22
    iput-object p1, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/Model/c;

    .line 27
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    .line 28
    iget v2, p1, Lcom/chartboost/sdk/Model/c;->a:I

    if-eq v2, v1, :cond_39

    const/4 v3, 0x2

    if-ne v2, v3, :cond_31

    goto :goto_39

    :cond_31
    if-nez v2, :cond_40

    .line 32
    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/chartboost/sdk/a;->willDisplayInterstitial(Ljava/lang/String;)V

    goto :goto_40

    .line 33
    :cond_39
    :goto_39
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/chartboost/sdk/a;->willDisplayVideo(Ljava/lang/String;)V

    .line 39
    :cond_40
    :goto_40
    sget-object v0, Lcom/chartboost/sdk/j;->e:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_54

    .line 45
    new-instance v0, Lcom/chartboost/sdk/d$a;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v2}, Lcom/chartboost/sdk/d$a;-><init>(Lcom/chartboost/sdk/d;I)V

    .line 46
    iput-object p1, v0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    .line 47
    iget-object p1, p0, Lcom/chartboost/sdk/d;->c:Landroid/os/Handler;

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 51
    :cond_54
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/c;)V

    return-void
.end method

.method private e(Landroid/app/Activity;)Z
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private m()Z
    .registers 4

    const-string v0, "CBUIManager.closeImpressionImpl"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 3
    iget v1, v0, Lcom/chartboost/sdk/Model/c;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    return v1

    .line 6
    :cond_18
    new-instance v0, Lcom/chartboost/sdk/d$a;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2}, Lcom/chartboost/sdk/d$a;-><init>(Lcom/chartboost/sdk/d;I)V

    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    return v1

    :cond_22
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/d;->h:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_c

    iget v0, v0, Lcom/chartboost/sdk/Libraries/j;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 2
    :cond_c
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Libraries/j;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->h:Lcom/chartboost/sdk/Libraries/j;

    .line 4
    :cond_13
    iget-object p1, p0, Lcom/chartboost/sdk/d;->h:Lcom/chartboost/sdk/Libraries/j;

    return-object p1
.end method

.method a()V
    .registers 2

    const-string v0, "CBUIManager.clearImpressionActivity"

    .line 9
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    return-void
.end method

.method a(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .registers 3

    const-string v0, "CBUIManager.setImpressionActivity"

    .line 5
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_11

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    .line 8
    iput-object p1, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    :cond_11
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/c;)V
    .registers 5

    .line 14
    iget v0, p1, Lcom/chartboost/sdk/Model/c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 15
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/e;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 17
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_21

    .line 18
    :cond_f
    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    if-ne v0, v2, :cond_21

    .line 19
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/e;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 21
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/c;)V

    .line 25
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->y()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 28
    :cond_3d
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_52
    return-void
.end method

.method a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_49

    .line 29
    iget v1, p2, Lcom/chartboost/sdk/Model/c;->b:I

    if-eq v1, v0, :cond_46

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    const/4 p1, 0x3

    if-eq v1, p1, :cond_46

    goto :goto_49

    .line 37
    :cond_e
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/c;->u()Z

    move-result v1

    if-nez v1, :cond_49

    .line 38
    sget-object v1, Lcom/chartboost/sdk/j;->e:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v1

    if-eqz v1, :cond_24

    instance-of p1, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez p1, :cond_24

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_24
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/e;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error onActivityStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/chartboost/sdk/Model/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBUIManager"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_49

    .line 48
    :cond_46
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/c;)V

    :cond_49
    :goto_49
    return v0
.end method

.method b(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "CBUIManager.onDestroyImpl"

    .line 6
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-nez v0, :cond_14

    .line 9
    iget-object v1, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne p1, v1, :cond_14

    iget-object p1, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/Model/c;

    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    move-object p1, v0

    .line 16
    :goto_15
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/e;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 18
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->d(Lcom/chartboost/sdk/Model/c;)V

    :cond_20
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/Model/c;

    return-void
.end method

.method public b(Lcom/chartboost/sdk/Model/c;)V
    .registers 3

    const-string v0, "CBUIManager.queueDisplayView"

    .line 1
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_16

    .line 5
    :cond_13
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/d;->e(Lcom/chartboost/sdk/Model/c;)V

    :goto_16
    return-void
.end method

.method b()Z
    .registers 3

    .line 21
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lcom/chartboost/sdk/Model/c;->E:Z

    .line 25
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/c;)V

    return v1
.end method

.method public c()Lcom/chartboost/sdk/e;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->d()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/d;->d:Lcom/chartboost/sdk/e;

    return-object v0
.end method

.method c(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "CBUIManager.onStartImpl"

    .line 18
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    .line 21
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_15

    .line 23
    move-object v1, p1

    check-cast v1, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    .line 29
    :cond_15
    sget-object v1, Lcom/chartboost/sdk/j;->e:Lcom/chartboost/sdk/Chartboost$CBFramework;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-eqz p1, :cond_50

    if-nez v1, :cond_2e

    .line 30
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/d;->e(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_50

    :cond_2e
    if-eqz v0, :cond_32

    .line 34
    iput-boolean v2, p0, Lcom/chartboost/sdk/d;->g:Z

    .line 37
    :cond_32
    iget-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/d;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/Model/c;

    .line 41
    :cond_3d
    iget-object v0, p0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->j()V

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/i;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/i;->a(Landroid/app/Activity;)V

    .line 43
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 45
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->s()V

    :cond_50
    :goto_50
    return-void
.end method

.method public c(Lcom/chartboost/sdk/Model/c;)V
    .registers 5

    .line 6
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    const-class v2, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "isChartboost"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    :try_start_14
    sget-object v2, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    iput-boolean v1, p0, Lcom/chartboost/sdk/d;->g:Z
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_1b} :catch_1c

    goto :goto_2b

    :catch_1c
    const-string v0, "CBUIManager"

    const-string v1, "Please add CBImpressionActivity in AndroidManifest.xml following README.md instructions."

    .line 14
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/Model/c;

    .line 17
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :goto_2b
    return-void
.end method

.method public d()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/d;->e:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object v0
.end method

.method d(Landroid/app/Activity;)V
    .registers 4

    .line 3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/d;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object p1

    const-string v0, "CBUIManager.onStopImpl"

    .line 4
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 6
    iget-object v1, v0, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v1, :cond_26

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/e;

    move-result-object v1

    .line 8
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result p1

    if-eqz p1, :cond_26

    if-eqz v1, :cond_26

    .line 9
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/e;->e(Lcom/chartboost/sdk/Model/c;)V

    .line 10
    iput-object v0, p0, Lcom/chartboost/sdk/d;->f:Lcom/chartboost/sdk/Model/c;

    :cond_26
    return-void
.end method

.method e()Lcom/chartboost/sdk/Model/c;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->c()Lcom/chartboost/sdk/e;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_d

    .line 2
    :cond_9
    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->a()Lcom/chartboost/sdk/impl/r1;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r1;->e()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_1b

    .line 7
    :cond_16
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r1;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    return-object v0

    :cond_1b
    :goto_1b
    return-object v1
.end method

.method public f()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method g()Z
    .registers 3

    const-string v0, "CBUIManager.onBackPressedCallback"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 5
    :cond_d
    iget-boolean v0, p0, Lcom/chartboost/sdk/d;->g:Z

    if-eqz v0, :cond_18

    .line 6
    iput-boolean v1, p0, Lcom/chartboost/sdk/d;->g:Z

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->h()Z

    const/4 v0, 0x1

    return v0

    :cond_18
    return v1
.end method

.method h()Z
    .registers 2

    const-string v0, "CBUIManager.onBackPressedImpl"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/d;->m()Z

    move-result v0

    return v0
.end method

.method i()V
    .registers 2

    const-string v0, "CBUIManager.onCreateImpl"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->l()V

    return-void
.end method

.method j()V
    .registers 3

    const-string v0, "CBUIManager.onPauseImpl"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->o()V

    :cond_f
    return-void
.end method

.method k()V
    .registers 3

    const-string v0, "CBUIManager.onResumeImpl"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/d;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lcom/chartboost/sdk/Chartboost$CBFramework;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/i;->j()V

    :cond_17
    if-eqz v0, :cond_1c

    .line 9
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->r()V

    :cond_1c
    return-void
.end method

.method l()V
    .registers 2

    const-string v0, "CBUIManager.onStop"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->a()V

    return-void
.end method
