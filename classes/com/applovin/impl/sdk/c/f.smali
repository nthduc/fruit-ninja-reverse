.class public Lcom/applovin/impl/sdk/c/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/c/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/applovin/impl/sdk/j;

.field private final d:Lcom/applovin/impl/sdk/q;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c/f;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/f;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/f;->d:Lcom/applovin/impl/sdk/q;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/c/f;->a:Ljava/util/List;

    return-void
.end method

.method private d()V
    .registers 10

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/f;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/applovin/impl/sdk/c/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/c/f$a;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_44

    :try_start_1a
    invoke-static {v3}, Lcom/applovin/impl/sdk/c/f$a;->a(Lcom/applovin/impl/sdk/c/f$a;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_21} :catch_22
    .catchall {:try_start_1a .. :try_end_21} :catchall_44

    goto :goto_e

    :catch_22
    move-exception v4

    :try_start_23
    iget-object v5, p0, Lcom/applovin/impl/sdk/c/f;->d:Lcom/applovin/impl/sdk/q;

    const-string v6, "ErrorManager"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "Failed to convert error log into json."

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/applovin/impl/sdk/q;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/c/f;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_44

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/f;->c:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->o:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    return-void

    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONArray;
    .registers 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/c/f$a;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_34

    :try_start_1a
    invoke-static {v3}, Lcom/applovin/impl/sdk/c/f$a;->a(Lcom/applovin/impl/sdk/c/f$a;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_21} :catch_22
    .catchall {:try_start_1a .. :try_end_21} :catchall_34

    goto :goto_e

    :catch_22
    move-exception v3

    :try_start_23
    iget-object v4, p0, Lcom/applovin/impl/sdk/c/f;->d:Lcom/applovin/impl/sdk/q;

    const-string v5, "ErrorManager"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "Failed to convert error log into json."

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/applovin/impl/sdk/q;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_32
    monitor-exit v0

    return-object v1

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_34

    throw v1

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/c/f;->c:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->eo:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_21

    monitor-exit v0

    return-void

    :cond_21
    new-instance v1, Lcom/applovin/impl/sdk/c/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/applovin/impl/sdk/c/f$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/applovin/impl/sdk/c/f$1;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/c/f;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c/f;->d()V

    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_31

    throw p1

    :cond_34
    :goto_34
    return-void
.end method

.method public b()V
    .registers 11

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/f;->c:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->o:Lcom/applovin/impl/sdk/b/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/f;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    iget-object v3, p0, Lcom/applovin/impl/sdk/c/f;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_20} :catch_44
    .catchall {:try_start_10 .. :try_end_20} :catchall_42

    if-ge v4, v5, :cond_4e

    :try_start_22
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/c/f;->a:Ljava/util/List;

    new-instance v7, Lcom/applovin/impl/sdk/c/f$a;

    invoke-direct {v7, v5, v2}, Lcom/applovin/impl/sdk/c/f$a;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/c/f$1;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_30} :catch_31
    .catchall {:try_start_22 .. :try_end_30} :catchall_42

    goto :goto_3f

    :catch_31
    move-exception v5

    :try_start_32
    iget-object v6, p0, Lcom/applovin/impl/sdk/c/f;->d:Lcom/applovin/impl/sdk/q;

    const-string v7, "ErrorManager"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "Failed to convert error json into a log."

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/applovin/impl/sdk/q;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_3f} :catch_44
    .catchall {:try_start_32 .. :try_end_3f} :catchall_42

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :catchall_42
    move-exception v0

    goto :goto_50

    :catch_44
    move-exception v0

    :try_start_45
    iget-object v2, p0, Lcom/applovin/impl/sdk/c/f;->d:Lcom/applovin/impl/sdk/q;

    const-string v3, "ErrorManager"

    const-string v4, "Unable to convert String to json."

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4e
    monitor-exit v1

    goto :goto_52

    :goto_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_42

    throw v0

    :cond_52
    :goto_52
    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c/f;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/c/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/c/f;->c:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->o:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;)V

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
