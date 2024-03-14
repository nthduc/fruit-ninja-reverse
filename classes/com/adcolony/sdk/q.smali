.class Lcom/adcolony/sdk/q;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/adcolony/sdk/x;

.field private l:Lcom/adcolony/sdk/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/x;ILcom/adcolony/sdk/c;)V
    .registers 5

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3
    iput p3, p0, Lcom/adcolony/sdk/q;->a:I

    .line 4
    iput-object p2, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/x;

    .line 5
    iput-object p4, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/q;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/q;->a(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/adcolony/sdk/x;)Z
    .registers 4

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 3
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/adcolony/sdk/q;->a:I

    if-ne v0, v1, :cond_30

    const-string v0, "container_id"

    .line 4
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->c()I

    move-result v1

    if-ne v0, v1, :cond_30

    const-string v0, "ad_session_id"

    .line 5
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    .line 6
    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/q;Lcom/adcolony/sdk/x;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/q;->d(Lcom/adcolony/sdk/x;)V

    return-void
.end method

.method private b(Lcom/adcolony/sdk/x;)V
    .registers 5

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "x"

    .line 3
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->b:I

    const-string v0, "y"

    .line 4
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->c:I

    const-string v0, "width"

    .line 5
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/q;->d:I

    const-string v0, "height"

    .line 6
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/adcolony/sdk/q;->e:I

    .line 9
    iget-boolean p1, p0, Lcom/adcolony/sdk/q;->f:Z

    if-eqz p1, :cond_6b

    .line 10
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/j;->n()F

    move-result p1

    .line 11
    iget v0, p0, Lcom/adcolony/sdk/q;->e:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/adcolony/sdk/q;->e:I

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/adcolony/sdk/q;->d:I

    .line 14
    iget v0, p0, Lcom/adcolony/sdk/q;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/adcolony/sdk/q;->b:I

    .line 15
    iget p1, p0, Lcom/adcolony/sdk/q;->c:I

    iget v0, p0, Lcom/adcolony/sdk/q;->e:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/adcolony/sdk/q;->c:I

    .line 17
    :cond_6b
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    iget v0, p0, Lcom/adcolony/sdk/q;->b:I

    iget v1, p0, Lcom/adcolony/sdk/q;->c:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 19
    iget v0, p0, Lcom/adcolony/sdk/q;->d:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 20
    iget v0, p0, Lcom/adcolony/sdk/q;->e:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/adcolony/sdk/q;Lcom/adcolony/sdk/x;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/q;->b(Lcom/adcolony/sdk/x;)V

    return-void
.end method

