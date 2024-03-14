.class public Lcom/chartboost/sdk/impl/i0$b;
.super Lcom/chartboost/sdk/impl/h0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final n:Lcom/chartboost/sdk/impl/o1;

.field final o:Lcom/chartboost/sdk/impl/o0;

.field p:Lcom/chartboost/sdk/impl/l0;

.field private q:Landroid/view/View;

.field final r:Lcom/chartboost/sdk/impl/g0;

.field final s:Lcom/chartboost/sdk/impl/j0;

.field private final t:Lcom/chartboost/sdk/impl/o1;

.field final synthetic u:Lcom/chartboost/sdk/impl/i0;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/i0;Landroid/content/Context;)V
    .registers 11

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/h0$a;-><init>(Lcom/chartboost/sdk/impl/h0;Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 5
    iget-boolean v1, p1, Lcom/chartboost/sdk/impl/i0;->S:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_25

    .line 7
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->q:Landroid/view/View;

    const/high16 v3, -0x1000000

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->q:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->q:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 12
    :cond_25
    iget-object v1, p1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v1, v1, Lcom/chartboost/sdk/Model/c;->a:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_41

    .line 13
    new-instance v1, Lcom/chartboost/sdk/impl/l0;

    invoke-direct {v1, p2, p1}, Lcom/chartboost/sdk/impl/l0;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/l0;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->p:Lcom/chartboost/sdk/impl/l0;

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->p:Lcom/chartboost/sdk/impl/l0;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 18
    :cond_41
    new-instance v1, Lcom/chartboost/sdk/impl/o0;

    invoke-direct {v1, p2, p1}, Lcom/chartboost/sdk/impl/o0;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/o0;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    .line 19
    iget-object v1, v1, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/f$b;->a(Landroid/view/View;)V

    .line 21
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 22
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 23
    new-instance v1, Lcom/chartboost/sdk/impl/g0;

    invoke-direct {v1, p2, p1}, Lcom/chartboost/sdk/impl/g0;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/g0;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->r:Lcom/chartboost/sdk/impl/g0;

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 25
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->r:Lcom/chartboost/sdk/impl/g0;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 27
    iget-object v1, p1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v1, v1, Lcom/chartboost/sdk/Model/c;->a:I

    if-ne v1, v3, :cond_8e

    .line 28
    new-instance v1, Lcom/chartboost/sdk/impl/j0;

    invoke-direct {v1, p2, p1}, Lcom/chartboost/sdk/impl/j0;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chartboost/sdk/impl/j0;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    .line 29
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 30
    iget-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_91

    :cond_8e
    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    .line 36
    :goto_91
    new-instance p2, Lcom/chartboost/sdk/impl/i0$b$a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/chartboost/sdk/impl/i0$b$a;-><init>(Lcom/chartboost/sdk/impl/i0$b;Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    .line 47
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 48
    iget-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance p2, Lcom/chartboost/sdk/impl/i0$b$b;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/chartboost/sdk/impl/i0$b$b;-><init>(Lcom/chartboost/sdk/impl/i0$b;Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V

    iput-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->t:Lcom/chartboost/sdk/impl/o1;

    .line 57
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 58
    iget-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->t:Lcom/chartboost/sdk/impl/o1;

    const-string v0, "CBClose"

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->t:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 61
    iget-object p2, p1, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v0, "progress"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 62
    iget-object v0, p1, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v1, "video-controls-background"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_124

    const-string v2, "background-color"

    .line 65
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_124

    const-string v4, "border-color"

    .line 66
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_124

    const-string v5, "progress-color"

    .line 67
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_124

    const-string v6, "radius"

    .line 68
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_124

    .line 69
    iput-boolean v1, p1, Lcom/chartboost/sdk/impl/i0;->R:Z

    .line 70
    iget-object v7, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v7}, Lcom/chartboost/sdk/impl/o0;->b()Lcom/chartboost/sdk/impl/k0;

    move-result-object v7

    .line 71
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/chartboost/sdk/impl/k0;->a(I)V

    .line 72
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/chartboost/sdk/impl/k0;->b(I)V

    .line 73
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/chartboost/sdk/impl/k0;->c(I)V

    const-wide/16 v4, 0x0

    .line 74
    invoke-virtual {p2, v6, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float p2, v4

    invoke-virtual {v7, p2}, Lcom/chartboost/sdk/impl/k0;->b(F)V

    :cond_124
    const-string p2, "color"

    if-eqz v0, :cond_13b

    .line 77
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13b

    .line 78
    iget-object v2, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/o0;->a(I)V

    .line 81
    :cond_13b
    iget-object v0, p1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->a:I

    if-ne v0, v3, :cond_160

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/i0;->F:Z

    if-eqz v0, :cond_160

    .line 82
    iget-object v0, p1, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v2, "post-video-toaster"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_160

    .line 84
    iget-object v2, p0, Lcom/chartboost/sdk/impl/i0$b;->r:Lcom/chartboost/sdk/impl/g0;

    const-string v4, "title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tagline"

    .line 85
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v2, v4, v0}, Lcom/chartboost/sdk/impl/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_160
    iget-object v0, p1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->a:I

    const-string v2, "text"

    if-ne v0, v3, :cond_187

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/i0;->E:Z

    if-eqz v0, :cond_187

    .line 92
    iget-object v0, p1, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v4, "confirmation"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_187

    .line 94
    iget-object v4, p0, Lcom/chartboost/sdk/impl/i0$b;->p:Lcom/chartboost/sdk/impl/l0;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result p2

    .line 96
    invoke-virtual {v4, v5, p2}, Lcom/chartboost/sdk/impl/l0;->a(Ljava/lang/String;I)V

    .line 101
    :cond_187
    iget-object p2, p1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget p2, p2, Lcom/chartboost/sdk/Model/c;->a:I

    const-string v0, ""

    const/4 v4, 0x0

    if-ne p2, v3, :cond_1d4

    iget-boolean p2, p1, Lcom/chartboost/sdk/impl/i0;->G:Z

    if-eqz p2, :cond_1d4

    .line 102
    iget-object p2, p1, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v3, "post-video-reward-toaster"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1b2

    const-string v3, "position"

    .line 104
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "inside-top"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b2

    const/4 v3, 0x0

    goto :goto_1b3

    :cond_1b2
    const/4 v3, 0x1

    .line 106
    :goto_1b3
    iget-object v5, p0, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {v5, v3}, Lcom/chartboost/sdk/impl/m0;->a(I)V

    .line 108
    iget-object v3, p0, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    if-eqz p2, :cond_1c1

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1c2

    :cond_1c1
    move-object p2, v0

    :goto_1c2
    invoke-virtual {v3, p2}, Lcom/chartboost/sdk/impl/j0;->a(Ljava/lang/String;)V

    .line 109
    iget-object p2, p1, Lcom/chartboost/sdk/impl/i0;->O:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result p2

    if-eqz p2, :cond_1d4

    .line 110
    iget-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/i0;->Q:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {p2, v2}, Lcom/chartboost/sdk/impl/j0;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 113
    :cond_1d4
    invoke-virtual {p1}, Lcom/chartboost/sdk/f;->e()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1e2

    const-string v2, "video-click-button"

    .line 114
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e7

    .line 115
    :cond_1e2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/o0;->d()V

    .line 118
    :cond_1e7
    iget-object v2, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v5, "video-progress-timer-enabled"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/o0;->c(Z)V

    .line 119
    iget-boolean v2, p1, Lcom/chartboost/sdk/impl/i0;->T:Z

    if-nez v2, :cond_1fc

    iget-boolean v2, p1, Lcom/chartboost/sdk/impl/i0;->S:Z

    if-eqz v2, :cond_202

    .line 120
    :cond_1fc
    iget-object v2, p0, Lcom/chartboost/sdk/impl/h0$a;->l:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :cond_202
    invoke-virtual {p1}, Lcom/chartboost/sdk/f;->f()I

    move-result v2

    .line 122
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v2

    .line 123
    new-array v1, v1, [Ljava/lang/String;

    if-eqz v2, :cond_211

    const-string v2, "video-portrait"

    goto :goto_213

    :cond_211
    const-string v2, "video-landscape"

    :goto_213
    aput-object v2, v1, v4

    invoke-static {p2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_221

    const-string v0, "id"

    .line 124
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_221
    iput-object v0, p1, Lcom/chartboost/sdk/impl/i0;->w:Ljava/lang/String;

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_22f

    .line 126
    sget-object p2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void

    .line 130
    :cond_22f
    iget-object p2, p1, Lcom/chartboost/sdk/impl/i0;->v:Ljava/lang/String;

    if-nez p2, :cond_23d

    .line 131
    iget-object p2, p1, Lcom/chartboost/sdk/impl/i0;->s:Lcom/chartboost/sdk/Libraries/f;

    iget-object v0, p1, Lcom/chartboost/sdk/impl/i0;->w:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/chartboost/sdk/impl/i0;->v:Ljava/lang/String;

    .line 132
    :cond_23d
    iget-object p2, p1, Lcom/chartboost/sdk/impl/i0;->v:Ljava/lang/String;

    if-nez p2, :cond_247

    .line 133
    sget-object p2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void

    .line 138
    :cond_247
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/impl/o0;->a(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/i0;Landroid/content/Context;Lcom/chartboost/sdk/impl/i0$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/i0$b;-><init>(Lcom/chartboost/sdk/impl/i0;Landroid/content/Context;)V

    return-void
.end method

.method private a(IZ)V
    .registers 9

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iput p1, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_ba

    if-eq p1, v2, :cond_78

    if-eq p1, v1, :cond_f

    goto/16 :goto_100

    .line 104
    :cond_f
    iget-object v4, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v2, v4, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v4, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v4, v4, Lcom/chartboost/sdk/Model/c;->a:I

    if-ne v4, v1, :cond_21

    .line 106
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->p:Lcom/chartboost/sdk/impl/l0;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 107
    :cond_21
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v0, Lcom/chartboost/sdk/impl/i0;->S:Z

    if-eqz v1, :cond_2c

    .line 108
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->q:Landroid/view/View;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 109
    :cond_2c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 110
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v2, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i0;->P:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i0;->O:Lcom/chartboost/sdk/Libraries/h;

    .line 112
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/i0;->F:Z

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    goto :goto_57

    :cond_56
    const/4 v0, 0x0

    .line 113
    :goto_57
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/i0$b;->r:Lcom/chartboost/sdk/impl/g0;

    invoke-virtual {v1, v0, v4, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/o0;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/i0;->H:Z

    if-eqz v0, :cond_100

    .line 118
    invoke-direct {p0, v3}, Lcom/chartboost/sdk/impl/i0$b;->e(Z)V

    goto/16 :goto_100

    .line 119
    :cond_78
    iget-object v4, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v3, v4, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v4, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v4, v4, Lcom/chartboost/sdk/Model/c;->a:I

    if-ne v4, v1, :cond_8a

    .line 121
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->p:Lcom/chartboost/sdk/impl/l0;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 122
    :cond_8a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v0, Lcom/chartboost/sdk/impl/i0;->S:Z

    if-eqz v1, :cond_95

    .line 123
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->q:Landroid/view/View;

    invoke-virtual {v0, v2, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 124
    :cond_95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0, v2, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->r:Lcom/chartboost/sdk/impl/g0;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 127
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/o0;->setEnabled(Z)V

    goto :goto_100

    .line 130
    :cond_ba
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->s()Z

    move-result v4

    xor-int/2addr v4, v2

    iget-object v5, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v4, v5, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v4, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v4, v4, Lcom/chartboost/sdk/Model/c;->a:I

    if-ne v4, v1, :cond_d1

    .line 132
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->p:Lcom/chartboost/sdk/impl/l0;

    invoke-virtual {v0, v2, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 133
    :cond_d1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v0, Lcom/chartboost/sdk/impl/i0;->S:Z

    if-eqz v1, :cond_dc

    .line 134
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->q:Landroid/view/View;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 135
    :cond_dc
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 137
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->r:Lcom/chartboost/sdk/impl/g0;

    invoke-virtual {v0, v3, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 138
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/o0;->setEnabled(Z)V

    .line 175
    :cond_100
    :goto_100
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i0$b;->f()Z

    move-result v0

    .line 176
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/i0$b;->b(Z)Lcom/chartboost/sdk/impl/o1;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    iget-object v4, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v4, v0, v1, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 179
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/i0$b;->b(Z)Lcom/chartboost/sdk/impl/o1;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 181
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v1, v3, v0, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v0, Lcom/chartboost/sdk/impl/i0;->T:Z

    if-nez v1, :cond_126

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/i0;->S:Z

    if-eqz v0, :cond_132

    .line 185
    :cond_126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->s()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v4, p0, Lcom/chartboost/sdk/impl/h0$a;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    .line 186
    :cond_132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->s()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v4, p0, Lcom/chartboost/sdk/impl/h0$a;->h:Lcom/chartboost/sdk/impl/n1;

    invoke-virtual {v0, v1, v4, p2}, Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V

    if-eqz p1, :cond_141

    goto :goto_142

    :cond_141
    const/4 v2, 0x0

    .line 187
    :goto_142
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/f$b;->a(Z)V

    return-void
.end method

.method private e(Z)V
    .registers 5

    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/m0;->a(Z)V

    goto :goto_f

    .line 9
    :cond_9
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    :goto_f
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object p1, p1, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v0, Lcom/chartboost/sdk/impl/i0$b$d;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/i0$b$d;-><init>(Lcom/chartboost/sdk/impl/i0$b;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->k()V

    .line 189
    invoke-super {p0}, Lcom/chartboost/sdk/impl/h0$a;->a()V

    return-void
.end method

.method protected a(FFFF)V
    .registers 7

    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v0, Lcom/chartboost/sdk/impl/i0;->D:Z

    if-eqz v1, :cond_b

    iget v0, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v0, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    if-nez v0, :cond_12

    goto :goto_15

    .line 194
    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/i0$b;->b(FFFF)V

    :cond_15
    :goto_15
    return-void
.end method

.method protected a(II)V
    .registers 18

    move-object v0, p0

    .line 1
    invoke-super/range {p0 .. p2}, Lcom/chartboost/sdk/impl/h0$a;->a(II)V

    .line 4
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v1, v1, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/chartboost/sdk/impl/i0$b;->a(IZ)V

    .line 6
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->f()I

    move-result v1

    .line 7
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v1

    .line 9
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19
    iget-object v4, v0, Lcom/chartboost/sdk/impl/h0$a;->h:Lcom/chartboost/sdk/impl/n1;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 22
    iget-object v10, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    if-eqz v1, :cond_40

    iget-object v11, v10, Lcom/chartboost/sdk/impl/i0;->K:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_42

    :cond_40
    iget-object v11, v10, Lcom/chartboost/sdk/impl/i0;->J:Lcom/chartboost/sdk/Libraries/h;

    :goto_42
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v10, v5, v11, v12}, Lcom/chartboost/sdk/impl/h0;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 23
    iget-object v10, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    if-eqz v1, :cond_4e

    const-string v11, "replay-portrait"

    goto :goto_50

    :cond_4e
    const-string v11, "replay-landscape"

    :goto_50
    invoke-virtual {v10, v11}, Lcom/chartboost/sdk/impl/h0;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v10

    .line 24
    iget v11, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v11, v11

    iget v13, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v11, v13

    iget v13, v10, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    add-float/2addr v11, v13

    iget v13, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v13, v13

    div-float/2addr v13, v14

    sub-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 25
    iget v13, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v13, v13

    iget v4, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v14

    add-float/2addr v13, v4

    iget v4, v10, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v13, v4

    iget v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v14

    sub-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 26
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v11, p1, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 27
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v10, p2, v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 28
    iget-object v4, v0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->bringToFront()V

    if-eqz v1, :cond_ad

    .line 30
    iget-object v4, v0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    iget-object v10, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v10, v10, Lcom/chartboost/sdk/impl/i0;->K:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v10}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    goto :goto_b6

    .line 32
    :cond_ad
    iget-object v4, v0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    iget-object v10, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v10, v10, Lcom/chartboost/sdk/impl/i0;->J:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v10}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 34
    :goto_b6
    iget-object v4, v0, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 35
    iget-object v10, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v10}, Lcom/chartboost/sdk/impl/i0;->s()Z

    move-result v10

    if-nez v10, :cond_e7

    .line 37
    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 38
    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 39
    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 40
    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 42
    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 43
    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 44
    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 45
    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_10f

    .line 48
    :cond_e7
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz v1, :cond_f3

    .line 50
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h0;->n:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_f7

    :cond_f3
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h0;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 51
    :goto_f7
    iget-object v6, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v6, v10, v1, v12}, Lcom/chartboost/sdk/impl/h0;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 52
    iput v2, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 53
    iput v2, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v2, 0xb

    .line 54
    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iget-object v2, v0, Lcom/chartboost/sdk/impl/i0$b;->t:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v2, v0, Lcom/chartboost/sdk/impl/i0$b;->t:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 59
    :goto_10f
    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v1, 0x48

    .line 60
    iput v1, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 61
    iget v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 62
    iget v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v1

    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 64
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v1, Lcom/chartboost/sdk/impl/i0;->S:Z

    if-eqz v1, :cond_12e

    .line 65
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->q:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    :cond_12e
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, v1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v1, v1, Lcom/chartboost/sdk/Model/c;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13c

    .line 67
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->p:Lcom/chartboost/sdk/impl/l0;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :cond_13c
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->r:Lcom/chartboost/sdk/impl/g0;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->n:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, v1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v1, v1, Lcom/chartboost/sdk/Model/c;->a:I

    if-ne v1, v2, :cond_158

    .line 73
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->p:Lcom/chartboost/sdk/impl/l0;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/l0;->a()V

    .line 74
    :cond_158
    iget-object v1, v0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/o0;->h()V

    return-void
.end method

.method public b(Z)Lcom/chartboost/sdk/impl/o1;
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_14

    :cond_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->s()Z

    move-result v0

    if-nez v0, :cond_17

    if-nez p1, :cond_17

    :cond_14
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->t:Lcom/chartboost/sdk/impl/o1;

    goto :goto_19

    :cond_17
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0$a;->i:Lcom/chartboost/sdk/impl/o1;

    :goto_19
    return-object p1
.end method

.method protected b(FFFF)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v0, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 2
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/i0$b;->d(Z)V

    :cond_b
    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v3, "x"

    invoke-static {v3, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    aput-object p1, v0, v1

    .line 6
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "y"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    aput-object p1, v0, v2

    .line 7
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "w"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 8
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "h"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 9
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/f;->a(Lorg/json/JSONObject;)Z

    return-void
.end method

.method protected c()V
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v1, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    iget-object v0, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->c:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    if-ne v0, v2, :cond_10

    return-void

    .line 39
    :cond_10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v0, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    if-ne v0, v2, :cond_2d

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/i0$b;->d(Z)V

    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o0;->c()V

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v1, v0, Lcom/chartboost/sdk/impl/i0;->u:I

    if-ge v1, v2, :cond_2d

    add-int/2addr v1, v2

    .line 43
    iput v1, v0, Lcom/chartboost/sdk/impl/i0;->u:I

    .line 44
    iget-object v0, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->p()V

    .line 47
    :cond_2d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/i0$b$e;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/i0$b$e;-><init>(Lcom/chartboost/sdk/impl/i0$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method c(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v1, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    return-void

    .line 4
    :cond_8
    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/i0;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 6
    invoke-direct {p0, v1, p1}, Lcom/chartboost/sdk/impl/i0$b;->a(IZ)V

    return-void

    .line 9
    :cond_11
    invoke-direct {p0, v2, p1}, Lcom/chartboost/sdk/impl/i0$b;->a(IZ)V

    .line 11
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    const-string v0, "timer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v0, v0, Lcom/chartboost/sdk/impl/i0;->u:I

    if-ge v0, v2, :cond_73

    if-eqz p1, :cond_73

    const-string v0, "delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v4, v4, Lcom/chartboost/sdk/impl/i0;->D:Z

    if-eqz v4, :cond_3d

    const-string v4, "visible"

    goto :goto_3f

    :cond_3d
    const-string v4, "hidden"

    :goto_3f
    aput-object v4, v3, v1

    const-string v1, "controls starting %s, setting timer"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "InterstitialVideoViewProtocol"

    invoke-static {v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v3, v3, Lcom/chartboost/sdk/impl/i0;->D:Z

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/impl/o0;->a(Z)V

    const-wide/16 v3, 0x0

    .line 16
    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 17
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    new-instance v4, Lcom/chartboost/sdk/impl/i0$b$c;

    invoke-direct {v4, p0}, Lcom/chartboost/sdk/impl/i0$b$c;-><init>(Lcom/chartboost/sdk/impl/i0$b;)V

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/chartboost/sdk/f;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_7d

    .line 28
    :cond_73
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/i0;->D:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/o0;->a(Z)V

    .line 31
    :goto_7d
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/o0;->f()V

    .line 32
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v0, p1, Lcom/chartboost/sdk/impl/i0;->u:I

    if-gt v0, v2, :cond_8d

    .line 33
    iget-object p1, p1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->q()V

    :cond_8d
    return-void
.end method

.method protected d()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/chartboost/sdk/impl/h0$a;->d()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v1, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    iget-boolean v1, v0, Lcom/chartboost/sdk/impl/i0;->E:Z

    if-eqz v1, :cond_14

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/i0;->o()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4
    :cond_14
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/i0$b;->c(Z)V

    goto :goto_1f

    .line 6
    :cond_18
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v0, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/i0$b;->a(IZ)V

    :goto_1f
    return-void
.end method

.method d(Z)V
    .registers 5

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o0;->g()V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v1, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_4b

    .line 14
    iget p1, v0, Lcom/chartboost/sdk/impl/i0;->u:I

    if-ge p1, v2, :cond_3a

    iget-object p1, v0, Lcom/chartboost/sdk/impl/i0;->C:Lorg/json/JSONObject;

    if-eqz p1, :cond_3a

    const-string v0, "post-video-reward-toaster"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/i0;->G:Z

    if-eqz v0, :cond_3a

    iget-object p1, p1, Lcom/chartboost/sdk/impl/i0;->O:Lcom/chartboost/sdk/Libraries/h;

    .line 17
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/i0;->P:Lcom/chartboost/sdk/Libraries/h;

    .line 18
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/h;->e()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 19
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/i0$b;->e(Z)V

    :cond_3a
    const/4 p1, 0x2

    .line 21
    invoke-direct {p0, p1, v2}, Lcom/chartboost/sdk/impl/i0$b;->a(IZ)V

    .line 23
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()I

    move-result p1

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 24
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_4b
    return-void
.end method

.method public e()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/i0$b;->d(Z)V

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/o0;->c()V

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v2, v1, Lcom/chartboost/sdk/impl/i0;->u:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/chartboost/sdk/impl/i0;->u:I

    if-gt v2, v0, :cond_23

    .line 4
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/i0;->p()Z

    move-result v1

    if-nez v1, :cond_23

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v2, v1, Lcom/chartboost/sdk/impl/i0;->y:I

    if-lt v2, v0, :cond_23

    .line 6
    iget-object v0, v1, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->p()V

    :cond_23
    return-void
.end method

.method protected f()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v1, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6c

    .line 3
    iget v0, v0, Lcom/chartboost/sdk/impl/i0;->u:I

    if-ge v0, v3, :cond_6c

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    .line 5
    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->f()I

    move-result v1

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->b(I)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "portrait"

    goto :goto_27

    :cond_25
    const-string v1, "landscape"

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->e()Lorg/json/JSONObject;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_48

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-string v1, "delay"

    .line 7
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_4a

    :cond_48
    const/high16 v0, -0x40800000    # -1.0f

    :goto_4a
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_58

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_59

    :cond_58
    const/4 v0, -0x1

    .line 9
    :goto_59
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iput v0, v1, Lcom/chartboost/sdk/impl/i0;->I:I

    if-ltz v0, :cond_6d

    .line 11
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/o0;->a()Lcom/chartboost/sdk/impl/k1$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/k1$a;->d()I

    move-result v1

    if-le v0, v1, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v2, 0x1

    :cond_6d
    :goto_6d
    return v2
.end method

.method protected g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/i0;->E:Z

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/i0$b;->c(Z)V

    return-void
.end method
