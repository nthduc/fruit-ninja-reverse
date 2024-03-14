.class Lcom/adcolony/sdk/d$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/c;

.field final synthetic b:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/d$o;->b:Lcom/adcolony/sdk/d;

    iput-object p2, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 2
    iget-object v1, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    .line 3
    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/z;

    .line 4
    invoke-static {v1, v2}, Lcom/adcolony/sdk/a;->b(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_2b
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adcolony/sdk/c;->A:Landroid/widget/VideoView;

    .line 11
    iput-object v1, v0, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    .line 14
    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_55
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/m0;

    .line 15
    invoke-virtual {v1}, Lcom/adcolony/sdk/m0;->t()Z

    move-result v3

    if-nez v3, :cond_55

    .line 16
    invoke-virtual {v1}, Lcom/adcolony/sdk/m0;->c()I

    move-result v3

    if-lez v3, :cond_6f

    goto :goto_73

    .line 17
    :cond_6f
    invoke-virtual {v1}, Lcom/adcolony/sdk/m0;->d()I

    move-result v3

    .line 18
    :goto_73
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/adcolony/sdk/h;->a(I)Z

    const-string v3, "about:blank"

    .line 19
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 21
    invoke-virtual {v1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 22
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/m0;->a(Z)V

    goto :goto_55

    .line 26
    :cond_89
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->m()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/l0;

    .line 27
    invoke-virtual {v1}, Lcom/adcolony/sdk/l0;->j()V

    .line 28
    invoke-virtual {v1}, Lcom/adcolony/sdk/l0;->k()V

    goto :goto_97

    .line 31
    :cond_aa
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->m()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->l()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 34
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 35
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 36
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/d$o;->a:Lcom/adcolony/sdk/c;

    iput-boolean v2, v0, Lcom/adcolony/sdk/c;->m:Z

    return-void
.end method
