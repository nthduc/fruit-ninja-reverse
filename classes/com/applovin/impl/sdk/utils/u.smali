.class public Lcom/applovin/impl/sdk/utils/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/utils/u$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/q;

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/applovin/impl/sdk/utils/u$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/StringBuilder;

.field private d:J

.field private e:Lcom/applovin/impl/sdk/utils/u$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/u;->a:Lcom/applovin/impl/sdk/q;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/u;J)J
    .registers 3

    iput-wide p1, p0, Lcom/applovin/impl/sdk/utils/u;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/u;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/u;->a:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/utils/t;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/applovin/impl/sdk/utils/u;

    invoke-direct {v0, p1}, Lcom/applovin/impl/sdk/utils/u;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/u;Lcom/applovin/impl/sdk/utils/u$a;)Lcom/applovin/impl/sdk/utils/u$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/u;->e:Lcom/applovin/impl/sdk/utils/u$a;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/u;Lorg/xml/sax/Attributes;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/utils/u;->a(Lorg/xml/sax/Attributes;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/xml/sax/Attributes;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1c

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    return-object v1

    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/utils/u;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/utils/u;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/utils/u;)Ljava/util/Stack;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/u;->b:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/utils/u;)Ljava/lang/StringBuilder;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/u;->c:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/utils/u;)Lcom/applovin/impl/sdk/utils/u$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/u;->e:Lcom/applovin/impl/sdk/utils/u$a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/u;->c:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/u;->b:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/u;->e:Lcom/applovin/impl/sdk/utils/u$a;

    new-instance v0, Lcom/applovin/impl/sdk/utils/u$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/utils/u$1;-><init>(Lcom/applovin/impl/sdk/utils/u;)V

    invoke-static {p1, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/utils/u;->e:Lcom/applovin/impl/sdk/utils/u$a;

    if-eqz p1, :cond_20

    return-object p1

    :cond_20
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string v0, "Unable to parse XML into node"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse. No XML specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
