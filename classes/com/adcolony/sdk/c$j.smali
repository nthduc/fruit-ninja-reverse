.class Lcom/adcolony/sdk/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/adcolony/sdk/c;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/c;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    iput-boolean p2, p0, Lcom/adcolony/sdk/c$j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v0}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/c;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/c;J)J

    .line 6
    :cond_15
    iget-object v0, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 8
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v2}, Lcom/adcolony/sdk/c;->b(Lcom/adcolony/sdk/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyAdView;

    if-nez v0, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    .line 9
    :cond_3a
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAdView;->getWebView()Lcom/adcolony/sdk/m0;

    move-result-object v2

    :goto_3e
    move-object v7, v2

    .line 10
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v8

    const/4 v3, 0x1

    .line 12
    iget-boolean v4, p0, Lcom/adcolony/sdk/c$j;->a:Z

    const/4 v5, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_4d

    const/4 v6, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    :goto_4e
    move-object v2, v8

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/adcolony/sdk/o0;->a(Landroid/view/View;Landroid/content/Context;ZZZZ)F

    move-result v0

    if-nez v8, :cond_58

    const-wide/16 v1, 0x0

    goto :goto_60

    .line 15
    :cond_58
    invoke-static {v8}, Lcom/adcolony/sdk/k0;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {v1}, Lcom/adcolony/sdk/k0;->a(Landroid/media/AudioManager;)D

    move-result-wide v1

    .line 16
    :goto_60
    invoke-static {v7}, Lcom/adcolony/sdk/k0;->a(Landroid/view/View;)I

    move-result v3

    .line 17
    invoke-static {v7}, Lcom/adcolony/sdk/k0;->b(Landroid/view/View;)I

    move-result v4

    .line 18
    iget-object v5, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v5}, Lcom/adcolony/sdk/c;->c(Lcom/adcolony/sdk/c;)I

    move-result v5

    if-ne v3, v5, :cond_7a

    iget-object v5, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v5}, Lcom/adcolony/sdk/c;->d(Lcom/adcolony/sdk/c;)I

    move-result v5

    if-eq v4, v5, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v9, 0x0

    :cond_7a
    :goto_7a
    if-eqz v9, :cond_8b

    .line 21
    iget-object v5, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v5, v3}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/c;I)I

    .line 22
    iget-object v5, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v5, v4}, Lcom/adcolony/sdk/c;->b(Lcom/adcolony/sdk/c;I)I

    .line 23
    iget-object v5, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v5, v3, v4, v7}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/c;IILcom/adcolony/sdk/m0;)V

    .line 26
    :cond_8b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 27
    iget-object v5, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v5}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/c;)J

    move-result-wide v5

    const-wide/16 v7, 0xc8

    add-long/2addr v5, v7

    cmp-long v7, v5, v3

    if-gez v7, :cond_c6

    .line 28
    iget-object v5, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v5, v3, v4}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/c;J)J

    .line 29
    iget-object v3, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v3}, Lcom/adcolony/sdk/c;->e(Lcom/adcolony/sdk/c;)F

    move-result v3

    cmpl-float v3, v3, v0

    if-nez v3, :cond_b7

    iget-object v3, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v3}, Lcom/adcolony/sdk/c;->f(Lcom/adcolony/sdk/c;)D

    move-result-wide v3

    cmpl-double v5, v3, v1

    if-nez v5, :cond_b7

    if-eqz v9, :cond_bc

    .line 30
    :cond_b7
    iget-object v3, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v3, v0, v1, v2}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/c;FD)V

    .line 32
    :cond_bc
    iget-object v3, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v3, v0}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/c;F)F

    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/c$j;->b:Lcom/adcolony/sdk/c;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/c;D)D

    :cond_c6
    return-void
.end method
