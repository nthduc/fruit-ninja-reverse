.class public Lcom/chartboost/sdk/impl/n1;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/Libraries/h;

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n1;->a:Lcom/chartboost/sdk/Libraries/h;

    .line 3
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n1;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .registers 6

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_41

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_33

    .line 13
    :cond_2e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 14
    :goto_33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    :cond_41
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/h;)V
    .registers 3

    if-eqz p1, :cond_1b

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n1;->a:Lcom/chartboost/sdk/Libraries/h;

    if-ne v0, p1, :cond_d

    return-void

    .line 4
    :cond_d
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n1;->a:Lcom/chartboost/sdk/Libraries/h;

    .line 5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/h;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/n1;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/chartboost/sdk/impl/n1;->a:Lcom/chartboost/sdk/Libraries/h;

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
