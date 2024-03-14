.class public Lcom/chartboost/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/chartboost/sdk/impl/l1;

.field private final b:Lcom/chartboost/sdk/impl/n;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field e:Lcom/chartboost/sdk/impl/r1;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/n;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/l1;",
            "Lcom/chartboost/sdk/impl/n;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/chartboost/sdk/e;->f:I

    .line 16
    iput-object p1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/l1;

    .line 17
    iput-object p2, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/impl/n;

    .line 18
    iput-object p3, p0, Lcom/chartboost/sdk/e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    iput-object p4, p0, Lcom/chartboost/sdk/e;->d:Landroid/os/Handler;

    return-void
.end method

.method private f(Lcom/chartboost/sdk/Model/c;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    const-string v1, "CBViewController"

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/r1;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-eq v0, p1, :cond_17

    const-string v0, "Impression already visible"

    .line 3
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void

    .line 8
    :cond_17
    iget v0, p1, Lcom/chartboost/sdk/Model/c;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 9
    :goto_20
    iput v2, p1, Lcom/chartboost/sdk/Model/c;->b:I

    .line 11
    iget-object v4, p1, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-virtual {v4}, Lcom/chartboost/sdk/d;->d()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2e

    .line 13
    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_2f

    :cond_2e
    move-object v6, v5

    :goto_2f
    if-nez v6, :cond_35

    .line 16
    invoke-virtual {p1, v5}, Lcom/chartboost/sdk/Model/c;->a(Landroid/widget/RelativeLayout;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v6

    :cond_35
    if-eqz v6, :cond_40

    const-string v0, "Unable to create the view while trying th display the impression"

    .line 18
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v6}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void

    .line 22
    :cond_40
    iget-object v5, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    const/4 v6, -0x1

    if-nez v5, :cond_5e

    .line 23
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v5

    new-instance v7, Lcom/chartboost/sdk/impl/r1;

    invoke-direct {v7, v4, p1}, Lcom/chartboost/sdk/impl/r1;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/Model/c;)V

    invoke-virtual {v5, v7}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chartboost/sdk/impl/r1;

    iput-object v5, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    .line 24
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v7}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :cond_5e
    iget-object v5, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v5, v5, Lcom/chartboost/sdk/Model/a;->b:I

    iget-object v7, p0, Lcom/chartboost/sdk/e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/chartboost/sdk/Model/h;

    invoke-static {v4, v5, v7}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/app/Activity;ILcom/chartboost/sdk/Model/h;)V

    .line 28
    iget v5, p0, Lcom/chartboost/sdk/e;->f:I

    if-ne v5, v6, :cond_88

    iget v5, p1, Lcom/chartboost/sdk/Model/c;->a:I

    if-eq v5, v3, :cond_77

    if-ne v5, v2, :cond_88

    .line 29
    :cond_77
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    iput v2, p0, Lcom/chartboost/sdk/e;->f:I

    .line 30
    invoke-static {v4}, Lcom/chartboost/sdk/Chartboost;->setActivityAttrs(Landroid/app/Activity;)V

    .line 32
    :cond_88
    iget-object v2, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/r1;->f()V

    const-string v2, "Displaying the impression"

    .line 33
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    iput-object v1, p1, Lcom/chartboost/sdk/Model/c;->z:Lcom/chartboost/sdk/impl/r1;

    if-eqz v0, :cond_d9

    .line 36
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_a9

    .line 37
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/r1;->b()Lcom/chartboost/sdk/impl/m1;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/l1;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/m1;->a(Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/Model/a;)V

    .line 41
    :cond_a9
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v0, v3, :cond_b0

    const/4 v3, 0x6

    .line 43
    :cond_b0
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->o:I

    invoke-static {v0}, Lcom/chartboost/sdk/impl/l1;->a(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 48
    :cond_be
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->i()V

    .line 49
    new-instance v0, Lcom/chartboost/sdk/d$a;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/d$a;-><init>(Lcom/chartboost/sdk/d;I)V

    .line 50
    iput-object p1, v0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    .line 51
    iget-object v1, p0, Lcom/chartboost/sdk/e;->a:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v1, v3, p1, v0, p0}, Lcom/chartboost/sdk/impl/l1;->a(ILcom/chartboost/sdk/Model/c;Ljava/lang/Runnable;Lcom/chartboost/sdk/e;)V

    .line 52
    iget-object p1, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/n;->a()V

    :cond_d9
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/r1;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/Model/c;)V
    .registers 4

    const-string v0, "CBViewController"

    const-string v1, "Dismissing impression"

    .line 1
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->d()Landroid/app/Activity;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/chartboost/sdk/e$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/chartboost/sdk/e$a;-><init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;)V

    .line 23
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/c;->B:Z

    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Model/c;->a(Ljava/lang/Runnable;)V

    goto :goto_1d

    .line 26
    :cond_1a
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_1d
    return-void
