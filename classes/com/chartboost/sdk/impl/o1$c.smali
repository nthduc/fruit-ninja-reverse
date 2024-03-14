.class Lcom/chartboost/sdk/impl/o1$c;
.super Lcom/chartboost/sdk/impl/n1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private c:Z

.field final synthetic d:Lcom/chartboost/sdk/impl/o1;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/o1;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o1$c;->d:Lcom/chartboost/sdk/impl/o1;

    .line 2
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/n1;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/o1$c;->c:Z

    .line 8
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/o1$c;->c:Z

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o1$c;->d:Lcom/chartboost/sdk/impl/o1;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/o1;->d:Z

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    .line 2
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/o1$c;->c:Z

    if-nez p1, :cond_59

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v0, 0x77000000

    if-eqz p1, :cond_1e

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2d

    .line 5
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/o1$c;->c:Z

    goto :goto_59

    .line 11
    :cond_34
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/o1$c;->c:Z

    if-eqz p1, :cond_59

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_53

    .line 14
    :cond_46
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 15
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 16
    :cond_53
    :goto_53
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/o1$c;->c:Z

    :cond_59
    :goto_59
    return-void
.end method

.method public performClick()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method
