.class public Lcom/applovin/impl/sdk/EventServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinEventService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/applovin/impl/sdk/k$a;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aS:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "{}"

    if-eqz v0, :cond_34

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->r:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/sdk/j;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    goto :goto_40

    :cond_34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->r:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    :goto_40
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/EventServiceImpl;J)J
    .registers 3

    iput-wide p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/k$a;)Lcom/applovin/impl/sdk/k$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->d:Lcom/applovin/impl/sdk/k$a;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->aK:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4.0/pix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/k$a;)Ljava/util/HashMap;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/k$a;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/k$a;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/m;",
            "Lcom/applovin/impl/sdk/k$a;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->c()Lcom/applovin/impl/sdk/k$d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->d()Lcom/applovin/impl/sdk/k$b;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->aQ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_2e

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_30

    :cond_2e
    const-string v4, "postinstall"

    :goto_30
    const-string v5, "event"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/m;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ts"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "platform"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "model"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "api_level"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/applovin/impl/sdk/k$b;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "package_name"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/applovin/impl/sdk/k$b;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "installer_name"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v0, Lcom/applovin/impl/sdk/k$b;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ia"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v5, Lcom/applovin/impl/sdk/b/b;->Q:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "api_did"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "brand"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "brand_name"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->g:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hardware"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->h:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "revision"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    const-string v5, "sdk_version"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "os"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->l:Ljava/lang/String;

    const-string v5, "orientation_lock"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/applovin/impl/sdk/k$b;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->i:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "country_code"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "carrier"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v1, Lcom/applovin/impl/sdk/k$d;->r:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tz_offset"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/k$d;->N:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "aida"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/k$d;->t:Z

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v4, :cond_117

    move-object v4, v5

    goto :goto_118

    :cond_117
    move-object v4, v6

    :goto_118
    const-string v7, "adr"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "volume"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->y:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "sb"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/k$d;->A:Z

    if-eqz v4, :cond_138

    goto :goto_139

    :cond_138
    move-object v5, v6

    :goto_139
    const-string v4, "sim"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/k$d;->B:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gy"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/k$d;->C:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "is_tablet"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/k$d;->D:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tv"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/applovin/impl/sdk/k$d;->E:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vs"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->F:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lpm"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/applovin/impl/sdk/k$b;->e:Ljava/lang/String;

    const-string v5, "tg"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v1, Lcom/applovin/impl/sdk/k$d;->H:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fs"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v1, Lcom/applovin/impl/sdk/k$d;->I:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tds"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v4, v4, Lcom/applovin/impl/sdk/k$e;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fm"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v4, v4, Lcom/applovin/impl/sdk/k$e;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tm"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-wide v4, v4, Lcom/applovin/impl/sdk/k$e;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lmt"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/applovin/impl/sdk/k$d;->J:Lcom/applovin/impl/sdk/k$e;

    iget-boolean v4, v4, Lcom/applovin/impl/sdk/k$e;->d:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lm"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->m:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adns"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->n:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "adnsd"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->o:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "xdpi"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->p:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ydpi"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v1, Lcom/applovin/impl/sdk/k$d;->q:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const-string v5, "screen_size_in"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v0, Lcom/applovin/impl/sdk/k$b;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "debug"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v1, Lcom/applovin/impl/sdk/k$d;->v:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "af"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->w:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "font"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v1, Lcom/applovin/impl/sdk/k$d;->Q:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bt_ms"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/applovin/impl/sdk/k$d;->R:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mute_switch"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v0, Lcom/applovin/impl/sdk/k$b;->h:Z

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "test_ads"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v4, Lcom/applovin/impl/sdk/b/b;->eA:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_25a

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sdk_key"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25a
    invoke-direct {p0, p2, v3}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/k$a;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->dF:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_278

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->i()Ljava/lang/String;

    move-result-object p2

    const-string v0, "cuid"

    invoke-static {v0, p2, v3}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_278
    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->dI:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_293

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->j()Ljava/lang/String;

    move-result-object p2

    const-string v0, "compass_random_token"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_293
    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->dK:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2ae

    iget-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->k()Ljava/lang/String;

    move-result-object p2

    const-string v0, "applovin_random_token"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2ae
    iget-object p2, v1, Lcom/applovin/impl/sdk/k$d;->K:Ljava/lang/Boolean;

    if-eqz p2, :cond_2bb

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "huc"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2bb
    iget-object p2, v1, Lcom/applovin/impl/sdk/k$d;->L:Ljava/lang/Boolean;

    if-eqz p2, :cond_2c8

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "aru"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c8
    iget-object p2, v1, Lcom/applovin/impl/sdk/k$d;->M:Ljava/lang/Boolean;

    if-eqz p2, :cond_2d5

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "dns"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d5
    iget-object p2, v1, Lcom/applovin/impl/sdk/k$d;->u:Lcom/applovin/impl/sdk/k$c;

    if-eqz p2, :cond_2ef

    iget v0, p2, Lcom/applovin/impl/sdk/k$c;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "act"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p2, Lcom/applovin/impl/sdk/k$c;->b:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "acm"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2ef
    iget-object p2, v1, Lcom/applovin/impl/sdk/k$d;->z:Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_300

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ua"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_300
    iget-object p2, v1, Lcom/applovin/impl/sdk/k$d;->G:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_311

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "so"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_311
    if-nez v2, :cond_320

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sub_event"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_320
    iget p1, v1, Lcom/applovin/impl/sdk/k$d;->O:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_332

    iget p1, v1, Lcom/applovin/impl/sdk/k$d;->O:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v0, "da"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_332
    iget p1, v1, Lcom/applovin/impl/sdk/k$d;->P:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_343

    iget p1, v1, Lcom/applovin/impl/sdk/k$d;->P:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dm"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_343
    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/b;->U:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sc"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/b;->V:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sc2"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/b;->W:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sc3"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/b;->X:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "server_installed_at"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/d;->y:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "persisted_data"

    invoke-static {p2, p1, v3}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/b;->dM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "plugin_version"

    invoke-static {p2, p1, v3}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mediation_provider"

    invoke-static {p2, p1, v3}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v3
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/EventServiceImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/sdk/d/i$a;)V
    .registers 4

    new-instance v0, Lcom/applovin/impl/sdk/d/i;

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, v1, p1}, Lcom/applovin/impl/sdk/d/i;-><init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/d/i$a;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->d:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/k$a;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/k$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p1, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "idfa"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-boolean p1, p1, Lcom/applovin/impl/sdk/k$a;->a:Z

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "dnt"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/EventServiceImpl;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->aL:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4.0/pix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->aS:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "{}"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/util/Map;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->r:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    :cond_21
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSuperProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public maybeTrackAppOpenEvent()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->q()Lcom/applovin/sdk/AppLovinEventService;

    move-result-object v0

    const-string v1, "landing"

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinEventService;->trackEvent(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public setSuperProperty(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AppLovinEventService"

    if-eqz v0, :cond_e

    const-string p1, "Super property key cannot be null or empty"

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->c()V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->aR:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v2}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/Object;Ljava/util/List;Lcom/applovin/impl/sdk/j;)Z

    move-result v2

    if-nez v2, :cond_4e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set super property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' for key \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' - valid super property types include: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/j;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "EventService{}"

    return-object v0