.method private c(Lcom/adcolony/sdk/x;)V
    .registers 3

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "filepath"

    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/q;->i:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/adcolony/sdk/q;->i:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic d(Lcom/adcolony/sdk/q;Lcom/adcolony/sdk/x;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/q;->c(Lcom/adcolony/sdk/x;)V

    return-void
.end method

.method private d(Lcom/adcolony/sdk/x;)V
    .registers 3

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "visible"

    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15

    :cond_11
    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_15
    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    .line 7
    iget-object v0, p0, Lcom/adcolony/sdk/q;->k:Lcom/adcolony/sdk/x;

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    .line 8
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/q;->j:Ljava/lang/String;

    const-string v1, "x"

    .line 9
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/q;->b:I

    const-string v1, "y"

    .line 10
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/q;->c:I

    const-string v1, "width"

    .line 11
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/q;->d:I

    const-string v1, "height"

    .line 12
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/q;->e:I

    const-string v1, "filepath"

    .line 13
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/q;->i:Ljava/lang/String;

    const-string v1, "dpi"

    .line 14
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adcolony/sdk/q;->f:Z

    const-string v1, "invert_y"

    .line 15
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adcolony/sdk/q;->g:Z

    const-string v1, "wrap_content"

    .line 16
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/q;->h:Z

    .line 19
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adcolony/sdk/q;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 22
    iget-boolean v0, p0, Lcom/adcolony/sdk/q;->f:Z

    if-eqz v0, :cond_ad

    .line 23
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->n()F

    move-result v0

    .line 24
    iget v1, p0, Lcom/adcolony/sdk/q;->e:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 25
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/adcolony/sdk/q;->e:I

    .line 26
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/adcolony/sdk/q;->d:I

    .line 27
    iget v1, p0, Lcom/adcolony/sdk/q;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/adcolony/sdk/q;->b:I

    .line 28
    iget-boolean v0, p0, Lcom/adcolony/sdk/q;->g:Z

    if-eqz v0, :cond_a6

    iget v0, p0, Lcom/adcolony/sdk/q;->c:I

    iget v1, p0, Lcom/adcolony/sdk/q;->e:I

    add-int/2addr v0, v1

    goto :goto_ab

    :cond_a6
    iget v0, p0, Lcom/adcolony/sdk/q;->c:I

    iget v1, p0, Lcom/adcolony/sdk/q;->e:I

    sub-int/2addr v0, v1

    :goto_ab
    iput v0, p0, Lcom/adcolony/sdk/q;->c:I

    :cond_ad
    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-boolean v0, p0, Lcom/adcolony/sdk/q;->h:Z

    if-eqz v0, :cond_bc

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_c5

    :cond_bc
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/adcolony/sdk/q;->d:I

    iget v2, p0, Lcom/adcolony/sdk/q;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 34
    :goto_c5
    iget v1, p0, Lcom/adcolony/sdk/q;->b:I

    iget v2, p0, Lcom/adcolony/sdk/q;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 35
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    iget-object v1, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->i()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/q$a;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/q$a;-><init>(Lcom/adcolony/sdk/q;)V

    const-string v2, "ImageView.set_visible"

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->i()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/q$b;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/q$b;-><init>(Lcom/adcolony/sdk/q;)V

    const-string v4, "ImageView.set_bounds"

    invoke-static {v4, v1, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->i()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/q$c;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/q$c;-><init>(Lcom/adcolony/sdk/q;)V

    const-string v5, "ImageView.set_image"

    invoke-static {v5, v1, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;Z)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_25

    if-eq v4, v9, :cond_25

    if-eq v4, v7, :cond_25

    if-eq v4, v8, :cond_25

    if-eq v4, v6, :cond_25

    if-eq v4, v5, :cond_25

    const/4 v1, 0x0

    return v1

    .line 10
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    .line 13
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v12

    .line 14
    iget v13, v0, Lcom/adcolony/sdk/q;->a:I

    const-string v14, "view_id"

    invoke-static {v12, v14, v13}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 15
    iget-object v13, v0, Lcom/adcolony/sdk/q;->j:Ljava/lang/String;

    const-string v14, "ad_session_id"

    invoke-static {v12, v14, v13}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    iget v13, v0, Lcom/adcolony/sdk/q;->b:I

    add-int/2addr v13, v10

    const-string v14, "container_x"

    invoke-static {v12, v14, v13}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 17
    iget v13, v0, Lcom/adcolony/sdk/q;->c:I

    add-int/2addr v13, v11

    const-string v15, "container_y"

    invoke-static {v12, v15, v13}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v13, "view_x"

    .line 18
    invoke-static {v12, v13, v10}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v5, "view_y"

    .line 19
    invoke-static {v12, v5, v11}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 20
    iget-object v6, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    const-string v7, "id"

    invoke-static {v12, v7, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v6, "AdContainer.on_touch_began"

    if-eqz v4, :cond_19f

    const-string v7, "AdContainer.on_touch_ended"

    move/from16 v16, v11

    const-string v11, "AdContainer.on_touch_cancelled"

    if-eq v4, v9, :cond_15a

    if-eq v4, v8, :cond_148

    const/4 v8, 0x3

    if-eq v4, v8, :cond_138

    const v8, 0xff00

    const/4 v10, 0x5

    if-eq v4, v10, :cond_fb

    const/4 v10, 0x6

    if-eq v4, v10, :cond_83

    :goto_80
    const/4 v1, 0x1

    goto/16 :goto_1af

    .line 47
    :cond_83
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/2addr v4, v8

    shr-int/lit8 v4, v4, 0x8

    .line 49
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    .line 50
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    .line 51
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    iget v9, v0, Lcom/adcolony/sdk/q;->b:I

    add-int/2addr v10, v9

    invoke-static {v12, v14, v10}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 52
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    iget v10, v0, Lcom/adcolony/sdk/q;->c:I

    add-int/2addr v9, v10

    invoke-static {v12, v15, v9}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 53
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v12, v13, v9}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 54
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v5, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 56
    iget-object v1, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->p()Z

    move-result v1

    if-nez v1, :cond_d1

    .line 57
    invoke-virtual {v3}, Lcom/adcolony/sdk/d;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Lcom/adcolony/sdk/q;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyAdView;

    invoke-virtual {v2, v1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAdView;)V

    :cond_d1
    if-lez v6, :cond_ec

    .line 59
    iget v1, v0, Lcom/adcolony/sdk/q;->d:I

    if-ge v6, v1, :cond_ec

    if-lez v8, :cond_ec

    iget v1, v0, Lcom/adcolony/sdk/q;->e:I

    if-ge v8, v1, :cond_ec

    .line 60
    new-instance v1, Lcom/adcolony/sdk/x;

    iget-object v2, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->k()I

    move-result v2

    invoke-direct {v1, v7, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto :goto_80

    .line 62
    :cond_ec
    new-instance v1, Lcom/adcolony/sdk/x;

    iget-object v2, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->k()I

    move-result v2

    invoke-direct {v1, v11, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto :goto_80

    .line 63
    :cond_fb
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/2addr v2, v8

    shr-int/lit8 v2, v2, 0x8

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Lcom/adcolony/sdk/q;->b:I

    add-int/2addr v3, v4

    invoke-static {v12, v14, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Lcom/adcolony/sdk/q;->c:I

    add-int/2addr v3, v4

    invoke-static {v12, v15, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v12, v13, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v12, v5, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 69
    new-instance v1, Lcom/adcolony/sdk/x;

    iget-object v2, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->k()I

    move-result v2

    invoke-direct {v1, v6, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto/16 :goto_80

    .line 102
    :cond_138
    new-instance v1, Lcom/adcolony/sdk/x;

    iget-object v2, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->k()I

    move-result v2

    invoke-direct {v1, v11, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto/16 :goto_80

    .line 105
    :cond_148
    new-instance v1, Lcom/adcolony/sdk/x;

    iget-object v2, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->k()I

    move-result v2

    const-string v3, "AdContainer.on_touch_moved"

    invoke-direct {v1, v3, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto/16 :goto_80

    .line 106
    :cond_15a
    iget-object v1, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->p()Z

    move-result v1

    if-nez v1, :cond_171

    .line 107
    invoke-virtual {v3}, Lcom/adcolony/sdk/d;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Lcom/adcolony/sdk/q;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyAdView;

    invoke-virtual {v2, v1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAdView;)V

    :cond_171
    if-lez v10, :cond_18f

    .line 110
    iget v1, v0, Lcom/adcolony/sdk/q;->d:I

    if-ge v10, v1, :cond_18f

    if-lez v16, :cond_18f

    iget v1, v0, Lcom/adcolony/sdk/q;->e:I

    move/from16 v2, v16

    if-ge v2, v1, :cond_18f

    .line 111
    new-instance v1, Lcom/adcolony/sdk/x;

    iget-object v2, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->k()I

    move-result v2

    invoke-direct {v1, v7, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto/16 :goto_80

    .line 113
    :cond_18f
    new-instance v1, Lcom/adcolony/sdk/x;

    iget-object v2, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->k()I

    move-result v2

    invoke-direct {v1, v11, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto/16 :goto_80

    .line 114
    :cond_19f
    new-instance v1, Lcom/adcolony/sdk/x;

    iget-object v2, v0, Lcom/adcolony/sdk/q;->l:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->k()I

    move-result v2

    invoke-direct {v1, v6, v2, v12}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    goto/16 :goto_80

    :goto_1af
    return v1
.end method
