.class Lcom/applovin/impl/mediation/j$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j$1$1;->onCompletion(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/applovin/impl/mediation/j$1$1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j$1$1;Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$1$1$1;->c:Lcom/applovin/impl/mediation/j$1$1;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j$1$1$1;->a:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    iput-object p3, p0, Lcom/applovin/impl/mediation/j$1$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$1$1$1;->c:Lcom/applovin/impl/mediation/j$1$1;

    iget-wide v2, v2, Lcom/applovin/impl/mediation/j$1$1;->a:J

    sub-long v6, v0, v2

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$1$1$1;->c:Lcom/applovin/impl/mediation/j$1$1;

    iget-object v0, v0, Lcom/applovin/impl/mediation/j$1$1;->b:Lcom/applovin/impl/mediation/j$1;

    iget-object v0, v0, Lcom/applovin/impl/mediation/j$1;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->b(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->x()Lcom/applovin/impl/mediation/h;

    move-result-object v4

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$1$1$1;->c:Lcom/applovin/impl/mediation/j$1$1;

    iget-object v0, v0, Lcom/applovin/impl/mediation/j$1$1;->b:Lcom/applovin/impl/mediation/j$1;

    iget-object v0, v0, Lcom/applovin/impl/mediation/j$1;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/e;

    move-result-object v5

    iget-object v8, p0, Lcom/applovin/impl/mediation/j$1$1$1;->a:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    iget-object v9, p0, Lcom/applovin/impl/mediation/j$1$1$1;->b:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/applovin/impl/mediation/h;->a(Lcom/applovin/impl/mediation/a/e;JLcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    return-void
.end method