.end method

.method a(Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;)V
    .registers 6

    .line 27
    new-instance v0, Lcom/chartboost/sdk/d$a;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/d$a;-><init>(Lcom/chartboost/sdk/d;I)V

    .line 28
    iput-object p1, v0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    .line 29
    iget-object v1, p0, Lcom/chartboost/sdk/e;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->n()V

    .line 32
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    iget-object v1, p0, Lcom/chartboost/sdk/e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/h;

    invoke-static {p2, v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(Landroid/app/Activity;ILcom/chartboost/sdk/Model/h;)V

    .line 33
    iget v0, p0, Lcom/chartboost/sdk/e;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    iget p1, p1, Lcom/chartboost/sdk/Model/c;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_32

    const/4 v0, 0x2

    if-ne p1, v0, :cond_41

    .line 34
    :cond_32
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/chartboost/sdk/e;->f:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    iput v1, p0, Lcom/chartboost/sdk/e;->f:I

    :cond_41
    return-void
.end method

.method a(Lcom/chartboost/sdk/d;)V
    .registers 5

    const-string v0, "CBViewController"

    const-string v1, "Attempting to close impression activity"

    .line 36
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/chartboost/sdk/d;->d()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 38
    instance-of v2, v1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v2, :cond_1c

    const-string v2, "Closing impression activity"

    .line 39
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/chartboost/sdk/d;->a()V

    .line 41
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1c
    return-void
.end method

.method b(Lcom/chartboost/sdk/Model/c;)V
    .registers 3

    .line 1
    iget v0, p1, Lcom/chartboost/sdk/Model/c;->b:I

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/e;->f(Lcom/chartboost/sdk/Model/c;)V

    :cond_7
    return-void
.end method

.method c(Lcom/chartboost/sdk/Model/c;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->d()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Landroid/widget/RelativeLayout;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->f()Lcom/chartboost/sdk/f$b;

    move-result-object v2

    if-eqz v0, :cond_23

    if-nez v2, :cond_11

    goto :goto_23

    :cond_11
    if-eqz v1, :cond_17

    .line 11
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void

    :cond_17
    const/4 v1, 0x2

    .line 15
    iput v1, p1, Lcom/chartboost/sdk/Model/c;->b:I

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/n;->a()V

    return-void

    .line 18
    :cond_23
    :goto_23
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public d(Lcom/chartboost/sdk/Model/c;)V
    .registers 10

    const-string v0, "CBViewController"

    const-string v1, "Removing impression"

    .line 1
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 2
    iput v0, p1, Lcom/chartboost/sdk/Model/c;->b:I

    .line 3
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/e;->b:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/n;->c()V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/e;->d:Landroid/os/Handler;

    new-instance v7, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->y()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/e;->d:Landroid/os/Handler;

    new-instance v7, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/chartboost/sdk/Model/c;->n:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :cond_45
    iget-object p1, p1, Lcom/chartboost/sdk/Model/c;->i:Lcom/chartboost/sdk/d;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/d;)V

    return-void
.end method

.method e(Lcom/chartboost/sdk/Model/c;)V
    .registers 4

    const-string v0, "CBViewController"

    const-string v1, "Removing impression silently"

    .line 1
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->a()V

    .line 6
    :try_start_a
    iget-object p1, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    iget-object v1, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_25

    :catch_18
    move-exception p1

    const-string v1, "Exception removing impression silently"

    .line 9
    invoke-static {v0, v1, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    const-class v0, Lcom/chartboost/sdk/e;

    const-string v1, "removeImpressionSilently"

    invoke-static {v0, v1, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_25
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/impl/r1;

    return-void
.end method
