.class public Lcom/helpshift/views/HSSearchView;
.super Landroidx/appcompat/widget/SearchView;
.source "HSSearchView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-direct {p0}, Lcom/helpshift/views/HSSearchView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-direct {p0}, Lcom/helpshift/views/HSSearchView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0}, Lcom/helpshift/views/HSSearchView;->init()V

    return-void
.end method

.method private init()V
    .registers 1

    .line 25
    invoke-static {p0}, Lcom/helpshift/views/FontApplier;->apply(Landroid/view/View;)V

    return-void
.end method
