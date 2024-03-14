.class Lcom/adcolony/sdk/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/adcolony/sdk/a0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/a0;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/adcolony/sdk/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lorg/json/JSONArray;

.field private f:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/y;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/y;->b:Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/adcolony/sdk/y;->c:I

    .line 6
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/y;->e:Lorg/json/JSONArray;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/adcolony/sdk/y;->f:I

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/y;->d:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/y;)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/y;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adcolony/sdk/y;->f:I

    return v0
.end method


# virtual methods
.method a(I)Lcom/adcolony/sdk/a0;
    .registers 5

    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/y;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 24
    :try_start_3
    iget-object v1, p0, Lcom/adcolony/sdk/y;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/a0;

    if-nez v1, :cond_14

    const/4 p1, 0x0

    .line 26
    monitor-exit v0

    return-object p1

    .line 28
    :cond_14
    iget-object v2, p0, Lcom/adcolony/sdk/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    iget-object v2, p0, Lcom/adcolony/sdk/y;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface {v1}, Lcom/adcolony/sdk/a0;->b()V

    .line 31
    monitor-exit v0

    return-object v1

    :catchall_27
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method a(Lcom/adcolony/sdk/a0;)Lcom/adcolony/sdk/a0;
    .registers 5

    .line 16
    iget-object v0, p0, Lcom/adcolony/sdk/y;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 17
    :try_start_3
    invoke-interface {p1}, Lcom/adcolony/sdk/a0;->c()I

    move-result v1

    if-lez v1, :cond_a

    goto :goto_e

    .line 18
    :cond_a
    invoke-interface {p1}, Lcom/adcolony/sdk/a0;->d()I

    move-result v1

    .line 19
    :goto_e
    iget-object v2, p0, Lcom/adcolony/sdk/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v2, p0, Lcom/adcolony/sdk/y;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    monitor-exit v0

    return-object p1

    :catchall_1e
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method a()V
    .registers 3

    .line 8
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->A()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 11
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->B()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 12
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_1f

    .line 15
    :cond_17
    new-instance v1, Lcom/adcolony/sdk/y$a;

    invoke-direct {v1, p0, v0}, Lcom/adcolony/sdk/y$a;-><init>(Lcom/adcolony/sdk/y;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/y;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/adcolony/sdk/y;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/y;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 35
    :try_start_3
    iget-object v1, p0, Lcom/adcolony/sdk/y;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_38

    .line 37
    new-instance v1, Lcom/adcolony/sdk/x;

    invoke-direct {v1, p2}, Lcom/adcolony/sdk/x;-><init>(Lorg/json/JSONObject;)V

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 39
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3a

    if-eqz p2, :cond_38

    .line 41
    :try_start_1c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/adcolony/sdk/z;

    invoke-interface {p2, v1}, Lcom/adcolony/sdk/z;->a(Lcom/adcolony/sdk/x;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_25} :catch_26
    .catchall {:try_start_1c .. :try_end_25} :catchall_3a

    goto :goto_16

    :catch_26
    move-exception p1

    .line 43
    :try_start_27
    new-instance p2, Lcom/adcolony/sdk/u$a;

    invoke-direct {p2}, Lcom/adcolony/sdk/u$a;-><init>()V

    .line 44
    invoke-virtual {p2, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/Object;)Lcom/adcolony/sdk/u$a;

    move-result-object p2

    sget-object v1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 45
    invoke-virtual {p2, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 46
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 51
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_3a

    throw p1

    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    const-string v0, "m_id"

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_46

    if-nez v0, :cond_13

    const-string v0, "m_id"

    .line 53
    :try_start_a
    iget v1, p0, Lcom/adcolony/sdk/y;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adcolony/sdk/y;->f:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_13
    const-string v0, "m_origin"

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "m_origin"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_21
    const-string v0, "m_target"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_34

    .line 61
    monitor-enter p0
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_2a} :catch_46

    .line 63
    :try_start_2a
    iget-object v0, p0, Lcom/adcolony/sdk/y;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 64
    monitor-exit p0

    goto :goto_5f

    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    :try_start_33
    throw p1

    .line 66
    :cond_34
    iget-object v1, p0, Lcom/adcolony/sdk/y;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/a0;

    if-eqz v0, :cond_5f

    .line 68
    invoke-interface {v0, p1}, Lcom/adcolony/sdk/a0;->a(Lorg/json/JSONObject;)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_45} :catch_46

    goto :goto_5f

    :catch_46
    move-exception p1

    .line 72
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "JSON error in ADCMessageDispatcher\'s sendMessage(): "

    .line 73
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object v0, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 75
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method b()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/adcolony/sdk/a0;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/adcolony/sdk/y;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method b(Ljava/lang/String;Lcom/adcolony/sdk/z;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/y;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/adcolony/sdk/y;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_10

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method c()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/a0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/y;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method d()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/y;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adcolony/sdk/y;->c:I

    return v0
.end method

.method declared-synchronized e()V
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/y;->a:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_78

    .line 2
    :try_start_4
    iget-object v1, p0, Lcom/adcolony/sdk/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_1c

    .line 3
    iget-object v2, p0, Lcom/adcolony/sdk/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/a0;

    .line 4
    invoke-interface {v2}, Lcom/adcolony/sdk/a0;->a()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 6
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_75

    const/4 v0, 0x0

    .line 10
    :try_start_1e
    iget-object v1, p0, Lcom/adcolony/sdk/y;->e:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2e

    .line 11
    iget-object v0, p0, Lcom/adcolony/sdk/y;->e:Lorg/json/JSONArray;

    .line 12
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/y;->e:Lorg/json/JSONArray;

    :cond_2e
    if-eqz v0, :cond_73

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_78

    const/4 v2, 0x0

    :goto_35
    if-ge v2, v1, :cond_73

    .line 19
    :try_start_37
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "m_type"

    .line 20
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "m_origin"

    .line 21
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_53

    .line 25
    new-instance v5, Lcom/adcolony/sdk/y$b;

    invoke-direct {v5, p0, v4, v3}, Lcom/adcolony/sdk/y$b;-><init>(Lcom/adcolony/sdk/y;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v5}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    goto :goto_70

    .line 32
    :cond_53
    invoke-virtual {p0, v4, v3}, Lcom/adcolony/sdk/y;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_56} :catch_57
    .catchall {:try_start_37 .. :try_end_56} :catchall_78

    goto :goto_70

    :catch_57
    move-exception v3

    .line 35
    :try_start_58
    new-instance v4, Lcom/adcolony/sdk/u$a;

    invoke-direct {v4}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v5, "JSON error from message dispatcher\'s updateModules(): "

    .line 36
    invoke-virtual {v4, v5}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v4

    .line 37
    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v3

    sget-object v4, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 38
    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_78

    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_73
    monitor-exit p0

    return-void

    :catchall_75
    move-exception v1

    .line 39
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    :try_start_77
    throw v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method
