.class abstract Landroidx/appcompat/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .registers 13

    const/4 v0, 0x0

    .line 147
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 148
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 149
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move-object v6, p1

    move-object v7, v4

    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v0, v3, :cond_37

    .line 151
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v5, :cond_1c

    move-object v7, v4

    move v5, v8

    :cond_1c
    if-nez v6, :cond_23

    .line 158
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 161
    :cond_23
    invoke-interface {p0, v0, v7, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 162
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 164
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p3, :cond_31

    return p3

    :cond_31
    if-le v8, p1, :cond_34

    move p1, v8

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_37
    return p1
.end method

.method protected static shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .registers 6

    .line 203
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1d

    .line 206
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 207
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    :goto_1d
    return v1
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;
    .registers 2

    .line 184
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_d

    .line 185
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    return-object p0

    .line 187
    :cond_d
    check-cast p0, Landroidx/appcompat/view/menu/MenuAdapter;

    return-object p0
.end method


# virtual methods
.method public abstract addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .registers 2

    .line 78
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .registers 3

    .line 103
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MenuPopups manage their own views"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    .line 124
    invoke-static {p1}, Landroidx/appcompat/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;

    move-result-object p2

    .line 128
    iget-object p2, p2, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 129
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopup;->closeMenuOnSubMenuOpened()Z

    move-result p3

    if-eqz p3, :cond_1a

    const/4 p3, 0x0

    goto :goto_1b

    :cond_1a
    const/4 p3, 0x4

    .line 128
    :goto_1b
    invoke-virtual {p2, p1, p0, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    return-void
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 71
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
