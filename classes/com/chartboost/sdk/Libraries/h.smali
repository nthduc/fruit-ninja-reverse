.class public Lcom/chartboost/sdk/Libraries/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/Libraries/h$a;

.field private final b:Lcom/chartboost/sdk/f;

.field private c:F


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/chartboost/sdk/Libraries/h;->c:F

    .line 5
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Lcom/chartboost/sdk/f;

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .line 18
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h;->c:F

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/Libraries/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_d

    return v0

    :cond_d
    const-string p2, "url"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-string v1, "scale"

    .line 8
    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, p0, Lcom/chartboost/sdk/Libraries/h;->c:F

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_25

    return v0

    :cond_25
    const-string p2, "checksum"

    .line 13
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_32

    return v2

    .line 17
    :cond_32
    iget-object p2, p0, Lcom/chartboost/sdk/Libraries/h;->b:Lcom/chartboost/sdk/f;

    iget-object p2, p2, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget-object p2, p2, Lcom/chartboost/sdk/Model/c;->l:Lcom/chartboost/sdk/Networking/j;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/Networking/j;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/h$a;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public c()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->c()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h$a;->e()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public d()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->d()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h$a;->e()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
