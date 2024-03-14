.class Lcom/applovin/impl/mediation/b/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/b/f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/b/f;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/f$2;->a:Lcom/applovin/impl/mediation/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$2;->a:Lcom/applovin/impl/mediation/b/f;

    const/16 v1, 0xcc

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/b/f;->a(Lcom/applovin/impl/mediation/b/f;I)V

    return-void
.end method
