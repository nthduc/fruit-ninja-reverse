.class Lcom/applovin/impl/mediation/b/f$a;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/b/f;

.field private final c:Lorg/json/JSONArray;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/b/f;ILorg/json/JSONArray;)V
    .registers 5

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/mediation/b/f;->b(Lcom/applovin/impl/mediation/b/f;)Lcom/applovin/impl/sdk/j;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    if-ltz p2, :cond_1a

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge p2, p1, :cond_1a

    iput-object p3, p0, Lcom/applovin/impl/mediation/b/f$a;->c:Lorg/json/JSONArray;

    iput p2, p0, Lcom/applovin/impl/mediation/b/f$a;->d:I

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid ad index specified: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .registers 12

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a;->c:Lorg/json/JSONArray;

    iget v1, p0, Lcom/applovin/impl/mediation/b/f$a;->d:I

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/f$a;->b:Lcom/applovin/impl/sdk/j;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a;->b:Lcom/applovin/impl/sdk/j;

    const-string v1, "name"

    const-string v2, ""

    invoke-static {v6, v1, v2, v0}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/applovin/impl/mediation/b/f$a;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/f$a;->c:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/b/f$a;->a(Ljava/lang/String;)V

    const-string v0, "started to load ad"

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/b/f$a;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/mediation/b/e;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    invoke-static {v2}, Lcom/applovin/impl/mediation/b/f;->c(Lcom/applovin/impl/mediation/b/f;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    invoke-static {v2}, Lcom/applovin/impl/mediation/b/f;->d(Lcom/applovin/impl/mediation/b/f;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/applovin/impl/mediation/b/f$a;->b:Lcom/applovin/impl/sdk/j;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    invoke-static {v2}, Lcom/applovin/impl/mediation/b/f;->a(Lcom/applovin/impl/mediation/b/f;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/app/Activity;

    new-instance v10, Lcom/applovin/impl/mediation/b/f$a$1;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    invoke-static {v2}, Lcom/applovin/impl/mediation/b/f;->e(Lcom/applovin/impl/mediation/b/f;)Lcom/applovin/mediation/MaxAdListener;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/f$a;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v10, p0, v2, v3}, Lcom/applovin/impl/mediation/b/f$a$1;-><init>(Lcom/applovin/impl/mediation/b/f$a;Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/impl/sdk/j;)V

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/applovin/impl/mediation/b/e;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdListener;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/f$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/f$a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/f$a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b/f$a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .registers 5

    iget v0, p0, Lcom/applovin/impl/mediation/b/f$a;->d:I

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/f$a;->c:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2d

    new-instance v0, Lcom/applovin/impl/mediation/b/f$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    iget v2, p0, Lcom/applovin/impl/mediation/b/f$a;->d:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/f$a;->c:Lorg/json/JSONArray;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/mediation/b/f$a;-><init>(Lcom/applovin/impl/mediation/b/f;ILorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    invoke-static {v1}, Lcom/applovin/impl/mediation/b/f;->f(Lcom/applovin/impl/mediation/b/f;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/mediation/c/c;->a(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/sdk/d/s$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/f$a;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    goto :goto_41

    :cond_2d
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    invoke-static {v0}, Lcom/applovin/impl/mediation/b/f;->g(Lcom/applovin/impl/mediation/b/f;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    const/16 v1, -0x1389

    goto :goto_3e

    :cond_3a
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    const/16 v1, 0xcc

    :goto_3e
    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/b/f;->a(Lcom/applovin/impl/mediation/b/f;I)V

    :goto_41
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/b/f$a;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/b/f$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eI:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    :try_start_10
    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/f$a;->a()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_36

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered error while processing ad number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/applovin/impl/mediation/b/f$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/b/f$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    const/16 v1, -0x320

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/b/f;->a(Lcom/applovin/impl/mediation/b/f;I)V

    goto :goto_36

    :cond_33
    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/f$a;->a()V

    :goto_36
    return-void
.end method
