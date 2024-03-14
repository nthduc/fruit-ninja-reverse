.class public Lcom/applovin/impl/sdk/network/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/network/f$a;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f$a;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/network/f$a;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f$a;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/network/f$a;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f$a;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/sdk/network/f$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/impl/sdk/network/f$a;->h:Z

    return p0
.end method

.method static synthetic h(Lcom/applovin/impl/sdk/network/f$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/impl/sdk/network/f$a;->i:Z

    return p0
.end method

.method static synthetic i(Lcom/applovin/impl/sdk/network/f$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/f$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/sdk/network/f$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f$a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/applovin/impl/sdk/network/f$a;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/f$a;->h:Z

    return-object p0
.end method

.method public a()Lcom/applovin/impl/sdk/network/f;
    .registers 3

    new-instance v0, Lcom/applovin/impl/sdk/network/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/network/f;-><init>(Lcom/applovin/impl/sdk/network/f$a;Lcom/applovin/impl/sdk/network/f$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/sdk/network/f$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f$a;->f:Ljava/util/Map;

    return-object p0
.end method

.method public b(Z)Lcom/applovin/impl/sdk/network/f$a;
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/f$a;->i:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/applovin/impl/sdk/network/f$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f$a;->g:Ljava/util/Map;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/f$a;->d:Ljava/lang/String;

    return-object p0
.end method
