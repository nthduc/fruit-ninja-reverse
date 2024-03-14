.class public Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Banner/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method private b()Lcom/chartboost/sdk/Model/h$a;
    .registers 2

    .line 4
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 6
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->g()Lcom/chartboost/sdk/Model/h;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 8
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/h;->a()Lcom/chartboost/sdk/Model/h$a;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/Banner/a;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Banner/a;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Banner/a;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Banner/b;

    if-eqz p1, :cond_d

    .line 5
    invoke-interface {p1, p2}, Lcom/chartboost/sdk/Banner/b;->a(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public a()Z
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/chartboost/sdk/b;->b()Lcom/chartboost/sdk/Model/h$a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 8
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/h$a;->c()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Banner/b;

    if-eqz p1, :cond_f

    .line 3
    invoke-interface {p1}, Lcom/chartboost/sdk/Banner/b;->a()Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Banner/b;

    if-eqz p1, :cond_d

    .line 3
    invoke-interface {p1}, Lcom/chartboost/sdk/Banner/b;->c()V

    :cond_d
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Banner/b;

    if-eqz p1, :cond_d

    .line 3
    invoke-interface {p1}, Lcom/chartboost/sdk/Banner/b;->b()V

    :cond_d
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Banner/b;

    if-eqz p1, :cond_d

    .line 3
    invoke-interface {p1}, Lcom/chartboost/sdk/Banner/b;->d()V

    :cond_d
    return-void
.end method
