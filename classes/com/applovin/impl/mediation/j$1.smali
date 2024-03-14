.class Lcom/applovin/impl/mediation/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/applovin/impl/mediation/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$1;->c:Lcom/applovin/impl/mediation/j;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j$1;->a:Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;

    iput-object p3, p0, Lcom/applovin/impl/mediation/j$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$1;->c:Lcom/applovin/impl/mediation/j;

    invoke-static {v2}, Lcom/applovin/impl/mediation/j;->c(Lcom/applovin/impl/mediation/j;)Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/j$1;->a:Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;

    iget-object v4, p0, Lcom/applovin/impl/mediation/j$1;->b:Landroid/app/Activity;

    new-instance v5, Lcom/applovin/impl/mediation/j$1$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/applovin/impl/mediation/j$1$1;-><init>(Lcom/applovin/impl/mediation/j$1;J)V

    invoke-interface {v2, v3, v4, v5}, Lcom/applovin/mediation/adapter/MaxAdapter;->initialize(Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V

    return-void
.end method
