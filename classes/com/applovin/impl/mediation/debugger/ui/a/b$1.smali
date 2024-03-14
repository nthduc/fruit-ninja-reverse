.class Lcom/applovin/impl/mediation/debugger/ui/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/a/b;->a(Ljava/util/List;Lcom/applovin/impl/sdk/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/a/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b$1;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/b$1;->a:Lcom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/a/b;->notifyDataSetChanged()V

    return-void
.end method
