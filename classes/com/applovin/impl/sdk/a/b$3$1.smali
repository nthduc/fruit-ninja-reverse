.class Lcom/applovin/impl/sdk/a/b$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/a/b$3;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/a/b$3;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b$3$1;->a:Lcom/applovin/impl/sdk/a/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/sdk/a/b$3$1;->a:Lcom/applovin/impl/sdk/a/b$3;

    iget-object p1, p1, Lcom/applovin/impl/sdk/a/b$3;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {p1}, Lcom/applovin/impl/sdk/a/b;->c(Lcom/applovin/impl/sdk/a/b;)Lcom/applovin/impl/sdk/a/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/impl/sdk/a/b$a;->a()V

    return-void
.end method
