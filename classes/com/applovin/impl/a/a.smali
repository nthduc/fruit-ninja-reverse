.class public Lcom/applovin/impl/a/a;
.super Lcom/applovin/impl/sdk/ad/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/a/a$a;,
        Lcom/applovin/impl/a/a$b;,
        Lcom/applovin/impl/a/a$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/a/f;

.field private final d:J

.field private final e:Lcom/applovin/impl/a/j;

.field private final f:Lcom/applovin/impl/a/b;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/applovin/impl/a/a$a;)V
    .registers 6

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->a(Lcom/applovin/impl/a/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->b(Lcom/applovin/impl/a/a$a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->c(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/sdk/ad/b;

    move-result-object v2

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->d(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/sdk/j;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/applovin/impl/sdk/ad/g;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->e(Lcom/applovin/impl/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->f(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->g(Lcom/applovin/impl/a/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->h(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->i(Lcom/applovin/impl/a/a$a;)Lcom/applovin/impl/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->j(Lcom/applovin/impl/a/a$a;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->k(Lcom/applovin/impl/a/a$a;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/a/a;->i:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->f()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :cond_48
    const-string v0, ""

    :goto_4a
    iput-object v0, p0, Lcom/applovin/impl/a/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/a/a$a;->l(Lcom/applovin/impl/a/a$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/a/a;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/a/a$a;Lcom/applovin/impl/a/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/a/a;-><init>(Lcom/applovin/impl/a/a$a;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/a/a$b;[Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/a/a$b;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_49

    array-length v0, p2

    if-lez v0, :cond_49

    const/4 v0, 0x0

    sget-object v1, Lcom/applovin/impl/a/a$b;->b:Lcom/applovin/impl/a/a$b;

    if-ne p1, v1, :cond_13

    iget-object v1, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/applovin/impl/a/j;->e()Ljava/util/Map;

    move-result-object v0

    goto :goto_1f

    :cond_13
    sget-object v1, Lcom/applovin/impl/a/a$b;->a:Lcom/applovin/impl/a/a$b;

    if-ne p1, v1, :cond_1f

    iget-object p1, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/applovin/impl/a/b;->d()Ljava/util/Map;

    move-result-object v0

    :cond_1f
    :goto_1f
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    array-length v1, p2

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_44

    aget-object v3, p2, v2

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_44
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_49
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static aO()Lcom/applovin/impl/a/a$a;
    .registers 2

    new-instance v0, Lcom/applovin/impl/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/impl/a/a$a;-><init>(Lcom/applovin/impl/a/a$1;)V

    return-object v0
.end method

.method private aP()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "vimp_url"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->getClCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "{CLCODE}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method private aQ()Lcom/applovin/impl/a/j$a;
    .registers 4

    invoke-static {}, Lcom/applovin/impl/a/j$a;->values()[Lcom/applovin/impl/a/j$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/a/a;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->ex:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1a

    array-length v2, v0

    if-ge v1, v2, :cond_1a

    aget-object v0, v0, v1

    return-object v0

    :cond_1a
    sget-object v0, Lcom/applovin/impl/a/j$a;->a:Lcom/applovin/impl/a/j$a;

    return-object v0
.end method

.method private aR()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/impl/a/j;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private aS()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/impl/a/b;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public B()Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "video_clickable"

    invoke-virtual {p0, v2, v1}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->h()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public a(Lcom/applovin/impl/a/a$c;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/a/a$c;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$c;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/a/a$c;[Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/a/a$c;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving trackers of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' and events \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VastAd"

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/a$c;->a:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_30

    iget-object p1, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    return-object p1

    :cond_30
    sget-object v0, Lcom/applovin/impl/a/a$c;->b:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_39

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->aR()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_39
    sget-object v0, Lcom/applovin/impl/a/a$c;->c:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_42

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->aS()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_42
    sget-object v0, Lcom/applovin/impl/a/a$c;->d:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_4d

    sget-object p1, Lcom/applovin/impl/a/a$b;->b:Lcom/applovin/impl/a/a$b;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$b;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_4d
    sget-object v0, Lcom/applovin/impl/a/a$c;->e:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_58

    sget-object p1, Lcom/applovin/impl/a/a$b;->a:Lcom/applovin/impl/a/a$b;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/a/a;->a(Lcom/applovin/impl/a/a$b;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_58
    sget-object v0, Lcom/applovin/impl/a/a$c;->f:Lcom/applovin/impl/a/a$c;

    if-ne p1, v0, :cond_5f

    iget-object p1, p0, Lcom/applovin/impl/a/a;->i:Ljava/util/Set;

    return-object p1

    :cond_5f
    iget-object v0, p0, Lcom/applovin/impl/a/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve trackers of invalid type \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/a/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/a/a;->adObject:Lorg/json/JSONObject;

    const-string v2, "html_template"

    iget-object v3, p0, Lcom/applovin/impl/a/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, p1, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public aJ()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vast_fire_click_trackers_on_html_clicks"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public aK()Ljava/lang/String;
    .registers 3

    const-string v0, "html_template"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/a/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aL()Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "html_template_url"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method public aM()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "cache_companion_ad"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public aN()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "cache_video"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public at()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "{SOC}"

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->al()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    const-string v3, "vimp_urls"

    iget-object v4, p0, Lcom/applovin/impl/a/a;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->getClCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->aP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->au()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->w()Z

    move-result v9

    iget-object v10, p0, Lcom/applovin/impl/a/a;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static/range {v3 .. v10}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ZLcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/a/a;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/a/a;->adObject:Lorg/json/JSONObject;

    const-string v2, "vast_is_streaming"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vast_is_streaming"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public e()Lcom/applovin/impl/a/a$b;
    .registers 3

    const-string v0, "companion_ad"

    const-string v1, "vast_first_caching_operation"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/applovin/impl/a/a$b;->a:Lcom/applovin/impl/a/a$b;

    return-object v0

    :cond_11
    sget-object v0, Lcom/applovin/impl/a/a$b;->b:Lcom/applovin/impl/a/a$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/a/a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/ad/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    check-cast p1, Lcom/applovin/impl/a/a;

    iget-object v1, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v3, p1, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_24

    :cond_20
    iget-object v1, p1, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_25

    :goto_24
    return v2

    :cond_25
    iget-object v1, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v3, p1, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_36

    :cond_32
    iget-object v1, p1, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_37

    :goto_36
    return v2

    :cond_37
    iget-object v1, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    if-eqz v1, :cond_44

    iget-object v3, p1, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_48

    :cond_44
    iget-object v1, p1, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    if-eqz v1, :cond_49

    :goto_48
    return v2

    :cond_49
    iget-object v1, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v1, :cond_56

    iget-object v3, p1, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/a/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_5a

    :cond_56
    iget-object v1, p1, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v1, :cond_5b

    :goto_5a
    return v2

    :cond_5b
    iget-object v1, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz v1, :cond_68

    iget-object v3, p1, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/a/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_6c

    :cond_68
    iget-object v1, p1, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz v1, :cond_6d

    :goto_6c
    return v2

    :cond_6d
    iget-object v1, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    if-eqz v1, :cond_7a

    iget-object v3, p1, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    goto :goto_7e

    :cond_7a
    iget-object v1, p1, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    if-eqz v1, :cond_7f

    :goto_7e
    return v2

    :cond_7f
    iget-object v1, p0, Lcom/applovin/impl/a/a;->i:Ljava/util/Set;

    if-eqz v1, :cond_8a

    iget-object p1, p1, Lcom/applovin/impl/a/a;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_90

    :cond_8a
    iget-object p1, p1, Lcom/applovin/impl/a/a;->i:Ljava/util/Set;

    if-nez p1, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v0, 0x0

    :goto_90
    return v0
.end method

.method public f()Landroid/net/Uri;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->l()Lcom/applovin/impl/a/k;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/applovin/impl/a/k;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vast_immediate_ad_load"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/a/a;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public getCreatedAtMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/a/a;->d:J

    return-wide v0
.end method

.method public h()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/impl/a/j;->c()Landroid/net/Uri;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public hasVideoUrl()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/applovin/impl/a/j;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public hashCode()I
    .registers 4

    invoke-super {p0}, Lcom/applovin/impl/sdk/ad/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/applovin/impl/a/f;->hashCode()I

    move-result v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/applovin/impl/a/j;->hashCode()I

    move-result v1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/applovin/impl/a/b;->hashCode()I

    move-result v1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    if-eqz v1, :cond_51

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/a;->i:Ljava/util/Set;

    if-eqz v1, :cond_5d

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v2

    :cond_5d
    add-int/2addr v0, v2

    return v0
.end method

.method public i()Landroid/net/Uri;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/a/a;->h()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/applovin/impl/a/f;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    return-object v0
.end method

.method public k()Lcom/applovin/impl/a/j;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    return-object v0
.end method

.method public l()Lcom/applovin/impl/a/k;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/applovin/impl/a/a;->aQ()Lcom/applovin/impl/a/j$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/j;->a(Lcom/applovin/impl/a/j$a;)Lcom/applovin/impl/a/k;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public m()Lcom/applovin/impl/a/b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastAd{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", systemInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/a;->c:Lcom/applovin/impl/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoCreative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/a;->e:Lcom/applovin/impl/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", companionAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/a;->f:Lcom/applovin/impl/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impressionTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/a;->h:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/a;->i:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