.end method

.method public trackCheckout(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(I)V

    :goto_e
    const-string p2, "transaction_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "checkout"

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking event: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" with parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinEventService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/EventServiceImpl$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/impl/sdk/EventServiceImpl$1;-><init>(Lcom/applovin/impl/sdk/EventServiceImpl;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/d/i$a;)V

    return-void
.end method

.method public trackEventSynchronously(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking event: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" synchronously"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinEventService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->e:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->aV:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_3d

    iput-object v4, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->d:Lcom/applovin/impl/sdk/k$a;

    :cond_3d
    new-instance v0, Lcom/applovin/impl/sdk/m;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->b:Ljava/util/Map;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/impl/sdk/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, Lcom/applovin/impl/sdk/network/f;->n()Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/EventServiceImpl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/network/f$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->d:Lcom/applovin/impl/sdk/k$a;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/k$a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/network/f$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/m;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eA:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->O()Lcom/applovin/impl/sdk/network/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method

.method public trackInAppPurchase(Landroid/content/Intent;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_d

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_d
    :try_start_d
    const-string p2, "receipt_data"

    const-string v1, "INAPP_PURCHASE_DATA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "receipt_data_signature"

    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception p1

    const-string p2, "AppLovinEventService"

    const-string v1, "Unable to track in app purchase - invalid purchase intent"

    invoke-static {p2, v1, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2c
    const-string p1, "iap"

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
