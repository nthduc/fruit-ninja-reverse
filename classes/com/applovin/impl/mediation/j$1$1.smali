.class Lcom/applovin/impl/mediation/j$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/applovin/impl/mediation/j$1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j$1;J)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$1$1;->b:Lcom/applovin/impl/mediation/j$1;

    iput-wide p2, p0, Lcom/applovin/impl/mediation/j$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$1$1;->b:Lcom/applovin/impl/mediation/j$1;

    iget-object v0, v0, Lcom/applovin/impl/mediation/j$1;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/e;->K()J

    move-result-wide v0

    new-instance v2, Lcom/applovin/impl/mediation/j$1$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/applovin/impl/mediation/j$1$1$1;-><init>(Lcom/applovin/impl/mediation/j$1$1;Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
