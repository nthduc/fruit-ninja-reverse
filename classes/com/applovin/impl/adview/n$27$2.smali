.class Lcom/applovin/impl/adview/n$27$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n$27;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/n$27;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n$27;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/n$27$2;->a:Lcom/applovin/impl/adview/n$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_b

    :goto_3
    iget-object p1, p0, Lcom/applovin/impl/adview/n$27$2;->a:Lcom/applovin/impl/adview/n$27;

    iget-object p1, p1, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->e(Lcom/applovin/impl/adview/n;)V

    goto :goto_31

    :cond_b
    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_2c

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27$2;->a:Lcom/applovin/impl/adview/n$27;

    iget-object p1, p1, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->f(Lcom/applovin/impl/adview/n;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27$2;->a:Lcom/applovin/impl/adview/n$27;

    iget-object p1, p1, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->g(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/sdk/c/d;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/applovin/impl/adview/n$27$2;->a:Lcom/applovin/impl/adview/n$27;

    iget-object p1, p1, Lcom/applovin/impl/adview/n$27;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->g(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/sdk/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/d;->g()V

    goto :goto_31

    :cond_2c
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_31

    goto :goto_3

    :cond_31
    :goto_31
    const/4 p1, 0x0

    return p1
.end method
