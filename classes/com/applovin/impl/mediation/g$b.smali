.class Lcom/applovin/impl/mediation/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:I

.field private volatile c:Lcom/applovin/mediation/MaxAdListener;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/g$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/mediation/g$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/impl/mediation/g$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/g$b;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/impl/mediation/g$b;->b:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/g$b;Lcom/applovin/mediation/MaxAdListener;)Lcom/applovin/mediation/MaxAdListener;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/g$b;->c:Lcom/applovin/mediation/MaxAdListener;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/g$b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/g$b;)Lcom/applovin/mediation/MaxAdListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/g$b;->c:Lcom/applovin/mediation/MaxAdListener;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/g$b;)I
    .registers 1

    iget p0, p0, Lcom/applovin/impl/mediation/g$b;->b:I

    return p0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/g$b;)I
    .registers 3

    iget v0, p0, Lcom/applovin/impl/mediation/g$b;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/applovin/impl/mediation/g$b;->b:I

    return v0
.end method
