.class Lcom/chartboost/sdk/impl/o0$a;
.super Lcom/chartboost/sdk/impl/o1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/o0;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/chartboost/sdk/impl/o0;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/o0;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o0$a;->e:Lcom/chartboost/sdk/impl/o0;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/o1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 5

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "x"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "y"

    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0$a;->e:Lcom/chartboost/sdk/impl/o0;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    .line 4
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "w"

    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/chartboost/sdk/impl/o0$a;->e:Lcom/chartboost/sdk/impl/o0;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    .line 5
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "h"

    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 6
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0$a;->e:Lcom/chartboost/sdk/impl/o0;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/f;->a(Lorg/json/JSONObject;)Z

    return-void
.end method
