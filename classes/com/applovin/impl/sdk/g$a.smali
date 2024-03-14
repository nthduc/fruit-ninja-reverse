.class public Lcom/applovin/impl/sdk/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/sdk/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/b/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/b/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/b/d<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/g$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/g$a;->b:Lcom/applovin/impl/sdk/b/d;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/g$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/g$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$a;->b:Lcom/applovin/impl/sdk/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/b/e;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/g$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_b
    const-string p1, "No value set"

    :goto_d
    return-object p1
.end method
