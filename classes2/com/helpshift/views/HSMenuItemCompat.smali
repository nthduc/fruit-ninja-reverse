.class public Lcom/helpshift/views/HSMenuItemCompat;
.super Ljava/lang/Object;
.source "HSMenuItemCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)V
    .registers 3

    .line 60
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/helpshift/util/ApplicationUtil;->isSupportLibVersionEqualAndAbove(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 61
    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_13

    .line 64
    :cond_10
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat;->collapseActionView(Landroid/view/MenuItem;)Z

    :goto_13
    return-void
.end method

.method public static expandActionView(Landroid/view/MenuItem;)V
    .registers 3

    .line 69
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/helpshift/util/ApplicationUtil;->isSupportLibVersionEqualAndAbove(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_13

    .line 73
    :cond_10
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    :goto_13
    return-void
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3

    .line 39
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/helpshift/util/ApplicationUtil;->isSupportLibVersionEqualAndAbove(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 40
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p0

    goto :goto_15

    .line 43
    :cond_11
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .registers 3

    .line 50
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/helpshift/util/ApplicationUtil;->isSupportLibVersionEqualAndAbove(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 51
    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result p0

    goto :goto_15

    .line 54
    :cond_11
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_15
    return p0
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroid/view/MenuItem$OnActionExpandListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/MenuItem$OnActionExpandListener;",
            ":",
            "Landroidx/core/view/MenuItemCompat$OnActionExpandListener;",
            ">(",
            "Landroid/view/MenuItem;",
            "TT;)V"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/helpshift/util/ApplicationUtil;->isSupportLibVersionEqualAndAbove(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 23
    :try_start_c
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    :try_end_f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_23

    :catch_10
    move-exception v0

    const-string v1, "HSMenuItemCompat"

    const-string v2, "Exception thrown while calling MenuItem#setOnActionExpandListener: "

    .line 28
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    check-cast p1, Landroidx/core/view/MenuItemCompat$OnActionExpandListener;

    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    goto :goto_23

    .line 33
    :cond_1e
    check-cast p1, Landroidx/core/view/MenuItemCompat$OnActionExpandListener;

    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    :goto_23
    return-void
.end method
