.class public Lcom/chartboost/sdk/impl/y;
.super Lcom/chartboost/sdk/Model/a;
.source "SourceFile"


# instance fields
.field public t:I

.field private u:Lcom/chartboost/sdk/impl/e0;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Model/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chartboost/sdk/impl/y;->u:Lcom/chartboost/sdk/impl/e0;

    .line 6
    iput p1, p0, Lcom/chartboost/sdk/impl/y;->t:I

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/chartboost/sdk/Model/a;->b:I

    .line 9
    invoke-static {p2}, Lcom/chartboost/sdk/impl/b0;->b(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/y;->u:Lcom/chartboost/sdk/impl/e0;

    .line 10
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/e0;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/y;->c(Ljava/util/ArrayList;)Lcom/chartboost/sdk/impl/f0;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/f0;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/y;->b(Ljava/util/ArrayList;)Lcom/chartboost/sdk/impl/c0;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/c0;->c()Lcom/chartboost/sdk/impl/d0;

    move-result-object p2

    .line 14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/y;->u:Lcom/chartboost/sdk/impl/e0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e0;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/y;->a(Ljava/util/ArrayList;)V

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    const-string v2, "body"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/c0;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->h:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/d0;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/d0;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/d0;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->g:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/d0;->d()Ljava/util/List;

    move-result-object p2

    const-string v1, "imptrackers"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/y;->a(Lcom/chartboost/sdk/impl/c0;)V

    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/c0;)V
    .registers 9

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/y;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/chartboost/sdk/impl/y;->t:I

    const-string v2, "true"

    const-string v3, "false"

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_f

    :cond_e
    move-object v1, v3

    .line 5
    :goto_f
    iget-object v4, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    const-string v5, "{% encoding %}"

    const-string v6, "base64"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v4, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/c0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v5, "{% adm %}"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    const-string v4, "{{ ad_type }}"

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    const-string v0, "{{ show_close_button }}"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    const-string v0, "{{ preroll_popup }}"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    const-string v0, "{{ post_video_reward_toaster_enabled }}"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget p1, p0, Lcom/chartboost/sdk/impl/y;->t:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4b

    .line 13
    iget-object p1, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    const-string v0, "{% is_banner %}"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/chartboost/sdk/Model/b;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/sdk/Model/b;

    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    goto :goto_19

    .line 17
    :cond_10
    new-instance p1, Lcom/chartboost/sdk/Model/b;

    const-string v0, ""

    invoke-direct {p1, v0, v0, v0}, Lcom/chartboost/sdk/Model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    :goto_19
    return-void
.end method

.method private b(Ljava/util/ArrayList;)Lcom/chartboost/sdk/impl/c0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/chartboost/sdk/impl/c0;",
            ">;)",
            "Lcom/chartboost/sdk/impl/c0;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/chartboost/sdk/impl/c0;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/c0;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/chartboost/sdk/impl/c0;

    :cond_13
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/y;->t:I

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const-string v0, ""

    goto :goto_15

    :cond_d
    const-string v0, "10"

    goto :goto_15

    :cond_10
    const-string v0, "9"

    goto :goto_15

    :cond_13
    const-string v0, "8"

    :goto_15
    return-object v0
.end method

.method private c(Ljava/util/ArrayList;)Lcom/chartboost/sdk/impl/f0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/chartboost/sdk/impl/f0;",
            ">;)",
            "Lcom/chartboost/sdk/impl/f0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/f0;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/f0;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/chartboost/sdk/impl/f0;

    :cond_13
    return-object v0
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/e0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/y;->u:Lcom/chartboost/sdk/impl/e0;

    return-object v0
.end method
