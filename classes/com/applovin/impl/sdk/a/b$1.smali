.class Lcom/applovin/impl/sdk/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b$1;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/b;->a(Lcom/applovin/impl/sdk/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/b$1;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/b;->a(Lcom/applovin/impl/sdk/a/b;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_11
    return-void
.end method
