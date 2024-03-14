.class Lcom/applovin/impl/sdk/d/k$a;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/d/k;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/d/k;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/k$a;->a:Lcom/applovin/impl/sdk/d/k;

    const-string p1, "TaskTimeoutFetchBasicSettings"

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k$a;->a:Lcom/applovin/impl/sdk/d/k;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/k;->a(Lcom/applovin/impl/sdk/d/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Timing out fetch basic settings..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/k$a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k$a;->a:Lcom/applovin/impl/sdk/d/k;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/k;->a(Lcom/applovin/impl/sdk/d/k;Lorg/json/JSONObject;)V

    :cond_1b
    return-void
.end method
