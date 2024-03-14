.class public Lcom/applovin/impl/sdk/ad/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/ad/f$a;,
        Lcom/applovin/impl/sdk/ad/f$b;
    }
.end annotation


# static fields
.field private static i:Z


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/mediation/MaxAdFormat;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/ad/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/applovin/impl/sdk/ad/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/applovin/impl/sdk/ad/f$b;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/applovin/impl/sdk/ad/f$b;->a:Lcom/applovin/impl/sdk/ad/f$b;

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->g:Lcom/applovin/impl/sdk/ad/f$b;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->b:Lcom/applovin/mediation/MaxAdFormat;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->e:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ad/f;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/ad/f;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private static a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "id"

    invoke-static {v0, v1, p0, p1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    const-string p0, "response_ts_s"

    invoke-static {v0, p0, v1, v2, p1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)V

    return-object v0
.end method

.method public static a(Lcom/applovin/impl/sdk/ad/d;ILcom/applovin/impl/sdk/j;)V
    .registers 5

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->fa:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/applovin/impl/sdk/ad/f;->i:Z

    if-eqz v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown zone in waterfall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/impl/sdk/ad/f;->i:Z

    :cond_30
    invoke-static {p0, p2}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "error_code"

    invoke-static {p0, v0, p1, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)V

    sget-object p1, Lcom/applovin/impl/sdk/ad/f$b;->f:Lcom/applovin/impl/sdk/ad/f$b;

    sget-object v0, Lcom/applovin/impl/sdk/ad/f$b;->a:Lcom/applovin/impl/sdk/ad/f$b;

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/i;->b(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1, p2}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f$b;Lcom/applovin/impl/sdk/ad/f$b;Lorg/json/JSONArray;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/d;Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/applovin/impl/sdk/ad/f$b;->e:Lcom/applovin/impl/sdk/ad/f$b;

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f$b;)V

    :cond_19
    invoke-direct {p0, p2, p1}, Lcom/applovin/impl/sdk/ad/f;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/d;)V

    goto :goto_38

    :cond_1d
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ad/f;->b(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0, p2, p1}, Lcom/applovin/impl/sdk/ad/f;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/d;)V

    sget-object p2, Lcom/applovin/impl/sdk/ad/f$b;->h:Lcom/applovin/impl/sdk/ad/f$b;

    :goto_28
    invoke-direct {p0, p2, p1}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f$b;Lcom/applovin/impl/sdk/ad/d;)V

    goto :goto_38

    :cond_2c
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ad/f;->c(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0, p2, p1}, Lcom/applovin/impl/sdk/ad/f;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/d;)V

    sget-object p2, Lcom/applovin/impl/sdk/ad/f$b;->g:Lcom/applovin/impl/sdk/ad/f$b;

    goto :goto_28

    :goto_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_3a

    throw p1

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/f$b;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f$b;Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/f$b;Lcom/applovin/impl/sdk/ad/d;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->fa:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/ad/f;->h:Z

    if-eqz v0, :cond_15

    return-void

    :cond_15
    sget-object v0, Lcom/applovin/impl/sdk/ad/f$b;->g:Lcom/applovin/impl/sdk/ad/f$b;

    if-eq p1, v0, :cond_1d

    sget-object v0, Lcom/applovin/impl/sdk/ad/f$b;->h:Lcom/applovin/impl/sdk/ad/f$b;

    if-ne p1, v0, :cond_36

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid zone in waterfall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppLovinSdk"

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/applovin/impl/sdk/ad/f;->h:Z

    :cond_36
    iget-object p2, p0, Lcom/applovin/impl/sdk/ad/f;->e:Ljava/lang/Object;

    monitor-enter p2

    :try_start_39
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    monitor-exit p2

    return-void

    :cond_43
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->g:Lcom/applovin/impl/sdk/ad/f$b;

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->g:Lcom/applovin/impl/sdk/ad/f$b;

    monitor-exit p2
    :try_end_54
    .catchall {:try_start_39 .. :try_end_54} :catchall_5c

    iget-object p2, p0, Lcom/applovin/impl/sdk/ad/f;->b:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1, v0, p2, v2}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f$b;Lcom/applovin/impl/sdk/ad/f$b;Lorg/json/JSONArray;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V

    return-void

    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit p2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method private static a(Lcom/applovin/impl/sdk/ad/f$b;Lcom/applovin/impl/sdk/ad/f$b;Lorg/json/JSONArray;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V
    .registers 12

    new-instance v6, Lcom/applovin/impl/sdk/d/q;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/d/q;-><init>(Lcom/applovin/impl/sdk/ad/f$b;Lcom/applovin/impl/sdk/ad/f$b;Lorg/json/JSONArray;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p4}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p0

    sget-object p1, Lcom/applovin/impl/sdk/d/s$a;->c:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {p0, v6, p1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ad/f;Lcom/applovin/impl/sdk/ad/f$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f$b;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/d;)V
    .registers 5
    .param p2    # Lcom/applovin/impl/sdk/ad/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/applovin/impl/sdk/ad/f;->f:Lcom/applovin/impl/sdk/ad/d;

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method private a(Lcom/applovin/impl/sdk/ad/d;)Z
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->f:Lcom/applovin/impl/sdk/ad/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->f:Lcom/applovin/impl/sdk/ad/d;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    if-nez p1, :cond_17

    return v2

    :cond_17
    if-ge p1, v0, :cond_1a

    return v2

    :cond_1a
    return v1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ad/f;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/ad/f;->d:Ljava/util/List;

    return-object p0
.end method

.method private b()V
    .registers 6

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/f;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_25

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->eX:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, p0}, Lcom/applovin/impl/sdk/utils/d;->a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/d;

    goto :goto_25

    :cond_20
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, p0}, Lcom/applovin/impl/sdk/utils/p;->a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;

    :cond_25
    :goto_25
    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/ad/d;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->f:Lcom/applovin/impl/sdk/ad/d;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private c()J
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eW:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private c(Lcom/applovin/impl/sdk/ad/d;)Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->f:Lcom/applovin/impl/sdk/ad/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/f;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eq p1, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eY:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/applovin/impl/sdk/ad/f$b;->d:Lcom/applovin/impl/sdk/ad/f$b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f$b;)V

    :cond_15
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/AppLovinAdBase;ZZ)V
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getAdIdNumber()J

    move-result-wide v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    const-string v4, "ad_id"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getCreatedAtMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    const-string v4, "ad_created_ts_s"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "is_preloaded"

    invoke-static {v0, v2, p2, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/applovin/impl/sdk/j;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    const-string v1, "for_bidding"

    invoke-static {v0, v1, p3, p2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/applovin/impl/sdk/j;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/d;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/ad/d;ZI)V
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "error_code"

    invoke-static {v0, v2, p3, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/impl/sdk/j;)V

    iget-object p3, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    const-string v1, "for_bidding"

    invoke-static {v0, v1, p2, p3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/applovin/impl/sdk/j;)V

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/d;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/ad/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/f;->b()V

    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->eZ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/f;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ag()Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/ad/f$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/ad/f$1;-><init>(Lcom/applovin/impl/sdk/ad/f;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.applovin.application_paused"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    :cond_2f
    return-void
.end method

.method public run()V
    .registers 2

    sget-object v0, Lcom/applovin/impl/sdk/ad/f$b;->b:Lcom/applovin/impl/sdk/ad/f$b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/f$b;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/f;->b()V

    return-void
.end method
