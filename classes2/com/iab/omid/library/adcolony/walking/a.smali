.class public Lcom/iab/omid/library/adcolony/walking/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/adcolony/walking/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/adcolony/walking/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->f:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->g:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcom/iab/omid/library/adcolony/adsession/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/iab/omid/library/adcolony/adsession/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/adcolony/b/c;

    invoke-direct {p0, v1, p1}, Lcom/iab/omid/library/adcolony/walking/a;->a(Lcom/iab/omid/library/adcolony/b/c;Lcom/iab/omid/library/adcolony/adsession/a;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method private a(Lcom/iab/omid/library/adcolony/b/c;Lcom/iab/omid/library/adcolony/adsession/a;)V
    .registers 6

    invoke-virtual {p1}, Lcom/iab/omid/library/adcolony/b/c;->a()Lcom/iab/omid/library/adcolony/e/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/iab/omid/library/adcolony/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/adcolony/walking/a$a;

    if-eqz v1, :cond_1f

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/adcolony/walking/a$a;->a(Ljava/lang/String;)V

    goto :goto_2d

    :cond_1f
    iget-object v1, p0, Lcom/iab/omid/library/adcolony/walking/a;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/iab/omid/library/adcolony/walking/a$a;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lcom/iab/omid/library/adcolony/walking/a$a;-><init>(Lcom/iab/omid/library/adcolony/b/c;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2d
    return-void
.end method

.method private d(Landroid/view/View;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_9

    const-string p1, "noWindowFocus"

    return-object p1

    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_f
    if-eqz p1, :cond_28

    invoke-static {p1}, Lcom/iab/omid/library/adcolony/d/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    return-object v2

    :cond_18
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_26

    check-cast p1, Landroid/view/View;

    goto :goto_f

    :cond_26
    move-object p1, v1

    goto :goto_f

    :cond_28
    iget-object p1, p0, Lcom/iab/omid/library/adcolony/walking/a;->d:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/iab/omid/library/adcolony/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->e:Ljava/util/HashSet;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public b(Landroid/view/View;)Lcom/iab/omid/library/adcolony/walking/a$a;
    .registers 4

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/adcolony/walking/a$a;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/iab/omid/library/adcolony/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object v0
.end method

.method public b()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->f:Ljava/util/HashSet;

    return-object v0
.end method

.method public c(Landroid/view/View;)Lcom/iab/omid/library/adcolony/walking/c;
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/iab/omid/library/adcolony/walking/c;->a:Lcom/iab/omid/library/adcolony/walking/c;

    return-object p1

    :cond_b
    iget-boolean p1, p0, Lcom/iab/omid/library/adcolony/walking/a;->h:Z

    if-eqz p1, :cond_12

    sget-object p1, Lcom/iab/omid/library/adcolony/walking/c;->b:Lcom/iab/omid/library/adcolony/walking/c;

    goto :goto_14

    :cond_12
    sget-object p1, Lcom/iab/omid/library/adcolony/walking/c;->c:Lcom/iab/omid/library/adcolony/walking/c;

    :goto_14
    return-object p1
.end method

.method public c()V
    .registers 6

    invoke-static {}, Lcom/iab/omid/library/adcolony/b/a;->a()Lcom/iab/omid/library/adcolony/b/a;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/b/a;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/adcolony/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/adcolony/adsession/a;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iab/omid/library/adcolony/adsession/a;->e()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Lcom/iab/omid/library/adcolony/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4e

    invoke-direct {p0, v2}, Lcom/iab/omid/library/adcolony/walking/a;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3e

    iget-object v4, p0, Lcom/iab/omid/library/adcolony/walking/a;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/iab/omid/library/adcolony/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/iab/omid/library/adcolony/walking/a;->a(Lcom/iab/omid/library/adcolony/adsession/a;)V

    goto :goto_e

    :cond_3e
    iget-object v1, p0, Lcom/iab/omid/library/adcolony/walking/a;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iab/omid/library/adcolony/walking/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/iab/omid/library/adcolony/walking/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_4e
    iget-object v1, p0, Lcom/iab/omid/library/adcolony/walking/a;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/iab/omid/library/adcolony/walking/a;->g:Ljava/util/HashMap;

    const-string v2, "noAdView"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_5b
    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->h:Z

    return-void
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/adcolony/walking/a;->h:Z

    return-void
.end method
