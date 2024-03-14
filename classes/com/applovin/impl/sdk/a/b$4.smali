.class Lcom/applovin/impl/sdk/a/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/b;->a(Lcom/applovin/impl/sdk/ad/g;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ad/g;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/applovin/impl/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/a/b;Lcom/applovin/impl/sdk/ad/g;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/b$4;->c:Lcom/applovin/impl/sdk/a/b;

    iput-object p2, p0, Lcom/applovin/impl/sdk/a/b$4;->a:Lcom/applovin/impl/sdk/ad/g;

    iput-object p3, p0, Lcom/applovin/impl/sdk/a/b$4;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/b$4;->c:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v1}, Lcom/applovin/impl/sdk/a/b;->d(Lcom/applovin/impl/sdk/a/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/b$4;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/b$4;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_23
    iget-object v1, p0, Lcom/applovin/impl/sdk/a/b$4;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->ap()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/a/b$4$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/a/b$4$1;-><init>(Lcom/applovin/impl/sdk/a/b$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/b$4;->c:Lcom/applovin/impl/sdk/a/b;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/a/b;->a(Lcom/applovin/impl/sdk/a/b;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
