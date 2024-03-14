.class final Lcom/applovin/impl/sdk/d/u$c;
.super Lcom/applovin/impl/sdk/d/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/d/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/utils/t;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/d/u;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_14

    if-eqz p3, :cond_c

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/u$c;->a:Lcom/applovin/impl/sdk/utils/t;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No response specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .registers 2

    const-string v0, "Processing VAST Wrapper response..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/u$c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/u$c;->a:Lcom/applovin/impl/sdk/utils/t;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/u$c;->a(Lcom/applovin/impl/sdk/utils/t;)V

    return-void
.end method
