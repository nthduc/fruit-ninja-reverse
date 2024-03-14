.class public Lcom/applovin/impl/mediation/a/c;
.super Lcom/applovin/impl/mediation/a/a;


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/impl/sdk/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/mediation/j;)V
    .registers 6

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->C()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->B()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p1, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/applovin/impl/mediation/a/a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/sdk/j;)V

    iget-object p2, p1, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p1, p1, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/applovin/impl/mediation/a/a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/sdk/j;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 3

    const-string v0, "nia_button_title"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/a;
    .registers 3

    new-instance v0, Lcom/applovin/impl/mediation/a/c;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/mediation/a/c;-><init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/mediation/j;)V

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/a/c;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public l()J
    .registers 7

    const-string v0, "ad_expiration_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_f

    return-wide v1

    :cond_f
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/a;->E:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m()J
    .registers 7

    const-string v0, "ad_hidden_timeout_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_f

    return-wide v1

    :cond_f
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/a;->G:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "schedule_ad_hidden_on_ad_dismiss"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/a;->H:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public o()J
    .registers 7

    const-string v0, "ad_hidden_on_ad_dismiss_callback_delay_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_f

    return-wide v1

    :cond_f
    iget-object v1, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/a;->I:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .registers 6

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/c;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/c;->h()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_14
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public q()J
    .registers 6

    const-string v0, "fullscreen_display_delay_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_f

    return-wide v0

    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->x:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->y:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "ahdm"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .registers 3

    const-string v0, "bcode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 3

    const-string v0, "mcode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public v()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public w()Lcom/applovin/impl/sdk/a/c;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/a/c;

    return-object v0
.end method

.method public x()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "show_nia"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .registers 3

    const-string v0, "nia_title"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .registers 3

    const-string v0, "nia_message"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
