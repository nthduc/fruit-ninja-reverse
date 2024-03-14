.class public Lcom/applovin/impl/mediation/debugger/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field private e:Lcom/applovin/impl/mediation/debugger/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/mediation/debugger/a/c;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->e:Lcom/applovin/impl/mediation/debugger/a/c;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/mediation/debugger/a/c;)V
    .registers 6

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a/b;->e:Lcom/applovin/impl/mediation/debugger/a/c;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->c()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->d()Landroid/text/SpannedString;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->d()Landroid/text/SpannedString;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_42

    :cond_3d
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->i()I

    move-result v0

    if-lez v0, :cond_64

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->j()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_69

    :cond_64
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_69
    :goto_69
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_90

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->k()I

    move-result v0

    if-lez v0, :cond_8b

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/b;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/c;->l()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a/b;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_90

    :cond_8b
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/a/b;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_90
    :goto_90
    return-void
.end method
