.class public abstract Lcom/applovin/impl/sdk/d/y;
.super Lcom/applovin/impl/sdk/d/a;

# interfaces
.implements Lcom/applovin/impl/sdk/network/a$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/impl/sdk/d/a;",
        "Lcom/applovin/impl/sdk/network/a$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/network/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/network/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/applovin/impl/sdk/network/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/network/a$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/applovin/impl/sdk/network/a$a;

.field private e:Lcom/applovin/impl/sdk/d/s$a;

.field private f:Lcom/applovin/impl/sdk/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/b/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/applovin/impl/sdk/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/b/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/network/b<",
            "TT;>;",
            "Lcom/applovin/impl/sdk/j;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/d/y;-><init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/network/b<",
            "TT;>;",
            "Lcom/applovin/impl/sdk/j;",
            "Z)V"
        }
    .end annotation

    const-string v0, "TaskRepeatRequest"

    invoke-direct {p0, v0, p2, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;Z)V

    sget-object p3, Lcom/applovin/impl/sdk/d/s$a;->c:Lcom/applovin/impl/sdk/d/s$a;

    iput-object p3, p0, Lcom/applovin/impl/sdk/d/y;->e:Lcom/applovin/impl/sdk/d/s$a;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/applovin/impl/sdk/d/y;->f:Lcom/applovin/impl/sdk/b/b;

    iput-object p3, p0, Lcom/applovin/impl/sdk/d/y;->g:Lcom/applovin/impl/sdk/b/b;

    if-eqz p1, :cond_21

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/network/b;

    new-instance p1, Lcom/applovin/impl/sdk/network/a$a;

    invoke-direct {p1}, Lcom/applovin/impl/sdk/network/a$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/y;->d:Lcom/applovin/impl/sdk/network/a$a;

    new-instance p1, Lcom/applovin/impl/sdk/d/y$1;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/sdk/d/y$1;-><init>(Lcom/applovin/impl/sdk/d/y;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/y;->c:Lcom/applovin/impl/sdk/network/a$c;

    return-void

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No request specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/network/b;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/y;Lcom/applovin/impl/sdk/b/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/y;->c(Lcom/applovin/impl/sdk/b/b;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/b/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/y;->f:Lcom/applovin/impl/sdk/b/b;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/d/s$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/y;->e:Lcom/applovin/impl/sdk/d/s$a;

    return-object p0
.end method

.method private c(Lcom/applovin/impl/sdk/b/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/b/b<",
            "TST;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/y;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/b/b;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/b/c;->a(Lcom/applovin/impl/sdk/b/b;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b/c;->a()V

    :cond_14
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/b/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/y;->g:Lcom/applovin/impl/sdk/b/b;

    return-object p0
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public a(Lcom/applovin/impl/sdk/b/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/y;->f:Lcom/applovin/impl/sdk/b/b;

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/d/s$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/y;->e:Lcom/applovin/impl/sdk/d/s$a;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public b(Lcom/applovin/impl/sdk/b/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/y;->g:Lcom/applovin/impl/sdk/b/b;

    return-void
.end method

.method public run()V
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/y;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/network/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/y;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->c()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/y;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_2a

    :cond_1d
    const-string v0, "AppLovin SDK is disabled: please check your connection"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/y;->d(Ljava/lang/String;)V

    const-string v1, "AppLovinSdk"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x16

    goto :goto_72

    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_6b

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/b;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5a

    const-string v1, "POST"

    goto :goto_5c

    :cond_5a
    const-string v1, "GET"

    :goto_5c
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/network/b;

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/b;->b(Ljava/lang/String;)V

    :cond_61
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/y;->a:Lcom/applovin/impl/sdk/network/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/y;->d:Lcom/applovin/impl/sdk/network/a$a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/y;->c:Lcom/applovin/impl/sdk/network/a$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/network/a;->a(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/network/a$a;Lcom/applovin/impl/sdk/network/a$c;)V

    goto :goto_75

    :cond_6b
    const-string v0, "Task has an invalid or null request endpoint."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/y;->d(Ljava/lang/String;)V

    const/16 v0, -0x384

    :goto_72
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/y;->a(I)V

    :goto_75
    return-void
.end method
