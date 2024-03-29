.class public Lcom/google/android/material/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;,
        Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HEADER:Ljava/lang/String; = "android:menu:header"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field private callback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field headerLayout:Landroid/widget/LinearLayout;

.field iconTintList:Landroid/content/res/ColorStateList;

.field private id:I

.field itemBackground:Landroid/graphics/drawable/Drawable;

.field itemHorizontalPadding:I

.field itemIconPadding:I

.field layoutInflater:Landroid/view/LayoutInflater;

.field menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lcom/google/android/material/internal/NavigationMenuView;

.field final onClickListener:Landroid/view/View$OnClickListener;

.field paddingSeparator:I

.field private paddingTopDefault:I

.field textAppearance:I

.field textAppearanceSet:Z

.field textColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$1;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 213
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchApplyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 6

    .line 294
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 295
    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    if-eq v1, v0, :cond_1e

    .line 296
    iput v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 297
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1e

    .line 298
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 301
    :cond_1e
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getCheckedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->id:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .registers 2

    .line 270
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    return v0
.end method

.method public getItemIconPadding()I
    .registers 2

    .line 279
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_31

    .line 98
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 100
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-nez p1, :cond_1c

    .line 101
    new-instance p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 103
    :cond_1c
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 105
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 106
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    :cond_31
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    return-object p1
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 4

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 89
    iput-object p2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 91
    sget p2, Lcom/google/android/material/R$dimen;->design_navigation_separator_vertical_padding:I

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->callback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_7

    .line 131
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 180
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2d

    .line 181
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 184
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_13
    const-string v0, "android:menu:adapter"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 188
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_20
    const-string v0, "android:menu:header"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 192
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_18

    .line 163
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 164
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    .line 165
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 167
    :cond_18
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v1, :cond_25

    .line 168
    invoke-virtual {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    :cond_25
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_38

    .line 171
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 172
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_38
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 219
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 220
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_19

    .line 221
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    :cond_19
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->callback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .registers 3
    .param p1    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->id:I

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 265
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 266
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .registers 2

    .line 274
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    const/4 p1, 0x0

    .line 275
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .registers 2

    .line 283
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    const/4 p1, 0x0

    .line 284
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 239
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 240
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 254
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearance:I

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearanceSet:Z

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 249
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 250
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_7

    .line 289
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    :cond_7
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 2

    .line 113
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz p1, :cond_7

    .line 114
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->update()V

    :cond_7
    return-void
.end method
